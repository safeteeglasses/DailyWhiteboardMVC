<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><c:out value="${pageTitle}"/> - WebApplication.Web</title>

        <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.7/css/bootstrap.min.css" />
        <c:url var="cssUrl" value="/css/site.css"/>
        <link rel="stylesheet" href="${cssUrl}" />
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                	<c:if test="${empty appCurrentUser}">
                	<c:url var="homeUrl" value="login"/>
                    <li><a href="${homeUrl}">Home</a></li>
                    </c:if>
                    <c:if test="${not empty appCurrentUser}">
                    <c:url var="homeUrl" value="homepage"/>
                    <li><a href="${homeUrl}">Home</a></li>
                    </c:if>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${empty appCurrentUser}">
                        <c:url var="loginUrl" value="/login"/>
                        <li><a href="${loginUrl}">Login</a></li>
                    </c:if>
                    <c:if test="${not empty appCurrentUser}">
                        <li><a href="/"><c:out value="${appCurrentUser.username}" /></a></li>
                        <c:url var="logoffUrl" value="/logoff"/>
                        <li>
                            <form action="${logoffUrl}" method="POST" class="navbar-form">
                                <button type="submit" class="btn btn-primary">Log Off</button>
                            </form>
                        </li>
                    </c:if>

                </ul>
            </div>
        </div>
    </nav>

    <div class="container body-content">
    <c:if test="${not empty message}">
        <div class="message alert alert-danger" role="alert">
            <c:out value="${message}"/>
        </div>
    </c:if>
    <h1>GIT GUD</h1>
    <p>I needed a way to work on SpringMVC while simultaneously practicing and honing my whiteboard
       skills for upcoming technical interviews. Making it happen!</p>
       
       <img id="pipboy" src="img/pipboy300.jpg"/>
    
