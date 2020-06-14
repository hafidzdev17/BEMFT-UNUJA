<title>BEMFT | Agenda</title>

<section id="team">
    <div class="container">
        <div class="section-header wow fadeInUp">
            <h3 class="my-5">Daftar Agenda BEM FT</h3>
        </div>

        <div class="row">
            <div class="col-md-12">
            <table class="table table-condensed table-hover">
                <thead>
                    <tr>
                        <th width="70px"><span class="badge badge-primary badge-pill">No</th>
                        <th><span class="badge badge-primary badge-pill">Nama Agenda</span></th>
                        <th><span class="badge badge-primary badge-pill">Tanggal</span></th>
                        <th><span class="badge badge-primary badge-pill">Waktu<span class="badge badge-primary badge-pill"></th>
                        <th><span class="badge badge-primary badge-pill">Tempat<span class="badge badge-primary badge-pill"></th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    <?php foreach ($data->result() as $row) : ?>
                    <tr>
                        <td> <br> <?= $no++; ?> </td>
                        <td> <br> <?= $row->agenda_nama; ?></td>
                        <td> <br> <?= date("d", strtotime($row->agenda_tanggal)); ?>
                            <?= date("M Y", strtotime($row->agenda_tanggal)); ?></td>
                        <td> <br> Jam <?= $row->agenda_waktu; ?></td>
                        <td> <br> <?= $row->agenda_tempat; ?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

            <hr class="event-underline">

            <div class="col-md-12 text-center">
                <?php echo $page; ?>
            </div>

        </div>
    </div>
    </div>
</section>