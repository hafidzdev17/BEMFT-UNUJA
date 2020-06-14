<?php
class Profil_Anggota extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('m_guru');
		$this->load->model('m_pengunjung');
		$this->m_pengunjung->count_visitor();
	}

	function index()
	{
		$jum = $this->m_guru->guru();
		$page = $this->uri->segment(3);
		if (!$page) :
			$offset = 0;
		else :
			$offset = $page;
		endif;
		$limit = 8;
		$config['base_url'] = base_url() . 'profil_anggota/index/';
		$config['total_rows'] = $jum->num_rows();
		$config['per_page'] = $limit;
		$config['uri_segment'] = 3;
		//Tambahan untuk styling
		$config['full_tag_open']    = '<div class="pagging text-center" style="color: #fff;"><nav><ul class="pagination justify-content-center">';
		$config['full_tag_close']   = '</ul></nav></div>';
		$config['num_tag_open']     = '<li class="page-item text-light"><span class="page-link text-light">';
		$config['num_tag_close']    = '</span></li>';
		$config['cur_tag_open']     = '<li class="page-item text-light"><span class="page-link text-light">';
		$config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
		$config['next_tag_open']    = '<li class="page-item text-light"><span class="page-link text-light">';
		$config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
		$config['prev_tag_open']    = '<li class="page-item text-light"><span class="page-link text-light">';
		$config['prev_tagl_close']  = '</span>Next</li>';
		$config['first_tag_open']   = '<li class="page-item text-light"><span class="page-link text-light">';
		$config['first_tagl_close'] = '</span></li>';
		$config['last_tag_open']    = '<li class="page-item text-light"><span class="page-link text-light">';
		$config['last_tagl_close']  = '</span></li>';

		$config['first_link'] = 'Awal';
		$config['last_link'] = 'Akhir';
		$config['next_link'] = '<span style="color: #fff">Next >> </span>';
		$config['prev_link'] = '<span style="color: #fff"><< Prev </span>';
		$this->pagination->initialize($config);
		$x['page'] = $this->pagination->create_links();
		$x['data'] = $this->m_guru->guru_perpage($offset, $limit);

		$this->load->view('layout/header2');
		$this->load->view('profil/profil_anggota', $x);
		$this->load->view('layout/footer');
	}
}
