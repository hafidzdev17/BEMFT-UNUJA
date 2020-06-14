<title> <?= $title; ?> </title>

    <section class="my-5">
        <div class="container">
            <div class="row">


                <div class="col-md-8">

            <nav class="mt-5" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?= base_url('') ?>">Home</a></li>
            <li class="breadcrumb-item active"><a href="<?= base_url('artikel') ?>">Daftar Berita</a></li>
    </nav>

                    <h3 style="color: #337ab7; margin-top: 20px;"><a href="<?= site_url('artikel/' . $slug); ?>"> <?= $title; ?></a></h3>

                    <span style="font-size: 14px;">
                        Ditulis oleh <span style="color: #337ab7; font-weight: 600;">
                            <?= $author; ?> </i> </span>
                        pada <span style="color: #337ab7; font-weight: 600;">
                            <?= $tanggal; ?></span>
                    </span>

                    <div class="blog-img_block mt-2">
                        <img src="<?= base_url() . 'assets/images/' . $image ?>" class="img-fluid" alt="blog-img">

                    </div>

                    <div class="mt-3">
                        <div class="text-capitalize mb-2">
                            <span style="font-size: 14px;">
                                <a href="#"><i class="fa fa-user" aria-hidden="true"></i>
                                    <span> <?= $author; ?></span> </a> |
                                <a href="#"><i class="fa fa-tags" aria-hidden="true"></i>
                                    <span><?= $kategori; ?></span></a> |
                                <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
                                    <span>diakses <?= $views; ?>x</span> </a>
                            </span>
                        </div>
                        <?= $blog; ?>
                    </div>

                    <div class="blog-tiltle_block">
                        <div class="blog-icons">
                            <div class="blog-share_block">
                             
                            </div>
                        </div>
                      
                        <div class="clearfix"></div>
                    
                        <div class="blogpost-tabs">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="comments" role="tabpanel">
                                    
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-2 mt-2">
                                                        <div class="blogpost-tab-img">
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="col-md-10 mt-2">
                                                        <div class="blogpost-tab-description">
                                                           
                                                        </div>
                                                        <hr>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                            <div class="row">
                                                <div class="col-md-12 offset-md-1">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                           
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="blogpost-tab-description">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    
                               
                                </div>
                             
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Search -->
                <div class="col-md-4 mt-5">
                    <form action="<?= base_url('blog/search'); ?>" method="get">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Cari Berita ..." name="keyword" required="">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit">Cari</button>
                    </form>
                </div>
            </div>

            <!-- Post Kategori -->
            <div class="card card-nav-tabs" style="width: 20rem; margin-top: 50px;">
                <div class="card-header card-header-info font-weight-bold">
                    Post Kategori
                </div>
                <ul class="list-group list-group-flush">
                    <?php foreach ($category->result() as $row) : ?>
                        <li class="list-group-item"><a href="<?= base_url('blog/kategori/' . str_replace(" ", "-", $row->kategori_nama)); ?>"><?= $row->kategori_nama; ?>
                                <i class="fa fa-caret-right" aria-hidden="true"></i></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <!--  -->

        </div>
        </div>
        </div>
    </section>

