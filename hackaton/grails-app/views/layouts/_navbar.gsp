<%@ page import="hackaton.User" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link controller="dashboard" action="index" class="navbar-brand" >
                <img src="../images/logo-nav.png">
            </g:link>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

            </ul>

            <ul class="nav navbar-nav navbar-right">
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <i class="fa fa-search"></i>
                </form>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="caret"></span>
                        ${session.user.username}
                    </a>
                    <div id="foto-profilo" style="background: url('../images/avatar/${(hackaton.User.findById(session.user.id)).userCard?.image}');background-size: cover;"></div>
                    <ul class="dropdown-menu">
                        <li><g:link controller="card" action="index">Settings</g:link></li>
                        <li><g:link controller="logout" action="logout">Logout</g:link></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>