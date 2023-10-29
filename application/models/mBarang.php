<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mBarang extends CI_Model
{
	public function select()
	{
		$this->db->select('*');
		$this->db->from('barang');
		$this->db->join('supplier', 'barang.id_supplier = supplier.id_supplier', 'left');
		$this->db->where('barang.id_supplier', $this->session->userdata('id_supplier'));
		return $this->db->get()->result();
	}
	public function insert($data)
	{
		$this->db->insert('barang', $data);
	}
	public function get_data($id)
	{
		$this->db->select('*');
		$this->db->from('barang');
		$this->db->where('id_barang', $id);
		return $this->db->get()->row();
	}
	public function update($id, $data)
	{
		$this->db->where('id_barang', $id);
		$this->db->update('barang', $data);
	}
	public function delete($id)
	{
		$this->db->where('id_barang', $id);
		$this->db->delete('barang');
	}

	//transaksi admin
	public function barang($id_supplier)
	{
		$this->db->select('*');
		$this->db->from('barang');
		$this->db->join('supplier', 'barang.id_supplier = supplier.id_supplier', 'left');
		$this->db->where('barang.id_supplier', $id_supplier);
		return $this->db->get()->result();
	}
}

/* End of file mBarang.php */
