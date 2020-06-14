<title> BEM FT | Kontak </title>
<!--Section: Contact v.2-->
<section class="my-5 team">
    <div class="container">
        <!--Section heading-->

        <div class="section-header wow fadeInUp">
        <br>
        <br>
        <h3 class="mt-3"> BEM FT Contact</h3>

    </div>

        <!-- Google Maps -->
        <!-- Grid Row -->
        <div class="row">
            <div class="col-md-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.7500922189006!2d113.4964198142092!3d-7.709943378511218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd703e119c4d8b9%3A0x1c2a6d417078712f!2sFakultas%20Teknik%20Universitas%20Nurul%20Jadid!5e0!3m2!1sid!2sid!4v1568733124270!5m2!1sid!2sid" width="800" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
            </div>
        </div>
        <!-- Grid Column -->

        
        <div class="row mb-4 pt-4">
            <div class="col text-center">
                <h2>Hubungi Kami</h2>
            </div>
        </div>

        <div class="row justify-content-center">
        <div class="col-lg-4">
            <div class="card text-white bg-info mb-3 text-center">
                <div class="card-body">
                    <h5 class="card-title">Contact</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, nihil.</p>
            </div>
                </div>
                <ul class="list-group">
              <li class="list-group-item"><h1>Location</h1></li>
              <li class="list-group-item">Karanganyar, Paiton, Probolinggo,</li>
              <li class="list-group-item">Jl. KH.Zaini Mun'im</li>
              <li class="list-group-item">Unuja, Indonesia</li>
            </ul>
            </div>

            <div class="col-lg-6">
                <form action="<?= base_url('kontak/kirim_pesan') ?>" method="POST">
              <div class="form-group">
                <label for="nama">Nama</label>
                <input type="text" class="form-control" id="nama" name="xname">
                </div>
                <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" name="xemail">
                </div>
                <div class="form-group">
                <label for="telp">No Telp</label>
                <input type="text" class="form-control" id="telp" name="xphone">
                </div>
                <div class="form-group">
                <label for="pesan">Pesan</label>
                <textarea name="pesan" class="form-control" id="pesan" name="xmessage"></textarea>
                </div>
                <div class="form-group">
              <button type="submit" class="btn btn-info btn-round">Kirim Pesan!</button>
            </div>
            </form>
                <?php echo $this->session->flashdata('msg');?>
            </div>

            </div>
        </div>
</section>

      
    
<!--Section: Contact v.2-->