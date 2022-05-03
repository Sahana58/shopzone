<cfinclude template="header.cfm">
<body>
    <div>
        <u><h1>Add Products</h1></u>
        
    </div>
    <hr>
    <div  class="productform">
        <form name="product_form" method="post" enctype="multipart/form-data">
            <label for="product_name">Product Name</label><br><br>
            <input type="text" name="product_name" id="product_name" ><br><br>

            <label for="product_image">Product Image</label><br><br>
            <input type="file" name="product_image" id="product_image"><br><br>
            
            <label for="">Product Description</label>
           <textarea name="product_description" rows="10" cols="30"></textarea><br><br>

           <label for="product_price">Product Price</label><br><br>
            <input type="text" name="product_price" id="product_price" ><br><br>

            <input type="submit" name="submit" value="Add">

        </form>
    </div>

    <cfif isDefined('form.submit')>
        <!--- <cfdump var="#form#"><cfabort> --->
       <cfset productAdd=application.product.add(form)>
        <cflocation url = "viewproduct.cfm" addtoken="false"> 
    </cfif>

</body>
</html>