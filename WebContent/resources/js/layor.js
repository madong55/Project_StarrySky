  $(document).ready(function(){   
		
		var totlnk = $("#image-map area").length;
		$('.abspopcc').css('display','none');
		$('.mydiv').css('display','none');
		$('.mydiv').css('z-index','0');

		for (i=1; i<=totlnk-4 ; i++ ){

			$("#image-map .openlayor").click(function(){
				var thisnm = $(this).attr('alt');
				$('#layor'+thisnm).css('display','block');
				$('#mydiv'+thisnm).css('display','block');
				$('.mydiv').css('z-index','0');
				$('#mydiv'+thisnm).css('z-index','9998');
				return false;
			});

		}



  });




	  function closecc() {
		$('.clarea').click(function(){
		$('.abspopcc').css('display','none');
		

		return false;
		});
	  
	  }