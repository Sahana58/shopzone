<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin-Shop Zone</title>
    <!-- CSS -->
    <link rel="stylesheet" href="style.css">
</head>
    <body> 

        <!--- This query used for retriving the data from product table  --->
            <cfset productlist=  application.product  .listAll ()>

        <h1 style="text-align: center;">Product List</h><br><br>

        <!--- <cfif val(#url.isDeleted#)>Record has been deleted successfully.</cfif> --->
       
        <table border="2px" class="pro_table">
            <tr>
                <th>Product Name</th>
                <th>Product Image</th>
                <!--- <th>Product Description</th> --->
                <th>Product Price</th>
                <th colspan="2">Action</th>
            </tr>
            <cfoutput query="productlist">
                <tr>
                    <td>#productlist.product_name#</td>
                    <td><img src="img/#productlist.product_image#" alt="" style="width:100%"></td>
                    <!--- <td>#productlist.product_description#</td> --->
                    <td>#productlist.product_price#</td>
                    <td><a href="editproduct.cfm?id=#productlist.ID#">Edit</a></td><!--- For Updating Student Record Based on the ID --->
                    <td><a href="Delete.cfm?id=#productlist.ID#">Delete</a></td><!--- For Deleting Student Record Based on the ID --->
                </tr>
            </cfoutput>
        </table><br><br>

        <a href="addproduct.cfm">Add Page</a>
        <a href="logout.cfm">Logout</a>


    </body>   
</html>

