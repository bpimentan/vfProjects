// Market configutation
(function(){
	vf.config = {
		string: {
			show: 'show ',
			hide: 'hide ',
			cont: 'content ',
			'nav-links': 'navigation links ',
			drop: 'drop-list ',
			basket : 'items in your ',
			menu : 'menu '
		},
		view: {

		},
		form: {
			html: {
				eheading: 'Sorry there have been {{count}} errors:',
				error: '<div class="fm-error"><i class="i-error"></i><span class="access">Error: </span>{{message}}.</div>',
				required: 'This field is required'
			},

			patterns: {
				alpha: {
					match:  /^([A-Za-z-\s]+)$/,
					error: 'Please ensure only text is entered'
				},
				numeric: {
					match:  /^\d+$/,
					error: 'Please ensure only numbers are entered'
				},
				alphanumeric: {
					match:  /^([A-Za-z0-9]+)$/,
					error: 'Please ensure only text and/or numbers are entered'
				},
				postcode: {
					match:  /^([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|(([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9]?[A-Za-z])))) {0,1}[0-9][A-Za-z]{2})$/,
					error: 'Please enter a valid UK postcode (e.g. AA1 2BB)'
				},
				date: {
					match:  /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]((19|20)\d\d)$/,
					error: 'Please enter a valid date (e.g. 28/11/2013)'
				},
				landline: {
					match:  /^([\+(][+0-9()]{1,5}([ )\-])?)?([\(]{1}[0-9]{3}[\)])?([0-9 \-]{1,256}([ \s\-])?)((x|ext|extension)?[0-9]{1,4}?)$/i,
					error: 'Please enter a valid landline number (e.g. 020 1234 1234)'
				},
				mobile: {
					match:  /^((0|\+44|00\d{2})7(5|6|7|8|9){1}\d{2}\s?\d{6})$/,
					error: 'Please enter a valid mobile number (e.g. 07555 000000)'
				},
				email: {
					match:  /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i,
					error: 'Please enter a valid email address (e.g. johndoe@gmail.com)'
				}
			}
		},

		ajax_load: '<div class="tg-progress"><div><img src="/core/assets/img/loader-lrg.gif" alt="Loading content" aria-busy="true"><div>Loading...<span class="access"> content</span></div>'
		
	};
}(vf));

// Market on load customisations
$(function(){

	// Add a custom class
	$('body').addClass('custom-class-local-js');

});

//SliderHOme
$(document).ready(function(){
	  $('.slider1').bxSlider({
		auto: true,
		controls: false,
	    minSlides: 1,
	    maxSlides: 1,
	    slideMargin: 0,
	    moveSlides: 1,
	    startSlide: 1
	  });
	});
