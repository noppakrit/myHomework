<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.noppakrit.myhomework.controller.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Apple</title>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" 
              href="<%= request.getContextPath() %>/css/bootstrap.css" />
        <link rel="stylesheet/less" type="text/css" 
              href="<%= request.getContextPath() %>/index.less" />
        <script src="<%= request.getContextPath() %>/js/less.js"></script>
    </head>
    <body>
        <div class="container">
            <table class="table">
                <tr><th>Name</th><th>Description</th></tr>
                        <%
                        List<Zone> list = (List<Zone>)request.getAttribute("data");
                        for (int i = 0; i < list.size(); i++) {
                                Zone z = list.get(i);
                                out.println("<tr>" +

                                        "<td>" + z.name   + "</td>" +
                                        "<td>" + z.description + "</td>" +

                                "</tr>");
                        }
                        %>
            </table>
        </div>

        <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    </body>
</html>