package hackaton

class DashboardController {

    def index() {
        List<Handshake> handshakes = Handshake.findAllByUser(session.user)

        handshakes.reverse(true)
        List<Handshake> lastHandshakes = handshakes.size() > 4 ? handshakes.subList(0,4) : handshakes

        List<Handshake> favouritesHandshakes = new LinkedList<>()

        handshakes.each {
            if(it.favourite)
                favouritesHandshakes << it
        }

        [handshakes: handshakes, lastHandshakes: lastHandshakes, favouritesHandshakes:favouritesHandshakes]
    }

    def addToFavourites() {
        Handshake handshake = Handshake.findById(params.handshake)
        handshake.favourite = true
        handshake.save(flush: true, failOnError: true)
        redirect(controller: "dashboard", action: "index")
    }

    def deleteHandshake() {
        Handshake handshake = Handshake.findById(params.handshake)
        handshake.delete(flush: true)
        redirect(controller: "dashboard", action: "index")
    }
}
