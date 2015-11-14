package hackaton

class CardController {

    def index() {}

    def createCard() {
        BusinessCard card = params

        if(card.save(failOnError: true, flush: true)) {

        }
        else {

        }

    }
}
