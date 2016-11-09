<cfset pageTitle = "Shop" />

<cfinclude template="includes/inc_header.cfm">

	<section id="content">
		<div class="container">

			<h1 class="logoPurple"><cfoutput>#pageTitle#</cfoutput></h1>

			<div class="row">

				<cfloop from="1" to="9" index="x">

					<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 shopGrid">
						<div class="shopContainer">
							<h4>Item Name</h4>
							<span class="itemPrice">$<cfoutput>#RandRange(1,50)#</cfoutput></span>
							<br />
							<img src="images/shop/dinky-shop-<cfoutput>#RandRange(1,9)#</cfoutput>.jpg" class="shopImage" alt="Item Name" />
							<br />
							<button type="button" class="btn btn-default navbar-btn btnBlog"><cfoutput>#UCase("View Details")#</cfoutput></button>
						</div>
					</div>

				</cfloop>
				
			</div>
			
		</div>
	</section>


<cfinclude template="includes/inc_footer.cfm">




	