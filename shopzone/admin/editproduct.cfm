<cfinclude template="header.cfm">

<cfparam name="url.id" default="0">
<cfset productupdate=  application.product.update ("#url.id#")>
<!--- <cfdump var="#productupdate#"><cfabort> --->

<body> 
   
    <div class="form">
        <h3>Edit Products</h3>
        <hr>
        <cfoutput>
            <div>
                <form name="" method="post" action=""  class="">
                    <label for="product_name">Product Name</label><br><br>
                    <input type="text" name="product_name" id="product_name" value="#productupdate.product_name#"><br><br>
                    
        
                    <label for="product_image">Product Image</label><br><br>
                    <input type="file" name="product_image" id="product_image" value="#productupdate.product_image#">
                    <img src="uploads/#productupdate.product_image#" alt="" width="50px" height="50px">
                   
                    
                    <label for="product_description">Product Description</label>
                    <textarea name="product_description" rows="10" cols="30">#productupdate.product_description#</textarea><br><br>
        
                    <label for="product_price">Product Price</label><br><br>
                    <input type="text" name="product_price" id="product_price" value="#productupdate.product_price#"><br><br>
        
                    <input type="submit" name="submit" value="Add">
                    
        
                </form>
            </div>
        </cfoutput>
    </div>
    
    <cfif isDefined('form.submit')>
        <!--- <cfdump var="#form#"><cfabort> --->
            <cfquery name="Productupdate" datasource="#application.DSN#">
                UPDATE product SET product_name='#form.product_name#',
                                   product_image='#form.product_image#',
                                   product_description='#form.product_description#',
                                   product_price='#form.product_price#'
                    
                                WHERE ID=#url.id#
            </cfquery>
            <cflocation url = "addproduct.cfm" addtoken="false"> 
    </cfif>
    

</body>
</html>


    
    


