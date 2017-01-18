$(function() 
		{	
		// ____________________________________________________________________ Contact Form ____________________________________________
		console.log("designer.js roger!");



		$( "#designerBack" ).click(function(){
			prev();
			console.log("Back!");
			});

		$( "#designerNext" ).click(function(){
			next();
			console.log("Next!");
 			});

		$( ".outlineThumb" ).click(function(){
			var selected_val = $(this).attr('selected-no')
			console.log(selected_val);
			select(selected_val);
			console.log("Select!");
 			});

		// Write all the names of images in slideshow
		var images = [ "stick-figure-large-0" , "stick-figure-large-1" , "stick-figure-large-2" , "stick-figure-large-3" , "stick-figure-large-4" , "stick-figure-large-5" , "stick-figure-large-6" , "stick-figure-large-7" , "stick-figure-large-8" , "stick-figure-large-9" ];


		function prev()
			{
			$('#largeOutline').fadeOut(1000,function()
				{
				var curr_val = getCurrentImageNo();
				// var prev_val = document.getElementById( "img_no" ).value;
				var prev_val = Number(curr_val) - 1;
				if(prev_val <= -1)
					{
					prev_val = images.length - 1;
					};
				// $( '#largeOutline' ).attr( 'src' , 'images/designer/'+images[prev_val]+'.png');
				updateLargeImage(prev_val);
				// document.getElementById( "img_no" ).value = prev_val;
				updateImageNo(prev_val);
				});
			};


		function next()
			{
			$('#largeOutline' ).slideUp(1000,function()
				{
				var curr_val = getCurrentImageNo();
				// var next_val = document.getElementById( "img_no" ).value;
				var next_val = Number(curr_val) + 1;
				if(next_val >= images.length)
					{
					next_val = 0;
					};
				// $('#largeOutline').attr( 'src' , 'images/designer/'+images[next_val]+'.png');
				updateLargeImage(next_val);
				// document.getElementById( "img_no" ).value = next_val;
				updateImageNo(next_val);
				});
			
			};

		function select(selected_val)
			{
			$('#largeOutline' ).fadeOut(1000,function()
				{
				updateLargeImage(selected_val);
				updateImageNo(selected_val);
				});
			};


		function getCurrentImageNo() 
			{
			var currentImageNo = document.getElementById( "img_no" ).value;
			console.log(currentImageNo);
			return currentImageNo;
			};

		function updateImageNo(img_no) 
			{
			document.getElementById( "img_no" ).value = img_no;
			return;
			};

		function updateLargeImage(img_no) 
			{
			$('#largeOutline').attr( 'src' , 'images/designer/'+images[img_no]+'.png');
			$('#largeOutline').slideDown(250);
			return;
			};




		function resetForm(formName) 
			{
			console.log("Clear Form");
			$("#"+formName).trigger("reset");
			};

		

		function displayErrorMessage(msg) 
			{
			$(".errorText").text(msg);	
			};

		function isValidString(sString) 
			{
			if (sString.length == 0)
				{
				return false;
				}
			else{
				return true;
				}
			};

		function isValidEmail(sEmail) 
			{
			if (sEmail.length == 0)
				{
				return false;
				}
			else{
				return true;
				}
			};
			
		}); // $ Ready End