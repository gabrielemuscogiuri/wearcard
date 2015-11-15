<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 14:23
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:render template="/layouts/head"></g:render>
    <title>Login</title>
</head>

<body>

<div class="col-md-12 login-container">
    <div class="logo">
        <img src="../images/logo_white.png"><br>
    </div>
    <div class="user">

        <g:form controller="register" action="registerUser" method="post" id="loginForm" class="text-center">
            <h3>Registrazione</h3>
            <div class="form-group">
                <g:textField name="username" type="text" class="form-control" id="" placeholder="Username"/>
            </div>
            <div class="form-group">
                <g:passwordField name="password" type="password" class="form-control" id="" placeholder="Password"/>
            </div>

            <div class="ctaLogin">
                <g:submitButton name="submit" class="btn btn-primary" value="Registrati"></g:submitButton>

            </div>
        </g:form>
    </div>
</div>
</body>
</html>