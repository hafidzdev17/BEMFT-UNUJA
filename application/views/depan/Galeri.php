<title>BEM FT | Galeri</title>

<!-- Load Header -->
<?php $this->load->view('layout/header2'); ?>

<div class="container">

<div class="section-header wow fadeInUp">
            <h3 class="mt-5"><br>Daftar Berita BEM FT</h3>
        </div>

	<div class="row" style="margin-top: 30px;">
        <div class="row wow fadeInUp justify-content-center">
                   	 <?php foreach ($all_galeri->result() as $row) : ?>
            <div class="col-md-4 wow fadeInUp">
                <div class="card shadow" style="width: 19rem;">
                    <div class="inner">
                      <a href="<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>" target="_blank">
                    <img style="img:hover: 0.5" class="card-img-top" src="<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>" alt="Card image cap">
                  </a>
                  </div>
              <div class="card-body">
                <h5 style="color: #003CC4" class="card-title"><?= $row->galeri_judul; ?></h5>
              </div>
            </div>
            </div>
             <?php endforeach; ?>

	</div>
</div>
</div>

<!-- Load Footer -->
<?php $this->load->view('layout/footer'); ?>