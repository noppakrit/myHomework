<%-- 
    Document   : africa
    Created on : Jul 24, 2015, 2:00:40 PM
    Author     : noppakrit.t
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,com.noppakrit.myhomework.controller.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=x-windows-874">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>World Cup 2018 - Africa</title>
        <link rel="shortcut icon" type="image/jpg" href="img/world-cup-russia_1400661248.jpg" />

        <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/dist/css/bootstrap.min.css" />
        <script src="<%=request.getContextPath()%>/bootstrap/dist/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/dist/js/boo bvvvvvvvvvvvvvtstrap.min.js"></script>


        <style>
            body {
                background-image: url("<%=request.getContextPath()%>/img/bg.jpg");
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                margin-bottom: 100px;
            }

        </style>

    </head>
    <body>

        <div class="container hidden-lg">
            <div class="dropdown">
                <button class="btn btn-danger dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="width: 100%; ">Home
                    <span class="caret"></span></button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="menu1" style="width: 100%; background: rgba(255,255,255,0.8)">
                    <li role="presentation" style="text-align: center"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/africa">africa</a></li>
                    <li role="presentation" style="text-align: center"><a role="menuitem" tabindex="-1" href="#">Asia</a></li>
                    <li role="presentation" style="text-align: center"><a role="menuitem" tabindex="-1" href="#">Europe</a></li>
                    <li role="presentation" style="text-align: center"><a role="menuitem" tabindex="-1" href="#">North, Central America and Caribbean</a></li>
                    <li role="presentation" style="text-align: center"><a role="menuitem" tabindex="-1" href="#">South America</a></li> 
                </ul>
            </div>
        </div>


        <div class="container hidden-sm hidden-xs hidden-md">
            <nav class="navbar navbar-inverse" style="background: rgba(255,255,255,0.92)" >
                <div class="container-fluid">                
                    <div class="navbar-header ">
                        <a class="navbar-brand" href="<%=request.getContextPath()%>/">World Cup 2018</a>
                    </div>
                    <div>
                        <ul class="nav navbar-nav">
                            <li><a href="<%=request.getContextPath()%>/">Home</a></li>
                            <li class="active"><a href="<%=request.getContextPath()%>/Africa">Africa</a></li>
                            <li><a href="<%=request.getContextPath()%>/views/Traning.exe">Asia</a></li> 
                            <li><a href="#">Europe</a></li> 
                            <li><a href="#">North, Central America and Caribbean</a></li> 
                            <li><a href="#">Oceania</a></li> 
                            <li><a href="#">South America</a></li> 
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <div class="container">

            <%
                    
                 String name = null;
                 String description = null;
                 List<Zone> list = (List<Zone>)request.getAttribute("data2");               
                 for (int i = 0; i < list.size(); i++) {
                         Zone z = list.get(i);                          
                         name = z.name;
                         description = z.description;
                 } 
            %>

            <div class="row" >
                <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">                    
                    <div class="panel" style="background: rgba(255,255,255,0.9)">
                        <div class="panel-body" >
                            <img src="<% out.print("img/"+ name.toLowerCase() +".jpg"); %>" style="width: 100%" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-10 hidden-xs">
                    <div class="panel" style="background: rgba(255,255,255,0.9)"> 
                        <div class="panel-body" >
                            <%
                             out.println(description); 
                            %>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" >
                <div class="col-xs-12 hidden-lg hidden-md hidden-sm" >                    
                    <div class="panel" style="background: rgba(255,255,255,0.9)" align ="center">
                        <div class="panel-body" >
                            <img src="img/africa.jpg" style="width: 50%" />
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 hidden-lg hidden-md hidden-sm">
                    <div class="panel" style="background: rgba(255,255,255,0.9)"> 
                        <div class="panel-body" >
                            The draw for the 2018 FIFA World Cup&trade; Preliminary Competition for the African Zone took place on 25 July in Saint Petersburg, Russia. The results of the draw will be available shortly.
                        </div>
                    </div>
                </div>
            </div>


        </div>


        <div class="container " style="padding-top: 10px" >
            <div class="panel-primary" style="background: rgba(255,255,255,0.9)">
                <div class="panel-heading">
                    <%
                    List<Country> countries = (List<Country>)request.getAttribute("data3");           
%>
                    Teams <% out.print("(" + countries.size() +")"); %>
                </div>

                <div class="panel-body" style="max-height: 490px; overflow-y: scroll;">

                    <table class="table">
                        <!--                                <tr>
                                                            <td style="border: none">
                                                                <div class="btn btn-default" style="width: 100%; text-align: left; border: 0px; " >
                                                                    <img src="img/alg.png" style="border: 1px solid gainsboro; width: 35px; margin-right: 15px">
                                                                    <text>Algeria</text>
                                                                </div>
                                                            </td>
                                                            <td style="border: none">
                                                                <div class="btn btn-default" style="width: 100%; text-align: left; border: 0px" >
                                                                    <img src="img/alg.png" style="border: 1px solid gainsboro; width: 35px; margin-right: 15px">
                                                                    <text>Algeria</text>
                                                                </div>
                                                            </td>
                                                            <td style="border: none">
                                                                <div class="btn btn-default" style="width: 100%; text-align: left; border: 0px" >
                                                                    <img src="img/alg.png" style="border: 1px solid gainsboro; width: 35px; margin-right: 15px">
                                                                    <text>Algeria</text>
                                                                </div>
                                                            </td>
                                                            <td style="border: none">
                                                                <div class="btn btn-default" style="width: 100%; text-align: left; border: 0px" >
                                                                    <img src="img/alg.png" style="border: 1px solid gainsboro; width: 35px; margin-right: 15px">
                                                                    <text>Algeria</text>
                                                                </div>
                                                            </td>
                                                        </tr>-->


                        <%     
                            out.println("\t<tr>");
                                                     
                            for (int i = 0; i < countries.size(); i++) {
                                    Country c       = countries.get(i);                                    
                                    out.println("\t\t\t\t\t<td style=\"border: none\">");
                                    out.println("\t\t\t\t\t\t<a href=\"#\">");
                                    out.println("\t\t\t\t\t\t\t<img src=\"img/" + c.flag_name + "\"style=\"border: 1px solid gainsboro; width: 35px; margin-right: 15px\">");
                                    out.println("\t\t\t\t\t\t\t<text>" + c.name + "</text>");
                                    out.println("\t\t\t\t\t\t</a>");
                                    out.println("\t\t\t\t\t</td>");


                                    if((i+1)%3 == 0 || (i+1) == countries.size() ) {
                                        out.println("\t\t\t\t</tr>");

                                        if(i + 1 < countries.size()) {
                                            out.println("\t\t\t\t<tr>");
                                        }
                                    } 

                            } 
                        %>
                    </table>
                </div>
            </div>
        </div>


        <div id="footer" class="navbar navbar-fixed-bottom" style="z-index: 100; background-color: gray;" >

            <div class="text-muted credit navbar navbar-fixed-bottom " align="center"   style="color: white">                        
                <br />
                &copy; Copyright 2015 | Designed By Noppakrit Thanasinrujiphong
            </div>

        </div>
    </body>
</html>
