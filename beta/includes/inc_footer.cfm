	
	<div class="container">	
		<div class="row">
			<div class="col-lg-12">
				<img src="images/dinky-web-kids.jpg" alt="Dinky Kids"/>
			</div>
		</div>
	</div>

	<footer id="footer" class="dinkyLightGreen" style="margin: 0px !important">

		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footerSocial">

					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<a href="https://www.facebook.com/dinkydesigners/" target="_blank" class="social"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<a href="https://www.instagram.com/dinkydesigners/" target="_blank" class="social"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<a href="mailto:&#105;&#110;&#102;&#111;&#064;&#100;&#105;&#110;&#107;&#121;&#100;&#101;&#115;&#105;&#103;&#110;&#101;&#114;&#115;&#046;&#099;&#111;&#109;&#046;&#097;&#117;?subject=Website Enquiry" target="_blank" class="social"><i class="fa fa-envelope" aria-hidden="true"></i></a>
					</div> 
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<a href="tel:+6120123456789" target="_blank" class="social"><i class="fa fa-phone" aria-hidden="true"></i></a>
					</div> 

					<!-- 
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<a href="https://twitter.com/dinky_designers" target="_blank" class="social"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					</div> 
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<a href="https://au.pinterest.com/dinkydesigners/" target="_blank" class="social"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
					</div> 
					-->
				</div>

			</div>
		</div>

		<div class="col-lg-12 col-md-12 col-sm-12 footerText dinkyDarkGreen">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="text-align:left">&copy; 2016 Dinky Designers</div>
			<div class="col-lg-6 col-md-6 col-sm-6" col-xs-6 style="text-align:right">ABN 76 6118 883 25</div>
		</div>

	</footer>





    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <script type="text/javascript">	
	
	$(function() 
		{	

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

	</script>

    <script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-84539346-1', 'auto');
		ga('send', 'pageview');

	</script>

  </body>
</html>