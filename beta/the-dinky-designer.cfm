<cfset pageTitle = "The Dinky Designer" />


<cfinclude template="includes/inc_header.cfm">

	<section id="content">

		<div class="container">
			
			<h1 class="logoDarkBlue"><cfoutput>#pageTitle#</cfoutput></h1>


			<input type="hidden" id="step_no" 			value="1">
			<input type="hidden" id="step1_outline_no" 	value="0">
			<input type="hidden" id="step1_fill_no" 	value="0">
			<input type="hidden" id="step2_outline_no" 	value="0">
			<input type="hidden" id="step2_fill_no" 	value="0">

			<!--- Step-by-step Wrapper --->
			<div class="row">
				<!--- Outline Selected --->
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 step-by-step">
					<ul id="step-by-step-ul">
					  <li id="step1" class="active">1</li>
					  <li id="step2">2</li>
					  <li id="step3">3</li>
					  <li id="step4">4</li>
					  <li id="step5">5</li>
					</ul> 
				</div>
			</div>
						
			<!--- Outline Wrapper --->
			<div class="row">

				<div class="col-lg-12 text-center"><h5 id="stepTitle" class="logoPink">STEP 1 - Customise your dinky model</h5></div>

				<!--- Outline Selected --->
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 boxBorders text-center">

					<!--- Designers Name --->
					<div class="col-lg-12 text-center" id="dinkyTextWrapper">
						<input id="dinkyTextField" type="text" value="" placeholder="Please enter your name">
					</div>


					<!-- Controls -->
					<a id="designerBack" class="left carousel-control" href="#Dinky-Designer" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
						<!--- <img src="images/designer/arrow-back.png" style="position: relative; margin-top: 50px"><a href=""></a> --->
						<span class="sr-only">Previous</span>
					</a>
					<a id="designerNext" class="right carousel-control" href="#Dinky-Designer" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<!--- <img src="images/designer/arrow-next.png" style="margin-top: 50%"> --->
						<span class="sr-only">Next</span>
					</a>


					<!--- Stick Figure --->
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center" id="largeOutlineWrapper">

						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center" id="stickFigureWrapper">
							<img id="step1_outline_holder" src="images/designer/figures/stick-figure-large-0.png"/>
						</div>
						<!--- Stick Fill --->
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center" id="stickFillWrapper">
							<img id="step1_fill_holder" src="images/designer/dotpix.png" alt="Dinky Face"/>
						</div>

						<!--- Base Pattern --->
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center" id="basePatternWrapper">
							<img id="step2_outline_holder" src="images/designer/patterns/pattern-large-0.png" class="hidden" />
						</div>
						<!--- Base Fill --->
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center" id="baseFillWrapper">
							<img id="step2_fill_holder" src="images/designer/fabrics/fabric-thumb-white.jpg" class="hidden clipTops"/>
						</div>

					</div>


					<!--- Accessories --->
					<!--- Accessory Fill --->


					<!--- THUMBS GALLERY - Outlines --->
					<div class="wrapper" id="thumbOutline" style="clear: both">

						<!--- 1. Thumbs - Stick Figures --->
						<div id="Outlines1" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-0.png" class="step1 outlineThumb selectedThumb" alt="Black Dinky Body" selected-no="0" /></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-1.png" class="step1 outlineThumb" alt="Light Blue Dinky Body" selected-no="1"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-2.png" class="step1 outlineThumb" alt="Dark Blue Dinky Body" selected-no="2"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-3.png" class="step1 outlineThumb" alt="Purple Dinky Body" selected-no="3"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-4.png" class="step1 outlineThumb" alt="Pink Dinky Body" selected-no="4"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-5.png" class="step1 outlineThumb" alt="Red Dinky Body" selected-no="5"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-6.png" class="step1 outlineThumb" alt="Orange Dinky Body" selected-no="6"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-7.png" class="step1 outlineThumb" alt="Yellow Dinky Body" selected-no="7"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-8.png" class="step1 outlineThumb" alt="Light Green Dinky Body" selected-no="8"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/figures/stick-figure-small-9.png" class="step1 outlineThumb" alt="Dark Green Dinky Body" selected-no="9"/></a>
							</div>
						</div>

						<!--- 2. Pattern Thumbs --->
						<div id="Outlines2" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center hidden">
							<div class="elem">
								<a href="##"><img src="images/designer/patterns/pattern-small-0.png" class="step2 outlineThumb selectedThumb" alt="T-Shirt" selected-no="0" /></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/patterns/pattern-small-1.png" class="step2 outlineThumb" alt="T-Shirt" selected-no="1"/></a>
							</div>
						</div>

						<!--- 3. Alterations(Front) Thumbs --->
						<div id="Outlines3" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center hidden">
							Alterations(front)...
						</div>

						<!--- 4. Alterations(Back) Thumbs --->
						<div id="Outlines4" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center hidden">
							Alterations(back)...
						</div>

					</div>

				</div>
			</div>

			<!--- Fill Wrapper --->
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 boxBorders">

					<!--- THUMBS GALLERY - Fills --->
					<div class="wrapper" id="thumbFill">

						<!--- 1. Thumbs - Faces --->
						<div id="Fills1" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
							<div class="elem">
								<a href="##"><img src="images/designer/dotpix.png" class="step1 fillThumb selectedThumb" alt="Dinky Face" fill-no="0"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face0.png" class="step1 fillThumb" alt="Dinky Face" fill-no="1"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face1.png" class="step1 fillThumb" alt="Dinky Face" fill-no="2"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face2.png" class="step1 fillThumb" alt="Dinky Face" fill-no="3"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face3.png" class="step1 fillThumb" alt="Dinky Face" fill-no="4"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face4.png" class="step1 fillThumb" alt="Dinky Face" fill-no="5"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face5.png" class="step1 fillThumb" alt="Dinky Face" fill-no="6"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face6.png" class="step1 fillThumb" alt="Dinky Face" fill-no="7"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face7.png" class="step1 fillThumb" alt="Dinky Face" fill-no="8"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/faces/child_face8.png" class="step1 fillThumb" alt="Dinky Face" fill-no="9"/></a>
							</div>
						</div>

						<!--- 2. Pattern Fills --->
						<div id="Fills2" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center hidden">
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-white.jpg" class="step2 fillThumb selectedThumb" alt="Dinky Face" fill-no="0"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-glory.jpg" class="step2 fillThumb" alt="Kona Cotton Morning Glory" fill-no="1"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-dark-green.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="2"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-light-green.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="3"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-yellow.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="4"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-orange.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="5"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-red.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="6"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-pink.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="7"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-purple.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="8"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-dark-blue.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="9"/></a>
							</div>
							<div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-light-blue.jpg" class="step2 fillThumb" alt="Dinky Face" fill-no="10"/></a>
							</div>
							<!--- <div class="elem">
								<a href="##"><img src="images/designer/fabrics/fabric-thumb-unicorns.jpg" class="step2 fillThumb" alt="Timeless Treasures Snow Princess Metallic Tossed Unicorns Aqua" fill-no="2"/></a>
							</div> --->
						</div>

						<!--- 3. Alterations(Front) Fills --->
						<div id="Fills3" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center hidden">
							Alterations(front) Fills
						</div>

						<!--- 4. Alterations(Back) Fills --->
						<div id="Fills4" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center hidden">
							Alterations(back) Fills
						</div>

					</div>

				</div>
			</div>

			<!--- Back / Next Nav --->
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-right">
					<button type="button" class="btn btn-default navbar-btn btnBlog hidden" id="backButton">&lt; BACK</button>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-left">
					<button type="button" class="btn btn-default navbar-btn btnBlog" id="nextButton">NEXT &gt;</button>
				</div>
			</div>

		</div>

	</section>

	<br><br><br>

<cfinclude template="includes/inc_footer.cfm">






	