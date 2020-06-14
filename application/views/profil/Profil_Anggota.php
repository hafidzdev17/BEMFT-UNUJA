 <title> Profil Anggota </title>

 <section id="team" style="background: linear-gradient( 30deg, rgb(157, 91, 254) 0%, rgb(56, 144, 254) 100%);">
      <div class="container">
        <div class="section-header wow fadeInUp">
          <h3 class="mt-5 text-light">BEM FT Team</h3>
        </div>

            <div class="row wow fadeInUp">
                <?php foreach ($data->result() as $row) : ?>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="admission_insruction wow fadeInUp">
                          <?php if(empty($row->guru_photo)):?>
                            <img src="<?= base_url().'assets/images/blank.png';?>" class="img-fluid" alt="#">
                          <?php else: ?>
                            <img src="<?= base_url().'assets/images/'.$row->guru_photo;?>" class="img-fluid" alt="#">
                          <?php endif; ?>
                            <p style="background: #FC466B;background: -webkit-linear-gradient(to right, #3F5EFB, #FC466B);background: linear-gradient(to right, #3F5EFB, #FC466B);
                                color: #fff;" class="text-center mt-3"><span style="color: cyan;"><?= $row->guru_nama;?> ( <?= $row->guru_nip; ?> )</span>
                                <br>
                                <?= $row->guru_mapel;?></p>
                        </div>
                    </div>
                <?php endforeach;?>
              </div>
            <!-- End row -->
            <nav><?= $page;?></nav>
        </div>
    </section>

