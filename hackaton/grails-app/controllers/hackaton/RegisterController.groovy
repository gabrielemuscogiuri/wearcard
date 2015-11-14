package hackaton

class RegisterController {




    def register() {

    }

    def registerUser() {
        String username = params.username
        String password = params.password

        User user = new User(username: username, password: password)

        user.save(flush: true)

        redirect(controller: "login", action: "login")
    }
}
