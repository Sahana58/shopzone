<cfinclude template="header.cfm">

<body> 
    <div>
        <marquee><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, id ut nulla delectus dignissimos suscipit commodi. Debitis, soluta corporis? Necessitatibus culpa reiciendis provident modi quisquam ea quam veniam doloremque quibusdam?</p></marquee>
    </div>

    <!--- <div class="banner-image">
        <div class=image1>
            <img src="img/headphone.jpg" alt="">
        </div>
        <div class=image2>
            <img src="img/shoe.jpg" alt="">
        </div>
        <div class=image3>
            <img src="img/phone.jpg" alt="">
        </div>
    </div> --->

    <div class="body-content">
        <h1>DEAL OF THE DAY</h1>
        <!--- <cfloop>
            <cfset productlist= application.product.listAll ()>            
            <div class="row">
                <cfoutput query="productlist">
                    <div class="card">
                        <a href="productdetails.cfm?id=#productlist.id#" target="_blank"><img src="../admin/uploads/#productlist.product_image#"  alt="" width="250px" height="250px"></a>
                        <div class="container">
                            <h2>#productlist.product_name#</h2>
                            <h4>#productlist.product_price#</h4>
                        </div>
                    </div>
                </cfoutput>
            </div>
        </cfloop>   --->

        <cfloop>
            <cfset productlist= application.product.listAll ()> 
        <div class="flex-container">
          
                <cfoutput query="productlist">
                <a href="productdetails.cfm?id=#productlist.id#" target="_blank">
                    <img src="../admin/uploads/#productlist.product_image#"  alt=""  width="250px" height="250px">
                </a>
              
                <h2>#productlist.product_name#</h2>
                <h4>#productlist.product_price#</h4>
             
           
        </cfoutput>
        </div>
    </cfloop>
        
    </div> 

    <cfinclude template="footer.cfm">
</body>
</html>