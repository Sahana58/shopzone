<cfinclude template="header.cfm">

<body>
   
    <cfloop>
        <cfset productlist= application.product.listAll (#url.id#)> 
    <div class="responsive">
       
        <cfoutput query="productlist">
            <a href="productdetails.cfm?id=#productlist.id#" target="_blank">
                <img src="../admin/uploads/#productlist.product_image#"  alt=""  width="250px" height="250px">
            </a>
         
            <h2>#productlist.product_name#</h2>
            <h4>#productlist.product_price#</h4>
            <p>#productlist.product_description#</p>
          
      
    </cfoutput>
    </div>
</cfloop>


<cfinclude template="footer.cfm">
</body>

</html>