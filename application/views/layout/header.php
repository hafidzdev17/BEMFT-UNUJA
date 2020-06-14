   <?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
    ?>

  <!-- Icons BEM FT  -->
  <link rel="shortcut icon" href="<?= base_url().'assets/template/img/bemft/bemft.png' ?>" type="image/x-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">


  <!-- Libraries CSS Files -->
  <link href="<?= base_url().'assets/template/lib/font-awesome/css/font-awesome.min.css' ?>" rel="stylesheet">
  <link href="<?= base_url().'assets/template/lib/animate/animate.min.css" rel="stylesheet' ?>">
  <link href="<?= base_url().'assets/template/lib/ionicons/css/ionicons.min.css" rel="stylesheet' ?>">
  <link href="<?= base_url().'assets/template/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet' ?>">
  <link href="<?= base_url().'assets/template/lib/lightbox/css/lightbox.min.css" rel="stylesheet' ?>">
  <link href="<?= base_url().'assets/template/fontawesome-free/css/all.min.css" rel="stylesheet' ?>">
  <link rel="stylesheet" href="<?= base_url().'assets/cdn/vendor/bicon/css/bicon.min.css' ?>">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="<?= base_url().'assets/material-kit/css/material-kit2.css?v=2.0.5' ?>" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="<?= base_url().'assets/material-kit/demo/demo.css' ?>" rel="stylesheet" />


  <!-- Main Stylesheet File -->
  <link href="<?= base_url().'assets/template/css/mystyle.css" rel="stylesheet' ?>">
  <link href="<?= base_url().'assets/template/css/style.css" rel="stylesheet' ?>">
</head>

<body>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
        <img style="margin-top: -12px" width="210px" height="50px" src="<?= base_url('').'assets\template\img\bemft\header.png '?>"  />
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu"><a href="<?= base_url('') ?>">Home</a></li>
           <li class="menu-has-children"><a href="<?= base_url('profil') ?>">Profil</a>
           <ul>
              <li><a href="<?= base_url('profil_anggota') ?>">Profil Anggota</a></li>
              <li><a href="<?= base_url('profil/visi_misi') ?>">Visi Misi</a></li>
              <li><a href="<?= base_url('profil/makna_logo') ?>">Makna Logo</a></li>
              <li><a href="<?= base_url('profil/struktur_organisasi') ?>">Struktur Organisasi</a></li>
              <li><a href="<?= base_url('profil/tupoksi') ?>">Tupoksi</a></li>
            </ul>
          </li>
          <li><a href="<?= base_url('artikel'); ?>">Berita</a></li>
          <li><a href="<?= base_url('galeri') ?>">Galeri</a></li>
          <li><a href="<?= base_url('agenda') ?>">Agenda</a></li>\
          <li><a href="<?= base_url('download') ?>">Download</a></li>
          <li><a href="<?= base_url('kontak') ?>">Kontak</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

