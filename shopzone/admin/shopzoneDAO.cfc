<cfcomponent>
   
    <!------------------------Insert---------------------->

    <cffunction name="add" returntype="void">
        <cfargument name="productinsert" default=0 type="struct">
        <!--- <cfdump var="#form#"><cfabort>--->
        <cffile action = "upload" destination = "#expandpath('./uploads')#" result="imgFile">
        <cfquery name="productAdd" datasource="#application.DSN#">
            INSERT INTO product (product_name,product_image,product_description,product_price)
            VALUES (<cfqueryparam value = "#arguments.productinsert.product_name#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#imgFile.serverFile#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.productinsert.product_description#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.productinsert.product_price#" cfsqltype = "CF_SQL_INTEGER">)
        </cfquery>
    </cffunction>

    <!----------view(list in table format)-------------->

    <cffunction  name="listAll" returntype="query">
        <cfargument name="data" type="numeric" default=0>
        <!--- <cfdump var="#arguments#"><cfabort> --->
        <cfquery name="Productlist" datasource="#application.DSN#">
            select * from product where 1=1 
            <cfif val(arguments.data)>and
                id=#arguments.data#
            </cfif>
        </cfquery>
        <cfreturn  Productlist>
   </cffunction>

    <!------------------------Edit---------------------->

    <cffunction name="update" returntype="query">
        <cfargument name="Id" type="numeric" default=0>
        <cfset var q=''>
        <cfquery name="q" datasource="#application.DSN#">
        select * from product where ID=#arguments.ID# 
        </cfquery>
        <cfreturn q>
         </cffunction>
      




 </cfcomponent>