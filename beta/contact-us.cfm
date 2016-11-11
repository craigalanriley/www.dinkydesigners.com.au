<cfset pageTitle = "Contact Us" />

<cfinclude template="includes/inc_header.cfm">


	<section id="content">
		<div class="container">

			<h1 class="logoLightGreen">CONTACT US</h1>

			<div class="row">

				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 contactUsWrapper">
					
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula metus et condimentum ultrices. Vivamus eget suscipit nisl, egestas euismod sapien. Curabitur porta elementum velit, vitae malesuada elit pulvinar at. Vivamus eget suscipit nisl, egestas euismod sapien. Curabitur porta elementum velit, vitae malesuada elit pulvinar at.</p>
					<br />

					<p>
						<i class="fa fa-phone logoLightGreen" aria-hidden="true"></i>
						<a href="tel:+6120123456789" target="_blank" class="">+6120123456789</a>
					</p>
					<br />
					<p>
						<i class="fa fa-envelope logoLightGreen" aria-hidden="true"></i> 
						<a href="mailto:&#105;&#110;&#102;&#111;&#064;&#100;&#105;&#110;&#107;&#121;&#100;&#101;&#115;&#105;&#103;&#110;&#101;&#114;&#115;&#046;&#099;&#111;&#109;&#046;&#097;&#117;?subject=Website Enquiry" target="_blank">&#105;&#110;&#102;&#111;&#064;&#100;&#105;&#110;&#107;&#121;&#100;&#101;&#115;&#105;&#103;&#110;&#101;&#114;&#115;&#046;&#099;&#111;&#109;&#046;&#097;&#117;</a>
					</p>
					<br />
					<p>
						<i class="fa fa-facebook logoLightGreen" aria-hidden="true"></i> 
						<a href="http://www.facebook.com/dinkydesigners/" target="_blank" class="">www.facebook.com/dinkydesigners/</a>
					</p>
					<br />
					<p>
						<i class="fa fa-instagram logoLightGreen" aria-hidden="true"></i> 
						<a href="https://www.instagram.com/dinkydesigners/" target="_blank" class="">www.instagram.com/dinkydesigners/</a>
					</p>
					<br />
					<br />
				</div>

				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">	
					<form id="contactForm">
						<div class="col-lg-12">
							<input type="text" class="form-control stichBorder" id="userName" placeholder="Name">
						</div>
						<div class="col-lg-12">
							<input type="text" class="form-control stichBorder" id="userPhone" placeholder="Phone (optional)">
						</div>
						<div class="col-lg-12">
							<input type="text" class="form-control stichBorder" id="userEmail" placeholder="Email">
						</div>
						<div class="col-lg-12">
							<textarea rows="6" class="form-control stichBorder" id="userMessage" placeholder="Your Message"></textarea>
						</div>
						<div class="col-lg-12">
							<span class="errorText">&nbsp;</span>
						</div>
						<div class="col-lg-12">
							<button type="button" class="btn btn-default navbar-btn btnBlog" id="contactButton">Send Message</button>
						</div>
					</form>
				</div>
				
			</div>
			<br />
			
		</div>
	</section>


<cfinclude template="includes/inc_footer.cfm">




	