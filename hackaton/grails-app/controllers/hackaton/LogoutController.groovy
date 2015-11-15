package hackaton

class LogoutController {

    def logout() {

        session.invalidate()

        redirect(controller: "login", action: "login")

    }
}
