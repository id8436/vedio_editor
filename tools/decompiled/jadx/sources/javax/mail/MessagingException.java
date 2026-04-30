package javax.mail;

/* JADX INFO: loaded from: classes3.dex */
public class MessagingException extends Exception {
    private static final long serialVersionUID = -7569192289819959253L;
    private Exception next;

    public MessagingException() {
        initCause(null);
    }

    public MessagingException(String str) {
        super(str);
        initCause(null);
    }

    public MessagingException(String str, Exception exc) {
        super(str);
        this.next = exc;
        initCause(null);
    }

    public synchronized Exception getNextException() {
        return this.next;
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        return this.next;
    }

    public synchronized boolean setNextException(Exception exc) {
        boolean z;
        Exception exc2 = this;
        while ((exc2 instanceof MessagingException) && ((MessagingException) exc2).next != null) {
            exc2 = ((MessagingException) exc2).next;
        }
        if (exc2 instanceof MessagingException) {
            ((MessagingException) exc2).next = exc;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Throwable
    public synchronized String toString() {
        String string;
        string = super.toString();
        Exception exc = this.next;
        if (exc != null) {
            if (string == null) {
                string = "";
            }
            StringBuffer stringBuffer = new StringBuffer(string);
            Exception exc2 = exc;
            while (exc2 != null) {
                stringBuffer.append(";\n  nested exception is:\n\t");
                stringBuffer.append(exc2.toString());
                if (exc2 instanceof MessagingException) {
                    exc2 = ((MessagingException) exc2).next;
                } else {
                    exc2 = null;
                }
            }
            string = stringBuffer.toString();
        }
        return string;
    }
}
