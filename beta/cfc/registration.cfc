<cfcomponent output="true">

	<cffunction name="processData" access="remote" output="true" returnType="any" returnFormat="json" >
	<cfargument name="name"		type="string" 	required="true" />
	<cfargument name="email"	type="string" 	required="true" />

		<cftry>
		
			<cfscript>
				
				var result 	= "#SerializeJSON(arguments)#";

				result = saveData(
									name=arguments.name, 
									email=arguments.email
								    );

			</cfscript>
			
			
			<!--- <cfset sleep(500)> --->

			<cfcatch type="any">
				<cfset result = SerializeJSON(cfcatch)>
			</cfcatch>
			
		</cftry>
			
		<cfreturn result />
	</cffunction>


	<cffunction name="saveData" access="remote" output="true" returnType="any" returnFormat="json" >
		<cfargument name="name"		type="string" 	required="true" />
		<cfargument name="email"	type="string" 	required="true" />

		<cftry>

			<cfscript>
				
				var result 	= true;
				var webUserType = 2;

				var first_name = listFirst(arguments.name, " ");
				var last_name = listRest(arguments.name, " ");

			</cfscript>

			<cfquery name="addUser" datasource="#Application.DSN#">
				INSERT INTO users(user_type, first_name, last_name, email, status_id)
				VALUES 	(
						<cfqueryparam cfsqltype="cf_sql_tinyint" value="#webUserType#">,
						<cfqueryparam cfsqltype="cf_sql_varchar" value="#first_name#">,
						<cfqueryparam cfsqltype="cf_sql_varchar" value="#last_name#">,
						<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">,
						<cfqueryparam cfsqltype="cf_sql_varchar" value="0">
						)

			</cfquery>
			
			<cfmail to="info@dinkydesigners.com.au" bcc="info@foxtrotyankeeindia.com" from="#arguments.email#" subject="New Dinky Registration" type="html">
			  
			  	<p>The following user has just registered on dinkydesigners.com:</p>
			  	<br />
			  	<p>
			  	<strong>First Name:</strong> #first_name#<br/>
			  	<strong>Last Name:</strong> #last_name#<br/>
			  	<strong>Email:</strong> #email#<br/>
			  	</p>

			</cfmail>


			<cfcatch type="any">
				<cfset result = SerializeJSON(cfcatch)>
			</cfcatch>
			
		</cftry>
			
		<cfreturn result />
	</cffunction>

	
</cfcomponent>