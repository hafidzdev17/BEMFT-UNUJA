

		<!-- Section Social Media -->
		   <section class="social bg-light" id="social">
		    <div class="container">
		    <div class="row">
		      <div class="col text-center">
		        <h3 class="sosmed"> Social Media </h3>
		      </div>
		    </div>

		    <div class="row justify-content-center">
		    <div class="col-md-5">
		      <div class="row">
		        <div class="col-md-4">
		        <img src="<?= $youtubeProfile; ?>" width="100" class="rounded-circle img-thumbanil">
		    </div>
		    <div class="col-md-8">
		      <h5> <?= $channel; ?> </h5>
		      <p> <?=  $subs; ?> Subscriber </p>
		     <div class="g-ytsubscribe" data-channelid="UCq-VDezP1Vj4pEOYiPn3Qxw" data-layout="default" data-count="default"></div>
		     </div>
		    </div>
		    <div class="row mt-4">
		      <div class="col">
		      <div class="embed-responsive embed-responsive-16by9">
		  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/<?= $latestVideoId; ?>?rel=0" allowfullscreen></iframe>
		</div>
		      </div>
		    </div>
		  </div>

		  <div class="col-md-5">
		      <div class="row">
		        <div class="col-md-4">
		        <img src="<?= $profileIG; ?>" width="100" class="rounded-circle img-thumbanil">
		    </div>
		    <div class="col-md-8">
		      <h5> <?= $usernameIG; ?> </h5>
		      <p> <?= $followersIG ?> Followers</p>
		    </div>
		    </div>

		    <div class="row mt-3 pb-3 ml-3">
		      <div class="col-10">
		        <?php foreach( $photos as $photo) : ?>
		      <div class="ig-thumbnail">
		        <img src="<?= $photo; ?>" alt="" class="ml-1 mt-1">
		      </div>
		    <?php endforeach; ?>

		    </div>
		    </div>
		  </div>
		</div>
		</div>
		  </section>