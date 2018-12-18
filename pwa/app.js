(function() {
  'use strict';
  
	function preventDefault(e){
		e.preventDefault();
	}

	function disableScroll(){
		document.body.addEventListener('touchmove', preventDefault, { passive: false });
	}
	function enableScroll(){
		document.body.removeEventListener('touchmove', preventDefault, { passive: false });
	}  
	
	
	  var $section = $('.inverted-contain');
	  $section.find('.panzoom').panzoom({
		$zoomIn: $section.find(".zoom-in"),
		$zoomOut: $section.find(".zoom-out"),
		startTransform: 'scale(1.1)',
		increment: 0.1,
		minScale: 1,
		contain: 'invert'
	  }).panzoom('zoom');	

	  
  window.onload = function() {
	var pathname = window.location.pathname;
	
	if ((pathname == '/index.html') || (pathname == '/')) {
		if (navigator.userAgent.match(/(iPod|iPhone|iPad)/)) {
			if (window.matchMedia('(display-mode: standalone)').matches) {
				
			}	
			else {
				Materialize.toast('Add this web app on your  home screen: <br/> tap "share" and then "Add to home screen"', 5000);
			}
			
		}			
	}
	
	if (pathname == '/result.html') {
		let redquestion1 = localStorage.getItem("redquestion1") || 0;
		let redquestion2 = localStorage.getItem("redquestion2") || 0;
		
		if ((redquestion1 == 1) || (redquestion2 == 1)) {
			$('.very-likely').removeClass("hide");
			$('.unlikely').addClass("hide");
		}
		else {
			$('.unlikely').removeClass("hide");
			$('.very-likely').addClass("hide");
		}
	
		
	}
	
	if (pathname == '/question1.html') {
		let answer1 = localStorage.getItem("answer1") ;
		
		//initialize
		$('.answer1.yes .whatanswer').removeClass("roundiconactive");
		$('.answer1.no .whatanswer').removeClass("roundiconactive");
		$('.answer1.yes .whatanswer').addClass("roundiconinactive");
		$('.answer1.no .whatanswer').addClass("roundiconinactive");		
		
		if (answer1 == 'y') {
			$('.answer1.yes .whatanswer').removeClass("roundiconinactive");
			$('.answer1.yes .whatanswer').addClass("roundiconactive");
			
			$('.answer1.no .whatanswer').removeClass("roundiconactive");
			$('.answer1.no .whatanswer').addClass("roundiconinactive");			
		}
		if (answer1 == 'n') {
			$('.answer1.no .whatanswer').removeClass("roundiconinactive");
			$('.answer1.no .whatanswer').addClass("roundiconactive");
			
			$('.answer1.yes .whatanswer').removeClass("roundiconactive");
			$('.answer1.yes .whatanswer').addClass("roundiconinactive");					
		}
	}
	
	if (pathname == '/question2.html') {
		let answer2 = localStorage.getItem("answer2") ;
		
		//initialize
		$('.answer2.yes .whatanswer').removeClass("roundiconactive");
		$('.answer2.no .whatanswer').removeClass("roundiconactive");
		$('.answer2.yes .whatanswer').addClass("roundiconinactive");
		$('.answer2.no .whatanswer').addClass("roundiconinactive");		
		
		if (answer2 == 'y') {
			$('.answer2.yes .whatanswer').removeClass("roundiconinactive");
			$('.answer2.yes .whatanswer').addClass("roundiconactive");
			
			$('.answer2.no .whatanswer').removeClass("roundiconactive");
			$('.answer2.no .whatanswer').addClass("roundiconinactive");			
		}
		if (answer2 == 'n') {
			$('.answer2.no .whatanswer').removeClass("roundiconinactive");
			$('.answer2.no .whatanswer').addClass("roundiconactive");
			
			$('.answer2.yes .whatanswer').removeClass("roundiconactive");
			$('.answer2.yes .whatanswer').addClass("roundiconinactive");					
		}
	}

	if (pathname == '/question3.html') {
		let answer3 = localStorage.getItem("answer3") ;
		
		//initialize
		$('.answer3.yes .whatanswer').removeClass("roundiconactive");
		$('.answer3.no .whatanswer').removeClass("roundiconactive");
		$('.answer3.yes .whatanswer').addClass("roundiconinactive");
		$('.answer3.no .whatanswer').addClass("roundiconinactive");		
		
		if (answer3 == 'y') {
			$('.answer3.yes .whatanswer').removeClass("roundiconinactive");
			$('.answer3.yes .whatanswer').addClass("roundiconactive");
			
			$('.answer3.no .whatanswer').removeClass("roundiconactive");
			$('.answer3.no .whatanswer').addClass("roundiconinactive");			
		}
		if (answer3 == 'n') {
			$('.answer3.no .whatanswer').removeClass("roundiconinactive");
			$('.answer3.no .whatanswer').addClass("roundiconactive");
			
			$('.answer3.yes .whatanswer').removeClass("roundiconactive");
			$('.answer3.yes .whatanswer').addClass("roundiconinactive");					
		}
	}

	if (pathname == '/question4.html') {
		let answer4 = localStorage.getItem("answer4") ;
		
		//initialize
		$('.answer4.yes .whatanswer').removeClass("roundiconactive");
		$('.answer4.no .whatanswer').removeClass("roundiconactive");
		$('.answer4.yes .whatanswer').addClass("roundiconinactive");
		$('.answer4.no .whatanswer').addClass("roundiconinactive");		
		
		if (answer4 == 'y') {
			$('.answer4.yes .whatanswer').removeClass("roundiconinactive");
			$('.answer4.yes .whatanswer').addClass("roundiconactive");
			
			$('.answer4.no .whatanswer').removeClass("roundiconactive");
			$('.answer4.no .whatanswer').addClass("roundiconinactive");			
		}
		if (answer4 == 'n') {
			$('.answer4.no .whatanswer').removeClass("roundiconinactive");
			$('.answer4.no .whatanswer').addClass("roundiconactive");
			
			$('.answer4.yes .whatanswer').removeClass("roundiconactive");
			$('.answer4.yes .whatanswer').addClass("roundiconinactive");					
		}
	}	
  
  }
  
  
  $(document).ready(function(){
		$('.modal').modal();
	
	
  });  
  
	$('.btnAnswertoQuestion').on("click", function (e) {
	  var url = this.href;
	  var ans = 0;

	  e.preventDefault();
	  
	  if ($(this).hasClass("no")) {
	  console.log('no');
		ans = 0;
	  }	  
	  if ($(this).hasClass("yes")) {
	  console.log('yes');
		ans = 1;
	  }	  	  
	  
	  
	  if ($(this).hasClass("answer1")) {
		let answer1 = localStorage.getItem("answer1") ;
		
		if (ans == 1) 
			localStorage.setItem("answer1", 'y');
		else 	
			localStorage.setItem("answer1", 'n');
		
	  }	  
	  if ($(this).hasClass("answer2")) {
		let answer2 = localStorage.getItem("answer2") ;
		
		if (ans == 1) 
			localStorage.setItem("answer2", 'y');
		else 	
			localStorage.setItem("answer2", 'n');
		
	  }	  	  
	  if ($(this).hasClass("answer3")) {
		let answer3 = localStorage.getItem("answer3") ;
		
		if (ans == 1) 
			localStorage.setItem("answer3", 'y');
		else 	
			localStorage.setItem("answer3", 'n');
		
	  }
	  if ($(this).hasClass("answer4")) {
		let answer4 = localStorage.getItem("answer4") ;
		
		if (ans == 1) 
			localStorage.setItem("answer4", 'y');
		else 	
			localStorage.setItem("answer4", 'n');
		
	  }	  
	  
	  if ($(this).hasClass("redquestion1")) {
		console.log('redquestion1');
		let redquestion1 = localStorage.getItem("redquestion1") || 0;
		
		localStorage.setItem("redquestion1", ans);
	  }
	  
	  if ($(this).hasClass("redquestion2")) {
		console.log('redquestion2');
		let redquestion2 = localStorage.getItem("redquestion2") || 0;
		
		localStorage.setItem("redquestion2", ans);
	  }	  

	  window.location = url;

	});
	
	$('.resetdata').on("click", function (e) {
	  var url = this.href;

	  e.preventDefault();
	  
	  localStorage.setItem("redquestion1", 0);
	  localStorage.setItem("redquestion2", 0);
	  localStorage.setItem("answer1", '');
	  localStorage.setItem("answer2", '');
	  localStorage.setItem("answer3", '');
	  localStorage.setItem("answer4", '');
	  
	  window.location = url;

	});	


  if ('serviceWorker' in navigator) {
    navigator.serviceWorker
             .register('./service-worker.js')
             .then(function(registration) { console.log('Service Worker Registered', registration); })
			 .catch(function(err) {
					console.log("Service Worker Failed to Register", err);
				});
  }
})();
