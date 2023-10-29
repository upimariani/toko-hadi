<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cBarang extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('mBarang');
	}

	public function index()
	{
		$data = array(
			'barang' => $this->mBarang->select()
		);
		$this->load->view('Supplier/Layout/head');
		$this->load->view('Supplier/Layout/sidebar');
		$this->load->view('Supplier/Barang/vBarang', $data);
		$this->load->view('Supplier/Layout/footer');
	}
	public function create()
	{
		$this->form_validation->set_rules('nama', 'Nama Barang', 'required');
		$this->form_validation->set_rules('harga', 'Harga Barang', 'required');
		$this->form_validation->set_rules('deskripsi', 'Deskripsi Barang', 'required');
		$this->form_validation->set_rules('stok', 'Stok Barang', 'required');
		$this->form_validation->set_rules('keterangan', 'Keterangan Barang', 'required');

		if ($this->form_validation->run() == FALSE) {

			$this->load->view('Supplier/Layout/head');
			$this->load->view('Supplier/Layout/sidebar');
			$this->load->view('Supplier/Barang/vCreateBarang');
			$this->load->view('Supplier/Layout/footer');
		} else {
			$data = array(
				'id_supplier' => $this->session->userdata('id_supplier'),
				'nama_barang' => $this->input->post('nama'),
				'harga' => $this->input->post('harga'),
				'deskripsi' => $this->input->post('deskripsi'),
				'stok' => $this->input->post('stok'),
				'keterangan' => $this->input->post('keterangan')
			);
			$this->mBarang->insert($data);
			$this->session->set_flashdata('success', 'Data Barang Berhasil Ditambahkan!');
			redirect('Supplier/cBarang');
		}
	}
	public function update($id)
	{
		$this->form_validation->set_rules('nama', 'Nama Barang', 'required');
		$this->form_validation->set_rules('harga', 'Harga Barang', 'required');
		$this->form_validation->set_rules('deskripsi', 'Deskripsi Barang', 'required');
		$this->form_validation->set_rules('stok', 'Stok Barang', 'required');
		$this->form_validation->set_rules('keterangan', 'Keterangan Barang', 'required');

		if ($this->form_validation->run() == FALSE) {
			$data = array(
				'barang' => $this->mBarang->get_data($id)
			);
			$this->load->view('Supplier/Layout/head');
			$this->load->view('Supplier/Layout/sidebar');
			$this->load->view('Supplier/Barang/vUpdateBarang', $data);
			$this->load->view('Supplier/Layout/footer');
		} else {
			$data = array(
				'id_supplier' => $this->session->userdata('id_supplier'),
				'nama_barang' => $this->input->post('nama'),
				'harga' => $this->input->post('harga'),
				'deskripsi' => $this->input->post('deskripsi'),
				'stok' => $this->input->post('stok'),
				'keterangan' => $this->input->post('keterangan')
			);
			$this->mBarang->update($id, $data);
			$this->session->set_flashdata('success', 'Data Barang Berhasil Ditambahkan!');
			redirect('Supplier/cBarang');
		}
	}
	public function delete($id)
	{
		$this->mBarang->delete($id);
		$this->session->set_flashdata('success', 'Data Barang Berhasil Dihapus !!!');
		redirect('Supplier/cBarang');
	}
}

/* End of file cBarang.php */
