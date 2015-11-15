<%--
  Created by IntelliJ IDEA.
  User: michele
  Date: 14/11/15
  Time: 20:48
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:render template="/layouts/head"></g:render>
    <title>Create Card</title>
</head>

<body id="card">
<g:render template="/layouts/navbar"></g:render>
<g:if test="${businessCard}">
    <div class="col-md-12 card-personale">
        <g:link action="deleteCard" >  <i class="fa fa-trash-o" data-toggle="tooltip" data-placement="left" title="Elimina biglietto da visita"></i></g:link>
        <div class="col-md-12 box-user">

            <div class="col-md-4 photo-user" style="background-image: url('${businessCard.image}')" ></div>
            <div class="col-md-8 info-user">
                <br class="col-md-12">
                    <span class="name-user">${businessCard.name} ${businessCard.surname}</span>
                    <br>
                    <span class="ruolo-user">${businessCard.role} @<em>${businessCard.company} </em></span>
                    <p class="bio-user">
                        <hr>
                        <p class="lead"><strong>Bio:</strong> ${businessCard.bio}</p>
                    </p>
                    <br><br>
                    <span class="email-user"><i class="fa fa-envelope-o"></i>  ${businessCard.email}</span>
                    <br><br>
                    <span class="number-user"><i class="fa fa-phone"></i>  ${businessCard.phoneNumber}</span>
                    <br><br>
                    <span class="linkedin-user"><i class="fa fa-linkedin"></i>  ${businessCard.linkedin}</span>
                    <br><br>
                    <span class="city-user"><i class="fa fa-globe"></i>  ${businessCard.address}</span>
                </div>
            </div>
        </div>
    </div>
</g:if>
<g:else>
    <div class="col-md-8 col-md-offset-2 text-center">
        <h2>Crea il tuo biglietto da visita</h2>
        <hr>
    <g:form action="createCard" enctype="multipart/form-data" >
        <div class="col-md-12 col-lg-12">
            <div class="form-group col-md-6 col-lg-6">
                <label for="name">${message(code: 'login.username.label', default: 'Name')}</label>
                <g:textField class="form-control" name="name" required="required"/>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <label for='surname'>${message(code: 'login.password.label', default: 'Surname')}</label>
                <g:textField class="form-control" name="surname" required="required"/>
            </div>
        </div>

        <div class="col-md-12 col-lg-12">
            <div class="form-group col-md-4 col-lg-4">
                <label for='email'>${message(code: 'login.password.label', default: 'Email')}</label>
                <g:field class="form-control" type="email" name="email" required="required"/>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label for='phoneNumber'>${message(code: 'login.password.label', default: 'Phone Number')}</label>
                <g:textField class="form-control" name="phoneNumber" required="required"/>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label for='address'>${message(code: 'login.password.label', default: 'Address')}</label>
                <g:textField class="form-control" name="address" required="required"/>
            </div>
        </div>

        <div class="col-md-12 col-lg-12">
            <div class="form-group  col-md-6 col-lg-6">
                <label for='company'>${message(code: 'login.password.label', default: 'Company')}</label>
                <g:textField class="form-control" name="company" required="required"/>
            </div>
            <div class="form-group  col-md-6 col-lg-6">
                <label for='role'>${message(code: 'login.password.label', default: 'Role')}</label>
                <g:textField class="form-control" name="role" required="required"/>
            </div>
        </div>

        <div class="col-md-12 col-lg-12">
            <div class="form-group col-md-6 col-lg-6">
                <label for='linkedin'>${message(code: 'login.password.label', default: 'Linkedin')}</label>
                <g:textField class="form-control" name="linkedin" required="required"/>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <label for="imageToProcess"><g:message code="company.logo.label" default="Photo" />:</label>
                <input type="file" class="form-control" name="imageToProcess" required="required"/>
            </div>
        </div>
        <div class="col-md-12 col-lg-12">
            <div class="form-group col-md-12 col-lg-12">
                <label for='bio'>${message(code: 'login.password.label', default: 'Bio')}</label>
                <g:textArea class="form-control" name="bio" required="required"/>
            </div>
        </div>

        <div class="ctaLogin">
            <g:submitButton name="submit" class="btn btn-primary" value="Create" />
        </div>

    </g:form>

    </div>
</g:else>
</body>
</html>