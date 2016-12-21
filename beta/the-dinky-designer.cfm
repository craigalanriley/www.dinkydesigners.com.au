<cfset pageTitle = "The Dinky Designer" />


<cfinclude template="includes/inc_header.cfm">

	<section id="content">

		<div class="container">
			
			<h1 class="logoDarkBlue"><cfoutput>#pageTitle#</cfoutput></h1>


			<!--- Step-by-step Wrapper --->
			<div class="row">
				<!--- Outline Selected --->
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 step-by-step">
					<ul id="step-by-step-ul">
					  <li class="active">1</li>
					  <li>2</li>
					  <li>3</li>
					  <li>4</li>
					  <li>5</li>
					</ul> 
				</div>
			</div>
						
			<!--- Outline Wrapper --->
			<div class="row">

				<div class="col-lg-12 text-center"><h5 class="logoPink">STEP 1 - Customise your dinky model</h5></div>

				<!--- Outline Selected --->
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 boxBorders">

					<!--- Designers Name --->
					<!--- <div class="col-lg-12 text-center" style="margin: 5px 0 5px 0"><input type="text" value="" placeholder="Please enter your name"></div> --->



					<!--- Design Image --->
					<div class="col-lg-12 text-center" id="largeOutlineWrapper">
						<img id="largeOutline" src="images/designer/stick-figure_black.jpg" style="height: 200px; width: 150px; " alt="Dinky Professionals"/>
					</div>

					<div class="col-lg-12 text-center" id="largeFillWrapper">
						<img id="largeFill" src="images/designer/child_face6_large.jpg" style="height: 120px; width: 175px; margin: 0 10px 0 0" alt="Dinky Professionals"/>
					</div>




					<div class="wrapper" id="thumbOutline">
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_black.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_lightblue.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_darkblue.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_purple.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_pink.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_red.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_orange.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_yellow.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_lightgreen.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/stick-figure_darkgreen.jpg" class="outlineThumb" alt="Dinky Professionals"/></a>
						</div>
					</div>

				</div>
			</div>

			<!---  --->
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 boxBorders">

					<div class="wrapper" id="thumbFill">
						<div class="elem">
							<a href="##"><img src="images/designer/child_face0.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/child_face1.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/child_face2.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/child_face3.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/child_face4.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/child_face5.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/child_face6.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/child_face7.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
						<div class="elem">
							<a href="##"><img src="images/designer/child_face8.jpg" class="fillThumb" alt="Dinky Professionals"/></a>
						</div>
					</div>

				</div>
			</div>

			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-right">
					<button type="button" class="btn btn-default navbar-btn btnBlog" id="contactButton">&lt; BACK</button>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-left">
					<button type="button" class="btn btn-default navbar-btn btnBlog" id="contactButton">NEXT &gt;</button>
				</div>
			</div>

		</div>

	</section>

	<br><br><br>

<cfinclude template="includes/inc_footer.cfm">


<script>

	$( document ).ready(function() {
	    console.log( "ready!" );

		$('#thumbOutline').delegate('img','click', function()
			{
			console.log("clicked!!!!!");
			$('#largeOutline').attr('src',$(this).attr('src').replace('thumb','large')).fadeIn("slow");
			// $('#description').html($(this).attr('alt'));
			});

		$('#thumbFill').delegate('img','click', function()
			{
			console.log("clicked!!!!!");
			$('#largeFill').attr('src',$(this).attr('src').replace('thumb','large')).fadeIn("slow");
			// $('#description').html($(this).attr('alt'));
			});
	});
</script>






	