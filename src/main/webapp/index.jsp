<%-- 
    Document   : index.jsp
    Created on : Jul 14, 2015, 3:54:14 PM
    Author     : noppakrit.t
--%>

<%@page contentType="text/html" pageEncoding="x-windows-874"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=x-windows-874">
        <title>JSP Page</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/dist/css/bootstrap.css" />
        <script src="<%=request.getContextPath()%>/bootstrap/dist/js/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/bootstrap/dist/js/bootstrap.js"></script>
        
        
    </head>
    <body>
               
        <nav class="nav navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project Name</a> 
                </div>
                
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                           
                    </ul>
                </div>
            </div>
            
            
            
            
        </nav>
        
        
        
        
        
        
    </body>
</html>
