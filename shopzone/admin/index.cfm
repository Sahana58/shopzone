<cfinclude template="header.cfm">
<body> 

    <div class="loginform">
        <h3>Login Form</h3>
        <form  name="loginform" action="" method="post" onsubmit="return validateForm()">

            <label for="username">User Name</label>
            <input type="text" name="username" id="username"><br><br>

            <label for="password">Password</label>
            <input type="password" name="password" id="password"><br><br>
            
            <input type="submit" name="submit" value="Login"><br><br>
            <a href="">Forgot Password?</a>

        </form><br><br>

    </div>

         <cfif isDefined('form.submit')>
            <cfquery name="qLoginChk" datasource="#application.DSN#">
                select * from login where username='#form.username#' and password='#form.password#'
            </cfquery>
             <cfif val(qLoginChk.recordCount)>
                <cfset session.login ="#qLoginChk.id#">
                <!--- <cfdump var="#session#"><cfabort> --->
                <cflocation url = "product.cfm" addtoken="false">
            <cfelse>
                <cflocation url = "error.cfm" addtoken="false">
            </cfif>
        </cfif> 

        <cfinclude template="footer.cfm">

</body>
</html>