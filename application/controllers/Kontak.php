<?php

class Kontak extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('m_kontak');
    $this->load->model('m_pengunjung');
    $this->m_pengunjung->count_visitor();
  }
  public function index()
  {
    $this->load->view('layout/header2');
    $this->load->view('depan/kontak');
    $this->load->view('layout/footer');
  }

  public function kirim_pesan()
  {
    $nama = htmlspecialchars($this->input->post('xnama', TRUE), ENT_QUOTES);
    $email = htmlspecialchars($this->input->post('xemail', TRUE), ENT_QUOTES);
    $kontak = htmlspecialchars($this->input->post('xphone', TRUE), ENT_QUOTES);
    $pesan = htmlspecialchars($this->input->post('xmessage', TRUE), ENT_QUOTES);
    $this->m_kontak->kirim_pesan($nama, $email, $kontak, $pesan);
    echo $this->session->set_flashdata('msg', '<p class="alert alert-info mt-3 font-weight-bold"><strong> NB: </strong> Terima Kasih Telah Menghubungi Kami.</p>');
    redirect('kontak');
  }
}
