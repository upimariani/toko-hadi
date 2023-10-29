<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mTransaksi extends CI_Model
{
	//admin
	public function transaksi_admin()
	{
		$this->db->select('*');
		$this->db->from('pengajuan');
		$this->db->join('supplier', 'pengajuan.id_supplier = supplier.id_supplier', 'left');

		$this->db->order_by('tgl_pengajuan', 'desc');

		return $this->db->get()->result();
	}
	public function bahanbaku($id)
	{
		$this->db->select('*');
		$this->db->from('barang');
		$this->db->where('id_supplier', $id);
		return $this->db->get()->result();
	}
	public function insert_pengajuan($data)
	{
		$this->db->insert('pengajuan', $data);
	}
	public function insert_pesanan($data)
	{
		$this->db->insert('detail_pengajuan', $data);
	}

	public function detail_transaksi($id)
	{
		$data['transaksi'] = $this->db->query("SELECT * FROM `pengajuan` WHERE id_pengajuan='" . $id . "'")->row();
		$data['detail'] = $this->db->query("SELECT * FROM `pengajuan` JOIN detail_pengajuan ON pengajuan.id_pengajuan=detail_pengajuan.id_pengajuan JOIN barang ON detail_pengajuan.id_barang=barang.id_barang WHERE pengajuan.id_pengajuan='" . $id . "'")->result();
		return $data;
	}
	public function bayar($id, $data)
	{
		$this->db->where('id_pengajuan', $id);
		$this->db->update('pengajuan', $data);
	}

	//supplier
	public function select_supplier()
	{
		$this->db->select('*');
		$this->db->from('pengajuan');
		$this->db->join('supplier', 'pengajuan.id_supplier = supplier.id_supplier', 'left');
		$this->db->where('pengajuan.id_supplier', $this->session->userdata('id_supplier'));
		$this->db->order_by('tgl_pengajuan', 'desc');

		return $this->db->get()->result();
	}
	public function update_status($id, $data)
	{
		$this->db->where('id_pengajuan', $id);
		$this->db->update('pengajuan', $data);
	}
}

/* End of file mTransaksi.php */
