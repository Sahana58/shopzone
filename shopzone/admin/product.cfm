<cfinclude template="header.cfm">
    <style>
        .sidebar {
            margin: 0;
            padding: 0;
            width: 200px;
            background-color: #f1f1f1;
            position: fixed;
            height: 100%;
            overflow: auto;
            }

        .dropbtn {
          background-color: #e8f0fe;
          color: black;
          padding: 16px;
          font-size: 16px;
          border: none;
          cursor: pointer;
        }
        
        .dropdown {
          position: relative;
          display: inline-block;
        }
        
        .dropdown-content {
          display: none;
          position: absolute;
          background-color: #f9f9f9;
          min-width: 160px;
          box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
          z-index: 1;
        }
        
        .dropdown-content a {
          color: black;
          padding: 12px 16px;
          text-decoration: none;
          display: block;
        }
        
        .dropdown-content a:hover {background-color: #f1f1f1}
        
        .dropdown:hover .dropdown-content {
          display: block;
        }
        
        .dropdown:hover .dropbtn {
          /* background-color: #3e8e41; */
        }
        </style>
</head>
<body> 

<div class="sidebar">
    <div class="dropdown">
        <button class="dropbtn">Products</button>
        <div class="dropdown-content">
            <a href="addproduct.cfm">Add Products</a>
            <a href="viewproduct.cfm">View Products</a>
        </div>
      </div><br><br>

    <div class="dropdown">
        <button class="dropbtn">User</button>
        <div class="dropdown-content">
            <a href="">Add User</a>
            <a href="">View User</a>
        </div>
    </div><br><br>

    <div class="dropdown">
      <button class="dropbtn">Orders</button>
      <div class="dropdown-content">
          <a href="">View Oders</a>
      </div>
    </div><br><br>

 <button class="dropbtn"><a href="logout.cfm">Logout</a></button>
</div>      

</body>
</html>