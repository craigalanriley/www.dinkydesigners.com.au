<cfcomponent output="true">

	<cffunction name="processData" access="remote" output="true" returnType="any" returnFormat="json" >
		<cfargument name="name"		type="string" 	required="true" />
		<cfargument name="phone"	type="string" 	required="false" default="Not Supplied" />
		<cfargument name="email"	type="string" 	required="true" />
		<cfargument name="message"	type="string" 	required="true" />

		<cftry>
		
			<cfscript>

				
				var result 	= "#SerializeJSON(arguments)#";

				// writeDump(result)


				result = sendEmail(
									name = arguments.name, 
									phone = arguments.phone, 
									email = arguments.email, 
									message = arguments.message
								    );

			</cfscript>
			
			
			<!--- <cfset sleep(500)> --->

			<cfcatch type="any">
				<cfset result = SerializeJSON(cfcatch)>
			</cfcatch>
			
		</cftry>
			
		<cfreturn result />
	</cffunction>


	<cffunction name="sendEmail" access="remote" output="true" returnType="any" returnFormat="json" >
		<cfargument name="name"		type="string" 	required="true" />
		<cfargument name="phone"	type="string" 	required="true" />
		<cfargument name="email"	type="string" 	required="true" />
		<cfargument name="message"	type="string" 	required="true" />

		<cftry>

			<cfscript>
				
				var result 		= true;
				var first_name 	= listFirst(arguments.name, " ");
				var last_name 	= listRest(arguments.name, " ");

			</cfscript>
			
			<cfmail to="info@dinkydesigners.com.au" bcc="info@foxtrotyankeeindia.com" from="#arguments.email#" subject="Dinky Contact Us" type="html">
			  
			  	<p>The following user has just registered on dinkydesigners.com:</p>
			  	<br />
			  	<p>
			  	<strong>First Name:</strong> #first_name#<br/>
			  	<strong>Last Name:</strong> #last_name#<br/>
			  	<strong>Email:</strong> #email#<br/>
			  	<strong>Message:</strong> #message#<br/>
			  	</p>

			</cfmail>


			<cfcatch type="any">
				<cfset result = SerializeJSON(cfcatch)>
			</cfcatch>
			
		</cftry>
			
		<cfreturn result />
	</cffunction>

	
</cfcomponent>