package hackaton

class LogoutController {

    def logout() {

        session.user = null

        redirect(controller: "login", action: "login")

    }
}
