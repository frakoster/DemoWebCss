<%-- 
    Document   : logIn
    Created on : Mar 30, 2023, 12:38:28 PM
    Author     : armijof
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"> 
        <title>JSP Page</title>
    </head>
    <body class="body1">
        <jsp:include page="header.jsp"/>
        <div  class="row">
            <div>
                <h2>Login Form</h2>
                <form action="/action_page.php" method="post">
                    <div class="imgcontainer">
                        <img src="img_avatar2.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="container">
                        <label for="uname"><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="uname" required>

                        <label for="psw"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="psw" required>

                        <button type="submit">Login</button>
                        <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" class="cancelbtn">Cancel</button>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </div>
                

            
        </div>

    </body1>
    <jsp:include page="footer.jsp"/>
</html>
