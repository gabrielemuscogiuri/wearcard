package hackaton

class RegisterController {




    def register() {

    }

    def registerUser() {
        String username = params.username
        String password = params.password

        User user = new User(username: username, password: password)

        try {
            if (!user.hasErrors() && user.save(failOnError: true, flush: true)) {
                flash.message = "Registrazione avvenuta con successo"
            } else {
                flash.message = "KO"

            }
        } catch (org.springframework.dao.DataIntegrityViolationException e) {
            flash.message = "Errore nella registrazione"
        } catch (Throwable v) {
            flash.message = "Errore nella registrazione"
        }

        redirect(controller: "login", action: "login")
    }
}
