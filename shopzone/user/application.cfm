<cfparam name="session.login" default="0">
<cfapplication name="ShopZone" sessionmanagement="Yes">
<cfset application.product = createObject('component','shopzoneDAO')>
<cfset application.DSN="ShopZoneDSN">

<!--- <cfdump var="#cgi#"> --->
<cfif not val(session.login) and listlast(cgi.SCRIPT_NAME,"/") NEQ "index.cfm">
    <cflocation url="index.cfm" addtoken="false">
</cfif>

<!--- <cfdump var="#session#"><cfabort> --->