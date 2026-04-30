package javax.mail;

import java.util.Vector;
import javax.mail.event.ConnectionEvent;
import javax.mail.event.ConnectionListener;
import javax.mail.event.MailEvent;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Service {
    protected boolean debug;
    private EventQueue q;
    protected Session session;
    protected URLName url;
    private boolean connected = false;
    private Vector connectionListeners = null;
    private Object qLock = new Object();

    protected Service(Session session, URLName uRLName) {
        this.url = null;
        this.debug = false;
        this.session = session;
        this.url = uRLName;
        this.debug = session.getDebug();
    }

    public void connect() throws MessagingException {
        connect(null, null, null);
    }

    public void connect(String str, String str2, String str3) throws MessagingException {
        connect(str, -1, str2, str3);
    }

    public void connect(String str, String str2) throws MessagingException {
        connect(null, str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0170  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void connect(java.lang.String r16, int r17, java.lang.String r18, java.lang.String r19) throws javax.mail.MessagingException {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.Service.connect(java.lang.String, int, java.lang.String, java.lang.String):void");
    }

    protected boolean protocolConnect(String str, int i, String str2, String str3) throws MessagingException {
        return false;
    }

    public boolean isConnected() {
        return this.connected;
    }

    protected void setConnected(boolean z) {
        this.connected = z;
    }

    public synchronized void close() throws MessagingException {
        setConnected(false);
        notifyConnectionListeners(3);
    }

    public URLName getURLName() {
        return (this.url == null || (this.url.getPassword() == null && this.url.getFile() == null)) ? this.url : new URLName(this.url.getProtocol(), this.url.getHost(), this.url.getPort(), null, this.url.getUsername(), null);
    }

    protected void setURLName(URLName uRLName) {
        this.url = uRLName;
    }

    public synchronized void addConnectionListener(ConnectionListener connectionListener) {
        if (this.connectionListeners == null) {
            this.connectionListeners = new Vector();
        }
        this.connectionListeners.addElement(connectionListener);
    }

    public synchronized void removeConnectionListener(ConnectionListener connectionListener) {
        if (this.connectionListeners != null) {
            this.connectionListeners.removeElement(connectionListener);
        }
    }

    protected synchronized void notifyConnectionListeners(int i) {
        if (this.connectionListeners != null) {
            queueEvent(new ConnectionEvent(this, i), this.connectionListeners);
        }
        if (i == 3) {
            terminateQueue();
        }
    }

    public String toString() {
        URLName uRLName = getURLName();
        return uRLName != null ? uRLName.toString() : super.toString();
    }

    protected void queueEvent(MailEvent mailEvent, Vector vector) {
        synchronized (this.qLock) {
            if (this.q == null) {
                this.q = new EventQueue();
            }
        }
        this.q.enqueue(mailEvent, (Vector) vector.clone());
    }

    class TerminatorEvent extends MailEvent {
        private static final long serialVersionUID = 5542172141759168416L;

        TerminatorEvent() {
            super(new Object());
        }

        @Override // javax.mail.event.MailEvent
        public void dispatch(Object obj) {
            Thread.currentThread().interrupt();
        }
    }

    private void terminateQueue() {
        synchronized (this.qLock) {
            if (this.q != null) {
                Vector vector = new Vector();
                vector.setSize(1);
                this.q.enqueue(new TerminatorEvent(), vector);
                this.q = null;
            }
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        terminateQueue();
    }
}
