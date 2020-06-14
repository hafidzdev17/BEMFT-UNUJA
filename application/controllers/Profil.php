<?php
class Profil extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['judul'] = "Profil BEM FT-UNUJA";
		$this->load->view('layout/header2');
		$this->load->view('depan/profil', $data);
		$this->load->view('layout/footer');
	}

	public function Struktur_Organisasi()
	{
		$data['judul'] = "Struktur Organisasi BEM FT";
		$this->load->view('layout/header2');
		$this->load->view('profil/struktur', $data);
		$this->load->view('layout/footer');
	}

	public function Makna_Logo()
	{
		$data['judul'] = "Makna Logo BEM FT";
		$this->load->view('layout/header2');
		$this->load->view('profil/makna_logo', $data);
		$this->load->view('layout/footer');
	}

	public function Visi_Misi()
	{
		$data['judul'] = 'Visi, Misi & Tujuan BEM FT-UNUJA';
        $this->load->view('layout/header2');
        $this->load->view('profil/visi_misi', $data);
        $this->load->view('layout/footer');
	}

	public function Tupoksi()
	{
		$data['judul'] = 'Tupoksi BEM FT-UNUJA';
        $this->load->view('layout/header2');
        $this->load->view('profil/tupoksi', $data);
        $this->load->view('layout/footer');
	}

}
