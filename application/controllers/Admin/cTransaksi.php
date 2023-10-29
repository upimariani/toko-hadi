<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cTransaksi extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('mTransaksi');
		$this->load->model('mSupplier');
		$this->load->model('mBarang');
	}

	public function index()
	{
		$data = array(
			'transaksi' => $this->mTransaksi->transaksi_admin(),
			'supplier' => $this->mSupplier->select()
		);
		$this->load->view('Admin/Layout/head');
		$this->load->view('Admin/Layout/sidebar');
		$this->load->view('Admin/TransaksiSupplier/vTransaksi', $data);
		$this->load->view('Admin/Layout/footer');
	}
	public function detail_transaksi($id)
	{
		$data = array(
			'transaksi' => $this->mTransaksi->detail_transaksi($id)
		);
		$this->load->view('Admin/Layout/head');
		$this->load->view('Admin/Layout/sidebar');
		$this->load->view('Admin/TransaksiSupplier/vDetailTransaksi', $data);
		$this->load->view('Admin/Layout/footer');
	}
	public function pesan_supplier($id_supplier = NULL)
	{
		$id_supplier = $this->input->post('supplier');
		$data = array(
			'bb' => $this->mBarang->barang($id_supplier),
			'id_supplier' => $id_supplier
		);
		$this->load->view('Admin/Layout/head');
		$this->load->view('Admin/Layout/sidebar');
		$this->load->view('Admin/TransaksiSupplier/vCreateTransaksi', $data);
		$this->load->view('Admin/Layout/footer');
	}
	public function addtocart()
	{
		$data = array(
			'id' => $this->input->post('bahanbaku'),
			'name' => $this->input->post('nama'),
			'price' => $this->input->post('harga'),
			'qty' => $this->input->post('qty'),
			'stok' => $this->input->post('stok')
		);
		$this->cart->insert($data);
		$this->session->set_flashdata('success', 'Bahan Baku Berhasil Masuk Keranjang!');


		$id_supplier = $this->input->post('id_supplier');
		$data = array(
			'bb' => $this->mBarang->barang($id_supplier),
			'id_supplier' => $id_supplier
		);
		$this->load->view('Admin/Layout/head');
		$this->load->view('Admin/Layout/sidebar');
		$this->load->view('Admin/TransaksiSupplier/vCreateTransaksi', $data);
		$this->load->view('Admin/Layout/footer');
	}
	public function hapus($id, $id_supplier)
	{
		$this->cart->remove($id);
		$data = array(
			'bb' => $this->mBarang->barang($id_supplier),
			'id_supplier' => $id_supplier
		);
		$this->load->view('Admin/Layout/head');
		$this->load->view('Admin/Layout/sidebar');
		$this->load->view('Admin/TransaksiSupplier/vCreateTransaksi', $data);
		$this->load->view('Admin/Layout/footer');
	}
	public function selesai()
	{
		//insert pengajuan
		$data = array(
			'id_user' => $this->session->userdata('id'),
			'id_supplier' => $this->input->post('id_supplier'),
			'tgl_pengajuan' => date('Y-m-d'),
			'total_pengajuan' => $this->cart->total(),
			'stat_pengajuan' => '0',
			'stat_pembayaran' => '0',
			'bukti_payment' => '0'
		);
		$this->mTransaksi->insert_pengajuan($data);

		//update stok barang
		foreach ($this->cart->contents() as $key => $value) {
			$stok_update = $value['stok'] - $value['qty'];
			$stok = array(
				'stok' => $stok_update
			);
			$this->db->where('id_barang', $value['id']);
			$this->db->update('barang', $stok);
		}


		//insert detail pengajuan
		$id = $this->db->query("SELECT MAX(id_pengajuan) as id_pengajuan FROM `pengajuan`")->row();

		foreach ($this->cart->contents() as $key => $value) {
			$pesanan = array(
				'id_pengajuan' => $id->id_pengajuan,
				'id_barang' => $value['id'],
				'qty' => $value['qty']
			);
			$this->mTransaksi->insert_pesanan($pesanan);
		}
		$this->cart->destroy();
		$this->session->set_flashdata('success', 'Transaksi berhasil Dikirim!');
		redirect('Admin/cTransaksi');
	}
	public function bayar($id)
	{
		$config['upload_path']          = './asset/pembayaran';
		$config['allowed_types']        = 'gif|jpg|png|jpeg';
		$config['max_size']             = 50000;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('bayar')) {
			$data = array(
				'transaksi' => $this->mTransaksi->detail_transaksi($id)
			);
			$this->load->view('Admin/Layout/head');
			$this->load->view('Admin/Layout/sidebar');
			$this->load->view('Admin/TransaksiSupplier/vDetailTransaksi', $data);
			$this->load->view('Admin/Layout/footer');
		} else {

			$upload_data =  $this->upload->data();
			$data = array(
				'bukti_payment' => $upload_data['file_name'],
				'stat_pembayaran' => '1',
				'stat_pengajuan' => '1'
			);
			$this->mTransaksi->bayar($id, $data);
			$this->session->set_flashdata('success', 'Transaksi Berhasil Dikirim!!!');
			redirect('Admin/cTransaksi', 'refresh');
		}
	}
	public function pesanan_diterima($id)
	{
		$data = array(
			'stat_pengajuan' => '4'
		);
		$this->mTransaksi->update_status($id, $data);
		$this->session->set_flashdata('success', 'Pesanan Berhasil Diterima!');
		redirect('Admin/cTransaksi');
	}
}

/* End of file cTransaksi.php */
