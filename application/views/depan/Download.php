<title> BEMFT | Download </title>

<section id="team">
    <div class="container">
      <div class="section-header wow fadeInUp">
            <h3 class="my-5">Daftar Download BEM FT</h3>
        </div>

        <div class="row">
            <div class="col-md-12">

              <table class="table table-condensed table-hover">
                <thead>
                    <tr>
                        <th width="70px"><span class="badge badge-primary badge-pill">No</th>
                        <th><span class="badge badge-primary badge-pill">File</span></th>
                        <th><span class="badge badge-primary badge-pill">Tanggal</span></th>
                        <th><span class="badge badge-primary badge-pill">Oleh<span class="badge badge-primary badge-pill"></th>
                        <th><span class="badge badge-primary badge-pill">Aksi<span class="badge badge-primary badge-pill"></th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    <?php foreach ($data->result() as $row) : ?>
                    <tr>
                        <td> <br> <?= $no++; ?> </td>
                        <td> <br> <?= $row->file_judul; ?></td>
                        <td> <br> <?= $row->tanggal; ?></td>
                        <td> <br> <?= $row->file_oleh; ?></td>
                        <td><a style="border-radius: 40px;" href="<?= site_url('download/get_file/'.$row->file_id);?>" class="btn btn-danger"> <i class="fas fa-download"></i> Unduh </a></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

            </div>
          </div>
        </div>
    </section>
  