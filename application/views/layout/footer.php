<!--==========================
    Footer
  ============================-->
  <footer id="footer" style="background-color: #1e2a40">
    <div class="footer-top" style="background-color: #193EDD">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <h3>BEM Teknik Unuja  </h3>
            <p>Badan Eksekutif Mahasiswa Fakultas Teknik Universitas Nurul Jadid </p>
          </div>

          <div class="col-lg-4 col-md-6 footer-links">
            <h4>Link Terkait</h4>
            <ul>
              <li><i class="ion-ios-arrow-right"></i> <a href="#" target="_blank">Ponpes Nurul Jadid</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#" target="_blank">Universitas Nurul Jadid</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#" target="_blank">Fakultas Teknik</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#" target="_blank">Fakultas Agama Islam</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#" target="_blank">Fakultas Kesehatan</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#" target="_blank">Fakultas Sosial Humanainora</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              Karanganyar, Paiton, Probolinggo, <br>
              Jawa Timur, Indonesia <br>
              Kode Pos: 67291 <br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> bemftunuja@gmail.com<br>
            </p>

            <div class="social-links">
              <a href="#"  class="twitter" target="_blank"><i class="fab fa-twitter"></i></a>
              <a href="#" class="facebook" target="_blank"><i class="fab fa-facebook"></i></a>
              <a href="#" class="instagram" target="_blank"><i class="fab fa-instagram"></i></a>
              <a href="#" class="google-plus" target="_blank"><i class="fab fa-google-plus"></i></a>
              <a href="#" class="linkedin" target="_blank"><i class="fab fa-linkedin"></i></a>
            </div>

          </div>


        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>BEMFT Unuja <?= date('Y') ?> </strong>. All Rights Reserved
      </div>
      <div class="credits">

        Developed by <a href="https://hafidz17.surge.sh/">M Hafidz Masruri</a>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="<?= base_url().'assets/template/lib/jquery/jquery.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/jquery/jquery-migrate.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/bootstrap/js/bootstrap.bundle.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/easing/easing.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/superfish/hoverIntent.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/superfish/superfish.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/wow/wow.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/waypoints/waypoints.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/counterup/counterup.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/owlcarousel/owl.carousel.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/isotope/isotope.pkgd.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/lightbox/js/lightbox.min.js' ?>"></script>
  <script src="<?= base_url().'assets/template/lib/touchSwipe/jquery.touchSwipe.min.js' ?>"></script>
  <!-- Contact Form JavaScript File -->
  <script src="<?= base_url().'assets/template/contactform/contactform.js' ?>"></script>

  <!-- Template Main Javascript File -->
  <script src="<?= base_url().'assets/template/js/main.js' ?>"></script>
  <script src="<?= base_url().'assets/template/js/script.js' ?>"></script>
  <script src="<?= base_url().'assets/template/js/link.js' ?>"></script>
  
  <script>
    $(document).ready(function() {
      //init DateTimePickers
      materialKit.initFormExtendedDatetimepickers();

      // Sliders Init
      materialKit.initSliders();
    });


    function scrollToDownload() {
      if ($('.section-download').length != 0) {
        $("html, body").animate({
          scrollTop: $('.section-download').offset().top
        }, 1000);
      }


  </script>

</body>
</html>
