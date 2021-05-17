<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shipping details</title>   
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/profile.css">   
    <link rel="stylesheet" type="text/css" href="../css/button.css">    
    <link rel="stylesheet" href="../css/signedInUser.css">
    <link rel="stylesheet" href="../css/table.css">
  
</head>
    <body>
    <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <a href="./home.php"><img src="../img/cart.png" height="100" width="100"></a>
            </div>
            <div class="searchBar">
                <div></div>
                <form action="search.php" method="post">
                    <div class="searchBarRow" style="text-align: center;align-items: center;">
                        <div style="text-align: center;">
                            <input style="height:40px;" type="text" name="search" size="150">
                        </div>
                        <div>
                            <button type="submit" class="searchButton"><img src="../img/search.png" height="30" width="30"></button>
                        </div>
                    </div>
                </form>
                <div></div>
            </div>
            <div id="logOutButtonContainer" style="align-items: center;align-content: center; text-align: center;padding-top: 35px;display:none;">
                <span style="font-weight: bolder;font-size: 20px;">Welcome Back,</span><br>
                <span id="username">[username]</span><br><br>
                <a href="./customerAccount.jsp"><button>My Account</button></a>&nbsp;&nbsp;
                <form action="../php/logout.php"><button type="submit">SignOut</button></form>
            </div>
            <div id="loginButtonContainer" class="searchBar" style="align-items: center;align-content: center; text-align: center;padding-top: 35px;">
                <div>
                    <a href="../login.jsp"><button>Login</button></a>
                </div>
                <div>
                    <a href="../registration.jsp"><button>SignUp</button></a>
                </div>
            </div>
        </div>
        
        <center>
        <div class="main">
            <h1>Shipping details</h1> 
            <br><br>
			
			
		    <table id="Shipping" border=1 >
 	
		    <tr>
				<th>Order No</th>
				<th>Item No.</th> 
				<th>Quantitty</th> 
				<th>Delivery location</th> 
				<th>Delivery person </th> 
				<th>Vehical No.</th> 
            </tr>

			</table>		
             </center>   
        </div>
        <div class="bottomBar">
            <div style="text-align: center;justify-content: center;align-content: center;align-items: center;">
                <br><br>
               
                <a href="faq.jsp">FAQ</a>&nbsp;|&nbsp;
                <a href="contact.jsp">Contact Us</a>&nbsp;|&nbsp;
                <a href="privacy.jsp">Privacy Policy</a>&nbsp;|&nbsp;
                <a href="help.jsp">Help</a>&nbsp;|&nbsp;
                <a href="about.jsp">About</a>
                <div>
                    <br>
                    <img src="../img/facebook.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../img/twitter.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../img/insta.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                   
                </div>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        var idr = '<?php echo isset($_SESSION['username']); ?>'; 
        var uname = '<?php echo $_SESSION['username']; ?>'; 
        console.log(idr);
         if(idr==1){
             document.getElementById("logOutButtonContainer").style.display="block";
             document.getElementById("username").innerHTML=uname;
             document.getElementById("loginButtonContainer").style.display="none";
         }
    </script>
</html>