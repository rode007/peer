<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Users</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<%--   <link rel="Stylesheet" href="../../content/css/bootstrap.css">--%>
<%--   <script src="../../content/js/jquery.min.js"" type="text/javascript"></script>--%>
<%--   <script src="../../content/js/bootstrap.min.js" type="text/javascript"></script>--%>
<%--   <script src="../../content/js/jquery.min.js" type="text/javascript"></script>--%>





</head>
<body>

    <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#"><img src="<%=basePath%>/content/images/Peer-logo5.jpg" width="180" height="50" class="rounded float-left" alt="..."/></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#"><h6>Home</h6></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="Evaluations" href="#"><h6>Evaluations</h6></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="Results" href="#"><h6>Results</h6></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="Organizations" href="#"><h6>Organizations</h6></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" id="People" href="<%=basePath%>users/userlists"><h6>People</h6><span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>

    <br>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light">
            <li class="breadcrumb-item active" aria-current="page">People</li>
        </ol>
    </nav>

    <form action="<%=basePath%>users/findUsersByWhere" method="post">
        <div class="btn-toolbar justify-content-between" role="toolbar" aria-label="Toolbar with button groups">
            <div class="btn-group" role="group" aria-label="First group">
                <button type="button" class="btn btn-info" onclick="insert()">Add</button>
            </div>
            <div class="input-group">
                <input class="form-control mr-sm-1" id="search" name="name" value="${users.name}" type="search" placeholder="name" aria-label="Search">
                <button type="button" class="btn btn-outline-info" onclick="searchs()">Search</button>
            </div>
        </div>

    <br>

    <table class="table">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Age</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
            </tr>
        </thead>
        <tbody>

        <c:forEach items="${pageBean.list}" var="p" varStatus="s">
            <tr>
                <th scope="row">${p.name}</th>
                <td>${p.age}</td>
                <td>@${p.phone}</td>
                <td>@${p.email}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <jsp:include page="../../content/page/page.jsp"/>

</form>
</div>

<script type="text/javascript">
    searchs = function(){
        document.forms[0].action="<%=basePath%>users/findUsersByWhere";
        document.forms[0].submit();
    }
</script>

</body>
</html>