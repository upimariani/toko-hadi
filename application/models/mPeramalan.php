<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mPeramalan extends CI_Model
{
	public function barang()
	{
		$this->db->select('*');
		$this->db->from('barang');
		return $this->db->get()->result();
	}
	public function view_peramalan($id)
	{
		$this->db->select('*');
		$this->db->from('peramalan');
		$this->db->join('barang', 'barang.id_barang = peramalan.id_barang', 'left');
		$this->db->where('peramalan.id_barang', $id);
		return $this->db->get()->result();
	}
}

/* End of file mPeramalan.php */
