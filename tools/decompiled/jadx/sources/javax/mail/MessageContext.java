package javax.mail;

/* JADX INFO: loaded from: classes3.dex */
public class MessageContext {
    private Part part;

    public MessageContext(Part part) {
        this.part = part;
    }

    public Part getPart() {
        return this.part;
    }

    public Message getMessage() {
        try {
            return getMessage(this.part);
        } catch (MessagingException e2) {
            return null;
        }
    }

    private static Message getMessage(Part part) throws MessagingException {
        Part parent = part;
        while (parent != null) {
            if (parent instanceof Message) {
                return (Message) parent;
            }
            Multipart parent2 = ((BodyPart) parent).getParent();
            if (parent2 == null) {
                return null;
            }
            parent = parent2.getParent();
        }
        return null;
    }

    public Session getSession() {
        Message message = getMessage();
        if (message != null) {
            return message.session;
        }
        return null;
    }
}
