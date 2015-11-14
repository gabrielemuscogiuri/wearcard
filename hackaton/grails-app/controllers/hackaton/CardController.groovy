package hackaton

class CardController {

    def index() {}

    def createCard() {

        BusinessCard card = params
        card.owner = session.user

        if(card.save(failOnError: true, flush: true)) {
            redirect(action: "index")
        }
        else {
            redirect(action: "index")
        }

    }

}
