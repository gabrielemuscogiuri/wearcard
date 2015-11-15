package hackaton

class CardController {

    def index() {

        User loggedUser = User.findById(session.user.id)

        [businessCard: loggedUser.userCard]
    }

    def createCard() {
        BusinessCard card = params
        if(card.save(failOnError: true, flush: true)) {
            User loggedUser = User.findById(session.user.id)
            loggedUser.userCard = card
            loggedUser.save(failOnError: true, flush: true)
            redirect(action: "index")
        }
        else {
            redirect(action: "index")
        }
    }

    def deleteCard() {
        User loggedUser = User.findById(session.user.id)
        loggedUser.userCard = null
        loggedUser.save(failOnError: true, flush: true)
        redirect(action: "index")
    }

}
