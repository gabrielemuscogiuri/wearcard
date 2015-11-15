package hackaton

class HandshakeController {

    def index() {
        User loggedUser = User.findById(session.user.id)

        List<Handshake> userHandshakes = Handshake.findAllByUser(loggedUser)

        List<BusinessCard> userHandshakesBusinessCards = new LinkedList<>()

        userHandshakes?.each {
            userHandshakesBusinessCards.add(it.card)
        }

        //card che non hanno handshake con loggedUser
        List<BusinessCard> cards
        if(userHandshakesBusinessCards.size() > 0)
            cards = BusinessCard.findAllByIdNotEqualAndIdNotInList(loggedUser.userCard?.id, userHandshakesBusinessCards?.id)
        else
            cards =  BusinessCard.findAllByIdNotEqual(loggedUser.userCard?.id)

        [cards: cards]
    }

    def addHandshake() {
        User loggedUser = User.findById(session.user.id)
        BusinessCard card = BusinessCard.findById(params.card)

        Handshake handshake = new Handshake(user: loggedUser, card: card)
        handshake.save(failOnError: true, flush: true)
        redirect(controller: "dashboard", action: "index")

    }

}
