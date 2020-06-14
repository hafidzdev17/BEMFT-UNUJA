 <?php error_reporting(0); ?>

 <?php require_once 'curl.php'; ?>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="index, follow">
<link rel="alternate" hreflang="en" href="en/index.html">
<meta name="keywords" content="bemft, bemftunuja,unuja, nj, universitas, swasta, nurul, jadid, kampus, probolinggo, paiton, jawa, timur, perguruan, indonesia, pendidikan, tinggi">
<meta name="description" content="Universitas yang berusaha memadukan antara IPTEK dan IMTAQ sesuai dengan status yang disandangnya, yaitu lembaga pendidikan tinggi yang secara historis lahir di lingkungan pesantren. Visinya adalah menjadi perguruan tinggi berkeadaban yang memiliki basis tata kelola unggul <i>(good governance university)</i> dalam mengembangkan ilmu pengetahuan, teknologi, dan seni berdasarkan Trilogi dan Pancakesadaran Pesantren Nurul Jadid, berjiwa kewirausahaan, dan berwawasan keindonesiaan tahun 2022.">
<title><?= $judul; ?></title>
<meta property="og:url" content="https://www.bemft.unuja.ac.id/" />
<meta property="og:type" content="website" />
<meta property="og:title" content="BEMFT Unuja" />
<meta property="og:site_name" content="Universitas Nurul Jadid" />
<main id="main">
  <!--==========================
      About Us Section
    ============================-->
  <section id="services">
    <div class="container">

      <header class="section-header wow fadeInUp">
        <h3 style="color:#002366;" class="text-capitalize">Selamat Datang Di Website BEMFT UNUJA</h3>
        <p style="font-size: 1rem;"><i>Website ini bertujuan sebagai salah satu media yang digunakan BEMFT untuk berbagi informasi seputar kampus unuja dan indonesia pada umumnya. Website dikelola oleh Kementerian Ristek Dan Teknologi <br>HIDUP MAHASISWA, <b>SALAM TEKNIK !</b></i></p>
      </header>

      <div class="row">

        <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
          <div class="icon"><i class="fas fa-graduation-cap"></i></div>
          <h4 class="title"><a href="https://siakadft.unuja.ac.id/" target="_blank">SIAKAD</a></h4>
          <p class="description">Sistem Informasi Akademik Fakultas Teknik</p>
        </div>
        <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
          <div class="icon"><i class="fas fa-book-open"></i></i></div>
          <h4 class="title"><a href="https://siamtek.unuja.ac.id/" target="_blank">SIAMTEK</a></h4>
          <p class="description">Sistem Informasi Administrasi Monitoring Tugas Akhir, PKL dan KKN</p>
        </div>
        <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
          <div class="icon"><i class="fas fa-school"></i></div>
          <h4 class="title"><a href="https://pmb.unuja.ac.id/" target="_blank">PMB UNUJA</a></h4>
          <p class="description"> Sistem Pendaftaran Online Mahasiswa Baru Unuja </p>
        </div>
        <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
          <div class="icon"><i class="fas fa-adjust"></i></div>
          <h4 class="title"><a href="https://am.unuja.ac.id/" target="_blank">AM UNUJA</a></h4>
          <p class="description"> Sistem Regristasi Mahasiswa Unuja</p>
        </div>

      </div>
    </div>
  </section><!-- #services -->

  <!-- Section Gubernur Dan Wakil Gubernur -->
  <section>
    <section id="team" style="background: linear-gradient( 30deg, rgb(157, 91, 254) 0%, rgb(56, 144, 254) 100%);">
      <div class="container">
        <div class="section-header wow fadeInUp">
          <h3 style="font-size: 25px;" class="text-light"> Gubernur Dan Wakil Gubernur BEM FT</h3>
        </div>

        <div class="row mt-5 justify-content-center">

          <div class="col-lg-4 col-md-6 wow fadeInUp">
            <div class="member">
              <img src="<?= base_url() . 'assets/template/img/bemft/sukron.jpg' ?>" class="img-fluid rounded-circle" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Syukron Makmun</h4>
                  <span>Gubernur BEM</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="member">
              <img src="<?= base_url() . 'assets/template/img/bemft/miftah.jpg' ?>" class="img-fluid rounded-circle" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Miftahul Hasanah</h4>
                  <span>Wakil Gubernur</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>

      <!-- Testimonial Section Start -->
      <?php $this->load->view('layout/testimonial') ?>
    <!-- Testimonial Section End -->


    <!--Section Aspirasi -->
    <section class="section-gap feature-gradient">
      <div class="container">
        <div class="row text-center">
          <div class="col-12">
            <header class="section-header wow fadeInUp">
              <h3 class="text-white">Bagaimana Kami Bekerja</h3>
            </header>
          </div>
        </div>
        <!--section title-->
        <div class="row text-center">
          <div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay=".3s">
            <i class="bi bi-love f-icon"></i>
            <h4 class="my-4 text-paste-color">Bekerja Sepenuh Hati</h4>
            <p style="font-size: 0.97rem;"> Sebagai BEM kami siap membantu mahasiswa sepenuh hati </p>
          </div>
          <div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay=".4s">
            <i class="fas fa-bullhorn f-icon"></i>
            <h4 class="my-4 text-paste-color">Memberikan Informasi Kepada Mahasiswa</h4>
            <p style="font-size: 0.97rem;">BEM FT Memberikan Informasi Kepada Mahasiswa</p>
          </div>
          <div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay=".5s">
            <i class="bi bi-office-bag f-icon"></i>
            <h4 class="my-4 text-paste-color">Memperjuangkan Aspirasi Mahasiswa</h4>
            <p style="font-size: 0.97rem;">BEM FT adalah wadah bagi mahasiswa untuk memperjuangkan aspirasinya</p>
          </div>
          <div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay=".6s">
            <i class="bi bi-group f-icon"></i>
            <h4 class="my-4 text-paste-color">Menjadi Wadah Aspirasi Mahasiswa</h4>
            <p style="font-size: 0.97rem;">Kami BEM FT siap menjadi wadah aspirasi mahasiswa</p>
          </div>
        </div>
      </div>
    </section>
    <!--Aspirasi section end-->



    <!-- Berita Section Start -->
    <section style="background: #D3CCE3;background: -webkit-linear-gradient(to right, #E9E4F0, #D3CCE3);background: linear-gradient(to right, #E9E4F0, #D3CCE3); ">
      <div class="container">
        <header class="section-header wow fadeInUp">
          <h3 class="text-capitalize" style="color:#002366;"> <br> <i class="fas fa-send"></i> Berita Terbaru</h3>
        </header>

        <div class="row wow fadeInUp">
          <?php foreach ($berita->result() as $row) : ?>
            <div class="col-md-4">
              <div class="bemft_berita">
                <a href="<?php echo site_url('artikel/' . $row->tulisan_slug); ?>"> <img src="<?php echo base_url() . 'assets/images/' . $row->tulisan_gambar; ?>" class="img-fluid"></a>
                <div class="bemft_berita2">
                  <h4 class="my-2"><a href="<?php echo site_url('artikel/' . $row->tulisan_slug); ?>"><?php echo $row->tulisan_judul; ?></a></h4>
                  <small class="small">
                    <?= $row->tanggal; ?>Diakses: <?php echo $row->tulisan_views; ?>x
                  </small>
                  <p class="sekilas"> <?php echo limit_words($row->tulisan_isi, 20) . '...'; ?> </p>

                </div>
              </div>
            </div>
          <?php endforeach; ?>
        </div>

        <center>
          <a class="btn btn-rose btn-round title mb-5" href="<?= base_url('artikel') ?>">Daftar Berita <i class="ion-ios-arrow-right"></i> </a>
        </center>

      </div>
    </section>


    <!-- Instagram Section -->
  <section class="social bg-light" id="social">
    <div class="container">
      <div class="row pt-4 mb-4 wow fadeInUp justify-content-center">
        <header class="section-header">
              <h3>Social Media</h3>
            </header>
      </div>

    <div class="row justify-content-center mb-5 wow fadeInUp">
      <div class="col-md-6">
        <div class="row">

          <div class="col-md-8">
        <button class="btn btn-danger btn-round btn-yt"> OFFICIAL YOUTUBE</button>
            </div>
        </div>

        <div class="row mt-3">
          <div class="col">
            <div class="embed-responsive embed-responsive-16by9">
        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/fgrjCB9bCTc?rel=0" allowfullscreen></iframe>
      </div>
          </div>
        </div>
        </div>


      <div class="col-md-6">
        <div class="row">

          <div class="col-md-8">
        <button class="btn btn-round btn-ig"> OFFICIAL INSTAGRAM</button>
          </div>
        </div>

        <div class="row mt-3 pb-3 wow fadeInUp">
          <div class="col">
          <?php foreach ($photos as $photo) : ?>
            <div class="ig-thumbnail">
             <img src="<?= $photo; ?>" alt="">
            </div>
          <?php endforeach; ?>
            </div>
        </div>
      </div>
    </div>

    </div>
  </section>
  <!-- End -->



    <!-- Berita Section End -->
</main>