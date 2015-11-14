<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 14:23
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Registration</title>
</head>

<body>

<div id="login_container">
    <div id="register">
        <div id="register_user">
            <g:form controller="register" action="registerUser" method="post" id="loginForm">
                <p>
                    <label for="username" class="label">${message(code: 'login.username.label', default: 'Username')}</label>
                    <g:textField name="username" />
                </p>
                <p>
                    <label for='password' class="label">${message(code: 'login.password.label', default: 'Password')}</label>
                    <g:passwordField name="password" />
                </p>

                <div class="ctaLogin">
                    <g:submitButton name="submit" class="btn-green btn big" value="Registrati" />
                </div>
            </g:form>
        </div>
    </div>
</div>

</body>
</html>