<cfquery name="Productdelete" datasource="#application.DSN#">
    DELETE FROM product WHERE ID=#url.id#
</cfquery>

<cflocation url = "viewproduct.cfm?isDeleted=1" addToken="false">