
const bemft = document.querySelector('.bem-galeri');
const jumbo = document.querySelector('.jumbo');
const thumb = document.querySelectorAll('.thumb');

bemft.addEventListener('click',function(e)) {

	// cek thumb
	if (e.target.className == 'thumb') {

		jumbo.src = e.target.src;
		jumbo.classList.add('fade');
		setTimeout(function(){
			jumbo.classList.remove('fade');
		}, 500);

		thumbs.forEach(function(thumb){
			// if (thumb.classList.contains('active')) {
			// 	thumb.classList.remove('active');
			// }
			thumb.className = 'thumb';

		});

		e.target.classList.add('active');

		}
	}
}
