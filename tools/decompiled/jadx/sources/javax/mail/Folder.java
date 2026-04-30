package javax.mail;

import java.util.Vector;
import javax.mail.Flags;
import javax.mail.event.ConnectionEvent;
import javax.mail.event.ConnectionListener;
import javax.mail.event.FolderEvent;
import javax.mail.event.FolderListener;
import javax.mail.event.MailEvent;
import javax.mail.event.MessageChangedEvent;
import javax.mail.event.MessageChangedListener;
import javax.mail.event.MessageCountEvent;
import javax.mail.event.MessageCountListener;
import javax.mail.search.SearchTerm;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Folder {
    public static final int HOLDS_FOLDERS = 2;
    public static final int HOLDS_MESSAGES = 1;
    public static final int READ_ONLY = 1;
    public static final int READ_WRITE = 2;
    private EventQueue q;
    protected Store store;
    protected int mode = -1;
    private volatile Vector connectionListeners = null;
    private volatile Vector folderListeners = null;
    private volatile Vector messageCountListeners = null;
    private volatile Vector messageChangedListeners = null;
    private Object qLock = new Object();

    public abstract void appendMessages(Message[] messageArr) throws MessagingException;

    public abstract void close(boolean z) throws MessagingException;

    public abstract boolean create(int i) throws MessagingException;

    public abstract boolean delete(boolean z) throws MessagingException;

    public abstract boolean exists() throws MessagingException;

    public abstract Message[] expunge() throws MessagingException;

    public abstract Folder getFolder(String str) throws MessagingException;

    public abstract String getFullName();

    public abstract Message getMessage(int i) throws MessagingException;

    public abstract int getMessageCount() throws MessagingException;

    public abstract String getName();

    public abstract Folder getParent() throws MessagingException;

    public abstract Flags getPermanentFlags();

    public abstract char getSeparator() throws MessagingException;

    public abstract int getType() throws MessagingException;

    public abstract boolean hasNewMessages() throws MessagingException;

    public abstract boolean isOpen();

    public abstract Folder[] list(String str) throws MessagingException;

    public abstract void open(int i) throws MessagingException;

    public abstract boolean renameTo(Folder folder) throws MessagingException;

    protected Folder(Store store) {
        this.store = store;
    }

    public URLName getURLName() throws MessagingException {
        URLName uRLName = getStore().getURLName();
        String fullName = getFullName();
        StringBuffer stringBuffer = new StringBuffer();
        getSeparator();
        if (fullName != null) {
            stringBuffer.append(fullName);
        }
        return new URLName(uRLName.getProtocol(), uRLName.getHost(), uRLName.getPort(), stringBuffer.toString(), uRLName.getUsername(), null);
    }

    public Store getStore() {
        return this.store;
    }

    public Folder[] listSubscribed(String str) throws MessagingException {
        return list(str);
    }

    public Folder[] list() throws MessagingException {
        return list("%");
    }

    public Folder[] listSubscribed() throws MessagingException {
        return listSubscribed("%");
    }

    public boolean isSubscribed() {
        return true;
    }

    public void setSubscribed(boolean z) throws MessagingException {
        throw new MethodNotSupportedException();
    }

    public int getMode() {
        if (!isOpen()) {
            throw new IllegalStateException("Folder not open");
        }
        return this.mode;
    }

    public synchronized int getNewMessageCount() throws MessagingException {
        int i;
        if (!isOpen()) {
            i = -1;
        } else {
            int messageCount = getMessageCount();
            i = 0;
            for (int i2 = 1; i2 <= messageCount; i2++) {
                try {
                    if (getMessage(i2).isSet(Flags.Flag.RECENT)) {
                        i++;
                    }
                } catch (MessageRemovedException e2) {
                }
            }
        }
        return i;
    }

    public synchronized int getUnreadMessageCount() throws MessagingException {
        int i;
        if (!isOpen()) {
            i = -1;
        } else {
            int messageCount = getMessageCount();
            i = 0;
            for (int i2 = 1; i2 <= messageCount; i2++) {
                try {
                    if (!getMessage(i2).isSet(Flags.Flag.SEEN)) {
                        i++;
                    }
                } catch (MessageRemovedException e2) {
                }
            }
        }
        return i;
    }

    public synchronized int getDeletedMessageCount() throws MessagingException {
        int i;
        if (!isOpen()) {
            i = -1;
        } else {
            int messageCount = getMessageCount();
            i = 0;
            for (int i2 = 1; i2 <= messageCount; i2++) {
                try {
                    if (getMessage(i2).isSet(Flags.Flag.DELETED)) {
                        i++;
                    }
                } catch (MessageRemovedException e2) {
                }
            }
        }
        return i;
    }

    public synchronized Message[] getMessages(int i, int i2) throws MessagingException {
        Message[] messageArr;
        messageArr = new Message[(i2 - i) + 1];
        for (int i3 = i; i3 <= i2; i3++) {
            messageArr[i3 - i] = getMessage(i3);
        }
        return messageArr;
    }

    public synchronized Message[] getMessages(int[] iArr) throws MessagingException {
        Message[] messageArr;
        int length = iArr.length;
        messageArr = new Message[length];
        for (int i = 0; i < length; i++) {
            messageArr[i] = getMessage(iArr[i]);
        }
        return messageArr;
    }

    public synchronized Message[] getMessages() throws MessagingException {
        Message[] messageArr;
        if (!isOpen()) {
            throw new IllegalStateException("Folder not open");
        }
        int messageCount = getMessageCount();
        messageArr = new Message[messageCount];
        for (int i = 1; i <= messageCount; i++) {
            messageArr[i - 1] = getMessage(i);
        }
        return messageArr;
    }

    public void fetch(Message[] messageArr, FetchProfile fetchProfile) throws MessagingException {
    }

    public synchronized void setFlags(Message[] messageArr, Flags flags, boolean z) throws MessagingException {
        for (Message message : messageArr) {
            try {
                message.setFlags(flags, z);
            } catch (MessageRemovedException e2) {
            }
        }
    }

    public synchronized void setFlags(int i, int i2, Flags flags, boolean z) throws MessagingException {
        while (i <= i2) {
            try {
                getMessage(i).setFlags(flags, z);
            } catch (MessageRemovedException e2) {
            }
            i++;
        }
    }

    public synchronized void setFlags(int[] iArr, Flags flags, boolean z) throws MessagingException {
        for (int i : iArr) {
            try {
                getMessage(i).setFlags(flags, z);
            } catch (MessageRemovedException e2) {
            }
        }
    }

    public void copyMessages(Message[] messageArr, Folder folder) throws MessagingException {
        if (!folder.exists()) {
            throw new FolderNotFoundException(new StringBuffer().append(folder.getFullName()).append(" does not exist").toString(), folder);
        }
        folder.appendMessages(messageArr);
    }

    public Message[] search(SearchTerm searchTerm) throws MessagingException {
        return search(searchTerm, getMessages());
    }

    public Message[] search(SearchTerm searchTerm, Message[] messageArr) throws MessagingException {
        Vector vector = new Vector();
        for (int i = 0; i < messageArr.length; i++) {
            try {
                if (messageArr[i].match(searchTerm)) {
                    vector.addElement(messageArr[i]);
                }
            } catch (MessageRemovedException e2) {
            }
        }
        Message[] messageArr2 = new Message[vector.size()];
        vector.copyInto(messageArr2);
        return messageArr2;
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

    protected void notifyConnectionListeners(int i) {
        if (this.connectionListeners != null) {
            queueEvent(new ConnectionEvent(this, i), this.connectionListeners);
        }
        if (i == 3) {
            terminateQueue();
        }
    }

    public synchronized void addFolderListener(FolderListener folderListener) {
        if (this.folderListeners == null) {
            this.folderListeners = new Vector();
        }
        this.folderListeners.addElement(folderListener);
    }

    public synchronized void removeFolderListener(FolderListener folderListener) {
        if (this.folderListeners != null) {
            this.folderListeners.removeElement(folderListener);
        }
    }

    protected void notifyFolderListeners(int i) {
        if (this.folderListeners != null) {
            queueEvent(new FolderEvent(this, this, i), this.folderListeners);
        }
        this.store.notifyFolderListeners(i, this);
    }

    protected void notifyFolderRenamedListeners(Folder folder) {
        if (this.folderListeners != null) {
            queueEvent(new FolderEvent(this, this, folder, 3), this.folderListeners);
        }
        this.store.notifyFolderRenamedListeners(this, folder);
    }

    public synchronized void addMessageCountListener(MessageCountListener messageCountListener) {
        if (this.messageCountListeners == null) {
            this.messageCountListeners = new Vector();
        }
        this.messageCountListeners.addElement(messageCountListener);
    }

    public synchronized void removeMessageCountListener(MessageCountListener messageCountListener) {
        if (this.messageCountListeners != null) {
            this.messageCountListeners.removeElement(messageCountListener);
        }
    }

    protected void notifyMessageAddedListeners(Message[] messageArr) {
        if (this.messageCountListeners != null) {
            queueEvent(new MessageCountEvent(this, 1, false, messageArr), this.messageCountListeners);
        }
    }

    protected void notifyMessageRemovedListeners(boolean z, Message[] messageArr) {
        if (this.messageCountListeners != null) {
            queueEvent(new MessageCountEvent(this, 2, z, messageArr), this.messageCountListeners);
        }
    }

    public synchronized void addMessageChangedListener(MessageChangedListener messageChangedListener) {
        if (this.messageChangedListeners == null) {
            this.messageChangedListeners = new Vector();
        }
        this.messageChangedListeners.addElement(messageChangedListener);
    }

    public synchronized void removeMessageChangedListener(MessageChangedListener messageChangedListener) {
        if (this.messageChangedListeners != null) {
            this.messageChangedListeners.removeElement(messageChangedListener);
        }
    }

    protected void notifyMessageChangedListeners(int i, Message message) {
        if (this.messageChangedListeners != null) {
            queueEvent(new MessageChangedEvent(this, i, message), this.messageChangedListeners);
        }
    }

    private void queueEvent(MailEvent mailEvent, Vector vector) {
        synchronized (this.qLock) {
            if (this.q == null) {
                this.q = new EventQueue();
            }
        }
        this.q.enqueue(mailEvent, (Vector) vector.clone());
    }

    class TerminatorEvent extends MailEvent {
        private static final long serialVersionUID = 3765761925441296565L;

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

    public String toString() {
        String fullName = getFullName();
        return fullName != null ? fullName : super.toString();
    }
}
