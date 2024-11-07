<%-- 
    Document   : welcome
    Created on : Nov 7, 2024, 5:29:43 PM
    Author     : mycomp
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet"> 
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script> 
        <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> 
        
        <title>Welcome Page</title>
        
        <script> 
        $(function () { 
            $("#studentInfo").dialog({ 
                autoOpen: false, 
            }); 
            $("#studentLink").click(function () { 
                $("#studentInfo").dialog("open"); 
            }); 
        }); 
        </script> 
        
        <style>
            div.title {
                left: 19%;
                position: relative;
            }
            
            table {
              width: 50%;
              border-collapse: collapse;
              text-align: center;
            }
            
            th {
              border: 3px solid #00008B;
              padding: 15px;
              background-color: lightskyblue;
            }
            
            td {
              border: 3px solid #00008B;
              padding: 15px;
            }
            
            #studentLink {
                color: blue;
                text-decoration: underline;
                cursor: pointer;
            }
            
            #sid {
                color: blue;
            }
        </style>
    </head>
    <body>
    <div class="title">
        <% 
            String userId = request.getParameter("userId");
            
            DecimalFormat format = new DecimalFormat("#.#");
            int dept1[] = {35, 70, 60, 90};
            float passPercentageDept1;
            int totalPassDept1 = 0;
            for (int i = 0; i < dept1.length; i++) {
                if (dept1[i] >= 40) {
                    totalPassDept1 += 1;
                }
            }
            passPercentageDept1 = (float) totalPassDept1 / (float) dept1.length * 100;
            
            int dept2[] = {30};
            float passPercentageDept2;
            int totalPassDept2 = 0;
            for (int i = 0; i < dept2.length; i++) {
                if (dept2[i] >= 40) {
                    totalPassDept2 += 1;
                }
            }
            passPercentageDept2 = (float) totalPassDept2 / (float) dept2.length * 100;
            
            int dept3[] = {32, 70, 20};
            double passPercentageDept3;
            int totalPassDept3 = 0;
            for (int i = 0; i < dept3.length; i++) {
                if (dept3[i] >= 40) {
                    totalPassDept3 += 1;
                }
            }
            passPercentageDept3 = Math.round((float) totalPassDept3 / (float) dept3.length * 100.0 * 100.0) / 100.0;
        %>
        
        <div id="studentInfo" title="Student Details">
            <p>User ID: <%= userId %></p><br>
            <p>Student Name: Hunayn Risatayn</p>
        </div> 
   
        <h1>Welcome <a id="studentLink"><%= userId %></a></h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Department</th>
                    <th>Student ID</th>
                    <th>Marks</th>
                    <th>Pass %</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan="4">Dep 1</td>
                    <td id="sid">S1</td>
                    <td>35</td>
                    <td rowspan="4"><%= format.format(passPercentageDept1) %></td>
                </tr>
                <tr>
                    <td id="sid">S2</td>
                    <td>70</td>
                </tr>
                <tr>
                    <td id="sid">S3</td>
                    <td>60</td>
                </tr>
                <tr>
                    <td id="sid">S4</td>
                    <td>90</td>
                </tr>
                <tr>
                    <td>Dep 2</td>
                    <td id="sid">S5</td>
                    <td>30</td>
                    <td><%= format.format(passPercentageDept2) %></td>
                </tr>
                <tr>
                    <td rowspan="3">Dep 3</td>
                    <td id="sid">S6</td>
                    <td>32</td>
                    <td rowspan="3"><%= passPercentageDept3 %></td>
                </tr>
                <tr>
                    <td id="sid">S7</td>
                    <td>70</td>
                </tr>
                <tr>
                    <td id="sid">S8</td>
                    <td>20</td>
                </tr>
            </tbody>
        </table>

    </div>
    </body>
</html>
