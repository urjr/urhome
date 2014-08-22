var projects = {
	windowClose: function(){
		$('.close').click(function(e){
			e.preventDefault();
			$(this).closest('.project-wrapper')
			.css({
				'opacity': 0,
				'pointer-events':'none',
			});

		});
	},

	windowMinimize: function(){

		$('.minimize').removeClass('hidden');
		$('.minimize').click(function(e){
			e.preventDefault();
			if ($(this).hasClass('hidden')){
				$(this).closest('.project-title-bar').next('.project-content-wrapper').show('slow');
				$(this).removeClass('hidden');
			} else {
				$(this).closest('.project-title-bar').next('.project-content-wrapper').hide('slow');
				$(this).addClass('hidden');
			}
		});
	},

	init: function(){
		this.windowClose();
		this.windowMinimize();
	},
}