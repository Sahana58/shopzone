<cfinclude template="header.cfm">

<cfset structClear(session)>
<!--- <cfdump var="#session#"><cfabort> --->


<cflocation url="index.cfm" addtoken="false">