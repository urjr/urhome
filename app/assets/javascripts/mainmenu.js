var mainMenu = {
	highlightActive: function(){

		var $topBarAnchor = $('.top-bar ul li a');
		var $topBarListItem = $('.top-bar ul li');

		$topBarListItem.removeClass('active')

		$topBarAnchor.each(function(){
			if ( $(this).html() === $('.page-name').html() ) {
				$(this).closest('li').addClass('active')
				
			};
		});
	},

	init: function(){
		this.highlightActive();
	},
};