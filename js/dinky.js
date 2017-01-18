$(function() 
		{	
		// ____________________________________________________________________ Contact Form ____________________________________________

		$("#contactButton").click(function() 
			{
			var errorMessage = "";

			console.log("Contact Us!");

			contactName 	= $("#userName").val();
			contactPhone 	= $("#userPhone").val();
			contactEmail 	= $("#userEmail").val();
			contactMessage 	= $("#userMessage").val();

			console.log("contactName = " + contactName);
			console.log("contactPhone = " + contactPhone);
			console.log("contactEmail = " + contactEmail);
			console.log("contactMessage = " + contactMessage);

			if (isValidEmail(contactEmail) == false)
				{
				displayErrorMessage("Please enter a valid email");
				}
			else if (isValidString(contactName) == false)
				{
				displayErrorMessage("Please enter your name");
				}
			else if (isValidString(contactMessage) == false)
				{
				displayErrorMessage("Please enter a message");
				}
			else{
				processContactFormData(contactName,contactPhone,contactEmail,contactMessage);
				};

			});


		function processContactFormData(contactName,contactPhone,contactEmail,contactMessage) 
			{
			// Insert Data & Send Email

			$.ajax({
				// the location of the CFC to run
				url: "cfc/contact.cfc?method=processData"
				// send a GET HTTP operation
				, type: "post"
				// tell jQuery we're getting JSON back
				// , dataType: "json"
				// send the data to the CFC
				, data: {
				    	Name: contactName,
				    	Phone: contactPhone,
				    	Email: contactEmail,
				    	Message: contactMessage
				  		}
				// this gets the data returned on success
				, success: function (data)
					{
					// this uses the "jquery.field.min.js" library to easily populate your form with the data from the server
					console.log("Sucess!" + data);

					resetForm("contactForm");

					displayErrorMessage("Thank you, we will respond shortly");
					
					// $("#saveIcon"+ fixtureID).toggleClass( "fa-spin" ); 
					
					}
				// this runs if an error
				, error: function (xhr, textStatus, errorThrown)
					{
				    // show error
				    console.log(errorThrown);
				    
				    // $("#btnSave").toggleClass( "fa-spin" ); 
				  	}
				});
			};

		// ____________________________________________________________________ Register Form ____________________________________________

		$("#signUpButton").click(function() 
			{
			var errorMessage = "";

			console.log("Sign Up!");

			contactName = $("#userName").val();
			contactEmail = $("#userEmail").val();

			console.log("contactName = " + contactName);
			console.log("contactEmail = " + contactEmail);

			if (isValidEmail(contactEmail) == false)
				{
				displayErrorMessage("Please enter a valid email");
				}
			else if (isValidString(contactName) == false)
				{
				displayErrorMessage("Please enter your name");
				}
			else{
				processFormData(contactName,contactEmail);
				};

			});


		function processFormData(contactName,contactEmail) 
			{
			// Insert Data & Send Email

			$.ajax({
				// the location of the CFC to run
				url: "cfc/registration.cfc?method=processData"
				// send a GET HTTP operation
				, type: "post"
				// tell jQuery we're getting JSON back
				// , dataType: "json"
				// send the data to the CFC
				, data: {
				    	Name: contactName,
				    	Email: contactEmail
				  		}
				// this gets the data returned on success
				, success: function (data)
					{
					// this uses the "jquery.field.min.js" library to easily populate your form with the data from the server
					console.log("Sucess!" + data);

					displayErrorMessage("Thank you for registering");
					
					// $("#saveIcon"+ fixtureID).toggleClass( "fa-spin" ); 
					
					}
				// this runs if an error
				, error: function (xhr, textStatus, errorThrown)
					{
				    // show error
				    console.log(errorThrown);
				    
				    // $("#btnSave").toggleClass( "fa-spin" ); 
				  	}
				});
			};

		// ____________________________________________________________________ Valdiation Functions ____________________________________________

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