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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>World Cup 2018 - Home</title>
        <link rel="shortcut icon" type="image/jpg" href="img/world-cup-russia_1400661248.jpg" />

        <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/dist/css/bootstrap.min.css" />
        <script src="<%=request.getContextPath()%>/bootstrap/dist/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/dist/js/bootstrap.min.js"></script>


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
                            <li class="active"><a href="<%=request.getContextPath()%>/">Home</a></li>
                            <li><a href="<%=request.getContextPath()%>/africa">Africa</a></li>
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

        <div class="container hidden-sm hidden-xs hidden-md" >
            <div id="news" class="carousel slide" data-ride="carousel" >
                <ol class="carousel-indicators">
                    <li data-target="#news" data-slide-to="0" class="active"></li>
                    <li data-target="#news" data-slide-to="1"></li>
                    <li data-target="#news" data-slide-to="2"></li>
                    <li data-target="#news" data-slide-to="3"></li>
                    <li data-target="#news" data-slide-to="4"></li>
                    <li data-target="#news" data-slide-to="5"></li>
                    <li data-target="#news" data-slide-to="6"></li>
                    <li data-target="#news" data-slide-to="7"></li>

                </ol>

                <div class="carousel-inner" role="listbox" align="center">
                    <div class="item active" >
                        <img src="img/2665400_full-lnd.jpg" style="width: 100%" />                     
                    </div>
                    <div class="item" >
                        <img src="img/2664291_big-lnd.jpg" style="width: 100%" />
                    </div>
                    <div class="item" >
                        <img src="img/2664290_big-lnd.jpg" style="width: 100%"  />
                    </div>
                    <div class="item" >
                        <img src="img/2664287_big-lnd.jpg" style="width: 100%" />
                    </div>
                    <div class="item" >
                        <img src="img/2664286_big-lnd.jpg" style="width: 100%" />
                    </div>
                    <div class="item" >
                        <img src="img/2664277_big-lnd.jpg" style="width: 100%" />
                    </div>
                    <div class="item" >
                        <img src="img/2664274_big-lnd.jpg" style="width: 100%" />
                    </div>
                    <div class="item" >
                        <img src="img/2664273_big-lnd.jpg" style="width: 100%" />
                    </div>
                </div>

                <a class="left carousel-control" href="#news" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>

                </a>
                <a class="right carousel-control" href="#news" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>  
            </div>
        </div>



        <div class="container" style="padding-top: 20px;">
            <div class="row">
                <div class="col col-lg-3 col-md-4 col-sm-6" >
                    <div class="panel panel-default" style="background: rgba(255,255,255,0)">
                        <div class="panel-heading" style="background: rgba(255,255,255,0.9); font-weight: bold;font-size: 20px; color: #a83c3a">World Cup dream begins for Preliminary Draw volunteers</div>
                        <div class="panel-body" style="font-weight: bold ;color: black;background: rgba(255,255,255,0.6);" align="center">
                            <img src="img/2665400_full-lnd.jpg" style="width: 100%"/>     
                            <br /><br />
                            <div align="left">The dream of taking part in the 2018 FIFA World Cup? has just started for 300 volunteers who will work at the Preliminary Draw in Saint Petersburg.</div>
                        </div>                
                    </div>
                </div>
                <div class="col col-lg-3 col-md-4 col-sm-6">
                    <div class="panel panel-default" style="background: rgba(255,255,255,0)">
                        <div class="panel-heading" style="background: rgba(255,255,255,0.9); font-weight: bold;font-size: 20px; color: #a83c3a">Welcome2018.com to inform fans, tourists on Russia 2018 host cities</div>
                        <div class="panel-body" style="font-weight: bold ;color: black;background: rgba(255,255,255,0.6);" align="center">
                            <img src="img/2665335_full-lnd.jpg" style="width: 100%"/>    
                            <br /><br />
                            <div align="left">The tourist information website for the 2018 FIFA World Cup RussiaTM - welcome2018.com - is officially up and running.</div>
                        </div>                
                    </div>
                </div>
                <div class="col col-lg-3 col-md-4 col-sm-6">
                    <div class="panel panel-default" style="background: rgba(255,255,255,0)">
                        <div class="panel-heading" style="background: rgba(255,255,255,0.9); font-weight: bold;font-size: 20px; color: #a83c3a">Vodianova: This is a great honour</div>
                        <div class="panel-body" style="font-weight: bold ;color: black;background: rgba(255,255,255,0.6);" align="center">
                            <img src="img/2664263_full-lnd.jpg" style="width: 100%"/>  
                            <br /><br />
                            <div align="left">On 25 July, model and philanthropist Natalia Vodianova will take the stage at the Konstantin Palace in Saint Petersburg to present the Preliminary Draw for the 2018 FIFA World Cup Russia?.</div>
                        </div>                
                    </div>
                </div>
                <div class="col col-lg-3 col-md-4 col-sm-6">
                    <div class="panel panel-default" style="background: rgba(255,255,255,0)">
                        <div class="panel-heading" style="background: rgba(255,255,255,0.9); font-weight: bold;font-size: 20px; color: #a83c3a">Bangladesh on the up under Dutch guidance</div>
                        <div class="panel-body" style="font-weight: bold ;color: black;background: rgba(255,255,255,0.6);" align="center">
                            <img src="img/2649576_full-lnd.jpg" style="width: 100%"/>
                            <br /><br />
                            <div align="left">Danger is not a word usually associated with coaching. But it is something which Bangladesh manager Lodewijk de Kruif had experienced during his first tenure in charge of the South Asian team two years ago.</div>
                        </div>                
                    </div>
                </div>
            </div>
        </div>





        <div id="footer" class="navbar navbar-fixed-bottom" style="z-index: 100; background-color: gray;" >
            <div class="text-muted credit navbar navbar-fixed-bottom " align="center"  style="color: white">                    
                &copy; Copyright 2015 | Designed By Noppakrit Thanasinrujiphong
            </div>
        </div>
    </body>
</html>
