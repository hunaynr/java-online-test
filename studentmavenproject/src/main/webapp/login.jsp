<%-- 
    Document   : login
    Created on : Nov 7, 2024, 4:37:03 PM
    Author     : mycomp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
        <script> 
        $("input").prop('required',true);
        </script>
        
        <style>
            div.title {
                left: 19%;
                position: relative;
            }
            
            .col-1 {
                font-weight: bold;
            }
            
            table {
              width: 50%;
              border-collapse: collapse;
            }
            
            td {
              border: 3px solid #00008B;
              padding: 15px;
            }
            
            input[type=text] {
              line-height: 2;
              border: solid brown;
            }
            
            input[type=password] {
              line-height: 2;
              border: solid brown;
            }

            input[type=submit] {
              background-color: #4CAF50;
              color: white;
              padding: 12px 20px;
              border: none;
              border-radius: 4px;
              cursor: pointer;
              left: 44%;
              position: absolute;
            }

            input[type=submit]:hover {
              background-color: #45A049;
            }
        </style>
    </head>
    <body>
        <div class="title">
            <h1>Login Form</h1>
        </div>        
        <form name="loginForm" action="welcome.jsp" method="POST">
            <table border="1">
                <tbody>
                    <tr>                  
                        <td><span class="col-1">User ID</span></td>
                        <td><input type="text" name="userId" size="50" required/></td>
                    </tr>
                    <tr>
                        <td><span class="col-1">Password</span></td>
                        <td><input type="password" name="password" size="50" required/></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <input type="submit" value="Login" name="submit" />
        </form>
    </body>
</html>
