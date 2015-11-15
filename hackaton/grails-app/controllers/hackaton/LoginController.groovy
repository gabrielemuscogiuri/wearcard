package hackaton

class LoginController {


    def login = {
    }

    def doLogin = {
        def user = User.findByUsernameAndPassword(params.username, params.password)
        if (user) {
            session.user = user
            redirect(controller: 'dashboard', action: 'index')
        }
        else
            redirect(action:'login')
    }
}
