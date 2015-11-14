<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 13:55
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>

<body>
    <div id="login_container">
        <div id="login">
            <div id="login_user">
                <g:form action="doLogin" >
                    <p>
                        <label for="username" class="label">${message(code: 'login.username.label', default: 'Username')}</label>
                        <g:textField name="username" />
                    </p>
                    <p>
                        <label for='password' class="label">${message(code: 'login.password.label', default: 'Password')}</label>
                        <g:passwordField name="password" />
                    </p>

                    <div class="ctaLogin">
                        <g:submitButton name="submit" class="btn-green btn big" value="Entra" />
                    </div>
                </g:form>
            </div>
        </div>
        <div>
            <p>
                Già registrato? clicca <g:link controller="register" action="register">qui</g:link>
            </p>
        </div>
    </div>
</body>
</html>