<%-- 
    Document   : salida
    Created on : 17/08/2023, 10:53:21 a. m.
    Author     : ginna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
   
      String respuesta = (String) session.getAttribute("respuesta");
     
      
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="stylesF.css" rel="stylesheet" type="text/css"/>
        <link href="styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="reporte">   
            
        <h1>Sistema de conversion</h1>
        
        <p>  <%=respuesta%> </p>
       <button class="menu-button" onclick="window.location.href = 'index.jsp';">Menu principal</button>
        
        </div>
    </body>
</html>