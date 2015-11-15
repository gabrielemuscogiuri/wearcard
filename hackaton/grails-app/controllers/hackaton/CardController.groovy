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

            def f = request.getFile('imageToProcess')
            String img
            if((img = upload_avatar(f, loggedUser.username)) == null)
                return;
            card.image = img;
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

    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']

    def  upload_avatar(def f,String user) {
        if (!okcontents.contains(f.getContentType())) {
            return ""
        }
        def destination = "web-app/images/avatar";
        File dir = new File(destination)
        dir.mkdirs()
        f.transferTo(new File(dir, f.getOriginalFilename()))
        File file = new File("web-app/images/avatar/"+f.fileItem.getName())
        String ext = "";
        int i = file.getName().lastIndexOf('.');
        if (i > 0) {
            ext = file.getName().substring(i+1);
        }
        File newFile = new File("web-app/images/avatar/"+user+"."+ext);
        file.renameTo(newFile)
        return user+"."+ext;
    }

}
