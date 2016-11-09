<cfset pageTitle = "Home" />

<cfinclude template="includes/inc_header.cfm">


	<section id="content">

		<div class="container">
			<!-- <h1>Home</h1> -->
			<div class="row">

				<div class="col-lg-12">
					<a href="the-dinky-designer.cfm"><img src="images/dinky-web_banner.jpg" alt="Start Designing"/></a>
				</div>

			</div>
		</div>
		<br />

		<div class="container">

			<h1 class="logoLightBlue">POPULAR PATTERNS</h1>

			<div class="row">

				<cfloop from="1" to="3" index="x">

					<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 shopGrid">
						<div class="shopContainer">
							<h4>Item Name</h4>
							<span class="itemPrice">$<cfoutput>#RandRange(1,50)#</cfoutput></span>
							<br />
							<img src="images/patterns/dinky-pattern-<cfoutput>#x#</cfoutput>.jpg" class="shopImage" alt="Item Name" />
							<br />
							<button type="button" class="btn btn-default navbar-btn btnBlog"><cfoutput>#UCase("Design Now")#</cfoutput></button>
						</div>
					</div>

				</cfloop>
				
			</div>

			<h1 class="logoLightBlue">LATEST NEWS</h1>

			<div class="row">

				<div class="col-lg-3 col-md-4 col-sm-12 col-xs-12 imgLeftContainer">
					<img src="images/dinky-blog-1.jpg" alt="Dinky Kids" class="" />
				</div>

				<div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
					<h6>01/01/2016</h6>
					<h4>Lobortis sem eget, pretium justo. Duis molestie pretium sem</h4>
					<p>Vestibulum non tellus at dui molestie consectetur at lacinia tortor. Vestibulum vel tellus in dui dignissim pretium. Curabitur commodo scelerisque facilisis. Vivamus pharetra justo sit amet nunc fermentum, ut malesuada quam vulputate. Pellentesque ac metus rhoncus, ullamcorper eros imperdiet, pharetra nisi. Phasellus et orci quis enim sodales auctor. Morbi faucibus tristique quam facilisis pulvinar. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum arcu lacus, ultricies a vehicula tempor, blandit vitae ex.</p>

					<button type="button" class="btn btn-default navbar-btn btnBlog">Read More</button>
				</div>
				
			</div>
			<br />
			
		</div>

	</section>


<cfinclude template="includes/inc_footer.cfm">




	