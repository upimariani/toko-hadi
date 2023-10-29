<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cPeramalan extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('mPeramalan');
	}

	public function index()
	{
		$data = array(
			'barang' => $this->mPeramalan->barang()
		);
		$this->load->view('Owner/Layout/head');
		$this->load->view('Owner/Layout/sidebar');
		$this->load->view('Owner/vPeramalan', $data);
		$this->load->view('Owner/Layout/footer');
	}
	public function view_analisis($id_barang)
	{
		$data = array(
			'view_analisis' => $this->mPeramalan->view_peramalan($id_barang)
		);
		$this->load->view('Owner/Layout/head');
		$this->load->view('Owner/Layout/sidebar');
		$this->load->view('Owner/vViewPeramalan', $data);
		$this->load->view('Owner/Layout/footer');
	}
}

/* End of file cPeramalan.php */
