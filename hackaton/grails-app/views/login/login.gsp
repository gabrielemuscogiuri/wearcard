<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 13:55
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
        <img src="images/logo_white.png"><br>
    </div>
    <div class="user">

        <g:form action="doLogin" class="text-center" >
            <h3>Login</h3>
            <div class="form-group">
                <g:textField name="username"  type="text" class="form-control" id="" placeholder="Username" />
            </div>
            <div class="form-group">
                <g:passwordField name="password" class="form-control" id="" placeholder="Password" />
            </div>

            <g:submitButton name="submit" value="Entra" class="btn btn-primary"/>

        </g:form>
        <g:link class="col-md-12 text-center" controller="register" action="register">Questa notte non hai dormito? Clicca qui</g:link>

    </div>
    </div>
</body>
</html>