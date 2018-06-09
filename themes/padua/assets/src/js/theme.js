jQuery(document).ready(function() {
  jQuery('.testimonial-wrap').owlCarousel({
		loop: true,
		margin: 0,
		nav: false,
		autoplay: true,
		dots: false,
		autoplayTimeout: 4000,
		autoWidth: false,
		slideBy: 1,
		responsive: {
			0: {
				items:1
			},
			767: {
				items:3
			}
		}
	});
	
	var totalItems = jQuery('.banner-wrap img').length;
	// If there is only one Banner img
	if (totalItems == 1) {
		var isLooped = false;
	} else {
		var isLooped = true;
	}

	jQuery('.banner-wrap').owlCarousel({
		loop: isLooped,
		margin: 0,
		nav: false,
		autoplay: true,
		dots: false,
		autoplayTimeout: 4000,
		autoWidth: false,
		slideBy: 1,
		items:1
	});

	// Banner image for investor login page
   var banner_img = $('.banner-wrap img').attr('src');
   $('.banner-wrap .item').css('background-image', 'url(' + banner_img + ')');
   // End
   var cover_img=$(".cover-img img").attr("src");
   $(".cover-img").css("background-image","url("+cover_img+")");

});