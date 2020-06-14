<title> <?= $judul; ?> </title>

<section id="berita" class="mt-5 bg-daftar_berita">
    <div class="container berita">

             <div class="section-header wow fadeInUp">
            <h3 class="my-5" style="margin-top: 100px;"><br>Daftar Berita BEM FT</h3>
        </div>

        <div class="row wow fadeInUp justify-content-center">
                <?= $this->session->flashdata('msg'); ?>
                     <?php foreach ($data->result() as $row) : ?>

            <div class="col-md-4 wow fadeInUp">
                <div class="card shadow" style="width: 20rem;">
                    <div class="inner">
                    <img class="card-img-top" src="<?= base_url() . 'assets/images/' . $row->tulisan_gambar; ?>" alt="Card image cap">
                </div>

              <div class="card-body">
                <h5 class="card-title"><?= $row->tulisan_judul; ?></h5>
                <p class="card-text"><small><?= $row->tanggal; ?></small></p>
                <a href="<?= base_url('artikel/' . $row->tulisan_slug); ?>" class="btn btn-berita"> Selengkapnya <i class="fas fa-angle-right"></i> </a>
              </div>
            </div>
            </div>
             <?php endforeach; ?>
              <nav>
                    <?php error_reporting(0);
                    echo $page; ?>
                </nav>
        </div>
    </div>

</section>



