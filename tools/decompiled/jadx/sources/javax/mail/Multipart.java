package javax.mail;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Vector;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Multipart {
    protected Part parent;
    protected Vector parts = new Vector();
    protected String contentType = "multipart/mixed";

    public abstract void writeTo(OutputStream outputStream) throws MessagingException, IOException;

    protected Multipart() {
    }

    protected void setMultipartDataSource(MultipartDataSource multipartDataSource) throws MessagingException {
        this.contentType = multipartDataSource.getContentType();
        int count = multipartDataSource.getCount();
        for (int i = 0; i < count; i++) {
            addBodyPart(multipartDataSource.getBodyPart(i));
        }
    }

    public String getContentType() {
        return this.contentType;
    }

    public int getCount() throws MessagingException {
        if (this.parts == null) {
            return 0;
        }
        return this.parts.size();
    }

    public BodyPart getBodyPart(int i) throws MessagingException {
        if (this.parts == null) {
            throw new IndexOutOfBoundsException("No such BodyPart");
        }
        return (BodyPart) this.parts.elementAt(i);
    }

    public boolean removeBodyPart(BodyPart bodyPart) throws MessagingException {
        if (this.parts == null) {
            throw new MessagingException("No such body part");
        }
        boolean zRemoveElement = this.parts.removeElement(bodyPart);
        bodyPart.setParent(null);
        return zRemoveElement;
    }

    public void removeBodyPart(int i) throws MessagingException {
        if (this.parts == null) {
            throw new IndexOutOfBoundsException("No such BodyPart");
        }
        BodyPart bodyPart = (BodyPart) this.parts.elementAt(i);
        this.parts.removeElementAt(i);
        bodyPart.setParent(null);
    }

    public synchronized void addBodyPart(BodyPart bodyPart) throws MessagingException {
        if (this.parts == null) {
            this.parts = new Vector();
        }
        this.parts.addElement(bodyPart);
        bodyPart.setParent(this);
    }

    public synchronized void addBodyPart(BodyPart bodyPart, int i) throws MessagingException {
        if (this.parts == null) {
            this.parts = new Vector();
        }
        this.parts.insertElementAt(bodyPart, i);
        bodyPart.setParent(this);
    }

    public Part getParent() {
        return this.parent;
    }

    public void setParent(Part part) {
        this.parent = part;
    }
}
