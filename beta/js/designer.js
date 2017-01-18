$(function() 
	{	

	// ------------------------- Dinky Designer Wizard Functions ------------------------- 
	var curr_step = 1;
	var totalSteps = 5;
	var arrTitles = [ "Customise your dinky model" , "Choose your pattern and fabric" , "Customise the front of your design" , "Customise the back of your design" , "Checkout" ];

	updateStepTitle(curr_step);

	$( "#backButton" ).click(function(){
		console.log("Step Back!");
		prevStep();
		});

	$( "#nextButton" ).click(function(){
		console.log("Next Step!");
		nextStep();
		});


	function nextStep()
		{
		console.log("here");
		// Get current step
		var curr_step = getCurrentStepNo();
		// var next_val = document.getElementById( "img_no" ).value;
		var next_step = Number(curr_step) + 1;

		// save current step selections to array (and CF session?)
		saveSelections(curr_step, next_step);

		if(next_step >= totalSteps)
			{
			// Send to checkout
			}
		else{
			// Update step-by-step breadcrumbs
			updateStepByStep(next_step, curr_step);

			// Update step title
			updateStepTitle(next_step);

			// Update Thumbs
			updateThumbs(next_step, curr_step);

			// Handle dinky name / text field
			updateNameField(curr_step, next_step);
			};

		// Update hidden step field
		updateCurrentStepNo(next_step);
		};


	function prevStep()
		{
		console.log("here");
		// Get current step
		var curr_step = getCurrentStepNo();
		// var next_val = document.getElementById( "img_no" ).value;
		var next_step = Number(curr_step) - 1;

		// save current step selections to array (and CF session?)
		saveSelections(curr_step, next_step);

		if(next_step >= totalSteps)
			{
			// Send to checkout
			}
		else{
			// Update step-by-step breadcrumbs
			updateStepByStep(next_step, curr_step);

			// Update step title
			updateStepTitle(next_step);

			// Update Thumbs
			updateThumbs(next_step, curr_step);

			// Handle dinky name / text field
			updateNameField(curr_step, next_step);
			};

		// Update hidden step field
		updateCurrentStepNo(next_step);
		};



	function updateStepTitle(next_step)
		{
		console.log("updateStepTitle: "+next_step);
		var newStepTitle = arrTitles[next_step-1]; // arrays start at 0
		$("#stepTitle").text(newStepTitle);

		};

	function getCurrentStepNo() 
		{
		var currentStepNo = document.getElementById( "step_no" ).value;
		// console.log(currentFillImageNo);
		return currentStepNo;
		};

	function updateCurrentStepNo(step_no) 
		{
		document.getElementById( "step_no" ).value = step_no;
		// return;
		};

	function updateStepByStep(onStep, offStep) 
		{
		$("#step"+onStep).toggleClass( "active" );
		$("#step"+offStep).toggleClass( "active" );
		};

	function updateThumbs(curr_step, next_step) 
		{
		// Hide current step thumbs (fill and outline)
		$("#Fills"+curr_step).toggleClass( "hidden" );
		$("#Outlines"+curr_step).toggleClass( "hidden" );
		// Show new step thumbs (fill and outline)
		$("#Fills"+next_step).toggleClass( "hidden" );
		$("#Outlines"+next_step).toggleClass( "hidden" );
		};

	function updateNameField(curr_step, next_step) 
		{
		console.log("curr_step: " + curr_step);
		console.log("next_step: " + next_step);

		if(curr_step == 1 && next_step == 2)
			{
			$("#backButton").toggleClass("hidden");
			$('#step2_outline_holder').toggleClass("hidden");
			$('#step2_fill_holder').toggleClass("hidden");
			$('#dinkyTextField').hide();
			};
		if(curr_step == 2 && next_step == 1)
			{
			$("#backButton").toggleClass("hidden");
			$('#step2_outline_holder').toggleClass("hidden");
			$('#step2_fill_holder').toggleClass("hidden");
			$('#dinkyTextField').show();
			};

		// next button (remove later when built basket)
		if( curr_step == 3 && next_step == 4)
			{
			$("#nextButton").toggleClass("hidden");
			};

		if( curr_step == 4 && next_step == 3)
			{
			$("#nextButton").toggleClass("hidden");
			};
		};

	function saveSelections(curr_step, next_step) 
		{
			
		};

	$('#step1_outline_holder').show();

	// ------------------------- OUTLINE SECTION ------------------------- 

	var step1_large_images = [ "stick-figure-large-0" , "stick-figure-large-1" , "stick-figure-large-2" , "stick-figure-large-3" , "stick-figure-large-4" , "stick-figure-large-5" , "stick-figure-large-6" , "stick-figure-large-7" , "stick-figure-large-8" , "stick-figure-large-9" ];

	var step2_large_images = [ "pattern-large-0" , "pattern-large-1" ];


	$( "#designerBack" ).click(function(){
		prev();
		// console.log("Back!");
		});

	$( "#designerNext" ).click(function(){
		next();
		// console.log("Next!");
			});

	$( ".outlineThumb" ).click(function(){
		var selected_val = $(this).attr('selected-no')
		// console.log(selected_val);
		select(selected_val);
		// console.log("Select!");
			});

	function prev()
		{
		var stepNumber = getCurrentStepNo();

		$("#step"+stepNumber+"_outline_holder").fadeOut(1000,function()
			{
			var curr_val = getCurrentOutlineImageNo();
			// var prev_val = document.getElementById( "img_no" ).value;
			var prev_val = Number(curr_val) - 1;
			if(prev_val <= -1)
				{
				prev_val = ( getCurrentStepLargeImagesArrayLength() - 1 );
				};

			updateSelectedOutline(prev_val);
			// $( '#step1_outline_holder' ).attr( 'src' , 'images/designer/'+step1_large_images[prev_val]+'.png');
			updateLargeImage(prev_val);
			// document.getElementById( "img_no" ).value = prev_val;
			updateOutlineImageNo(prev_val);
			});
		};


	function next()
		{
		var stepNumber = getCurrentStepNo();

		$("#step"+stepNumber+"_outline_holder").fadeOut(1000,function()
			{
			var curr_val = getCurrentOutlineImageNo();
			// var next_val = document.getElementById( "img_no" ).value;
			var next_val = Number(curr_val) + 1;
			if( next_val >= getCurrentStepLargeImagesArrayLength() )
				{
				next_val = 0;
				};
			updateSelectedOutline(next_val);
			// $('#step1_outline_holder').attr( 'src' , 'images/designer/'+step1_large_images[next_val]+'.png');
			updateLargeImage(next_val);
			// document.getElementById( "img_no" ).value = next_val;
			updateOutlineImageNo(next_val);
			});
		
		};

	function getCurrentStepLargeImagesArrayLength()
		{
		var stepNumber = getCurrentStepNo();

		switch (stepNumber) 
			{ 
			case '1': 
				var arrLength = step1_large_images.length;
				break;
			case '2': 
				var arrLength = step2_large_images.length;
				break;
			case '3': 
				// var arrLength = step3_large_images.length;
				break;		
			case '4': 
				// var arrLength = step4_large_images.length;
				break;
			default:
				// alert('Nobody Wins!');
			}

		return arrLength;
		};



	function getCurrentStepLargeImage(stepNumber, img_no)
		{
		switch (stepNumber) 
			{ 
			case '1': 
				var imageName = "figures/"+step1_large_images[img_no]+".png";
				break;
			case '2': 
				var imageName = "patterns/"+step2_large_images[img_no]+".png"; 
				break;
			case '3': 
				// var imageName = step3_large_images[img_no]
				break;		
			case '4': 
				// var imageName = step4_large_images[img_no]
				break;
			default:
				// alert('Nobody Wins!');
			}

		return imageName;
		};

	function select(selected_val)
		{
		var stepNumber = getCurrentStepNo();

		$("#step"+stepNumber+"_outline_holder").fadeOut(200,function()
			{
			updateSelectedOutline(selected_val);
			updateLargeImage(selected_val);
			updateOutlineImageNo(selected_val);
			});
		};


	function updateLargeImage(img_no) 
		{
		var stepNumber = getCurrentStepNo();
		var imageName = getCurrentStepLargeImage(stepNumber, img_no);
		$("#step"+stepNumber+"_outline_holder").attr( 'src' , 'images/designer/'+imageName);
		$("#step"+stepNumber+"_outline_holder").show();
		// return;
		};

	function updateSelectedOutline(onNumber) 
		{
		var stepNumber = getCurrentStepNo();
		// console.log("stepNumber: " + stepNumber);
		var offNumber = getCurrentOutlineImageNo();
		// console.log("onNumber: " + onNumber);
		// console.log("offNumber: " + offNumber);
		$(".step"+stepNumber+"[selected-no|='"+onNumber+ "']").toggleClass( "selectedThumb" );
		$(".step"+stepNumber+"[selected-no|='"+offNumber+ "']").toggleClass( "selectedThumb" );
		// return;
		};

	function getCurrentOutlineImageNo() 
		{
		var stepNumber = getCurrentStepNo();

		var currentOutlineImageNo = document.getElementById( "step"+stepNumber+"_outline_no" ).value;
		// console.log(currentOutlineImageNo);
		return currentOutlineImageNo;
		};

	function updateOutlineImageNo(img_no) 
		{
		var stepNumber = getCurrentStepNo();

		document.getElementById( "step"+stepNumber+"_outline_no" ).value = img_no;
		// return;
		};



	// ------------------------- FILL SECTION ------------------------- 

	$('#thumbFill').delegate('img','click', function()
		{
		var stepNumber = getCurrentStepNo();
		// Get selected fill number
		var selected_val = $(this).attr('fill-no')
		// Update selected fill
		updateSelectedFill(selected_val);
		// Update hidden field to track selected
		updateFillImageNo(selected_val);
		// show new face
		$("#step"+stepNumber+"_fill_holder").attr('src',$(this).attr('src').replace('thumb','large')).show();
		});

	function updateSelectedFill(onNumber) 
		{
		var stepNumber = getCurrentStepNo();
		console.log("stepNumber: " + stepNumber);
		var offNumber = getCurrentFillImageNo();
		console.log("onNumber: " + onNumber);
		console.log("offNumber: " + offNumber);
		$(".step"+stepNumber+"[fill-no|='"+onNumber+ "']").toggleClass( "selectedThumb" );
		$(".step"+stepNumber+"[fill-no|='"+offNumber+ "']").toggleClass( "selectedThumb" );
		// return;
		};

	function getCurrentFillImageNo() 
		{
		var stepNumber = getCurrentStepNo();
		var currentFillImageNo = document.getElementById( "step"+stepNumber+"_fill_no" ).value;
		// console.log(currentFillImageNo);
		return currentFillImageNo;
		};

	function updateFillImageNo(img_no) 
		{
		var stepNumber = getCurrentStepNo();
		document.getElementById( "step"+stepNumber+"_fill_no" ).value = img_no;
		// return;
		};

	// ------------------------- NAME SECTION ------------------------- 

	function resetForm(formName) 
		{
		// console.log("Clear Form");
		$("#"+formName).trigger("reset");
		};
		
	}); // $ Ready End




















