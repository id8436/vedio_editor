package javax.mail;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import javax.mail.event.TransportEvent;
import javax.mail.event.TransportListener;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Transport extends Service {
    private Vector transportListeners;

    public abstract void sendMessage(Message message, Address[] addressArr) throws MessagingException;

    public Transport(Session session, URLName uRLName) {
        super(session, uRLName);
        this.transportListeners = null;
    }

    public static void send(Message message) throws MessagingException {
        message.saveChanges();
        send0(message, message.getAllRecipients());
    }

    public static void send(Message message, Address[] addressArr) throws MessagingException {
        message.saveChanges();
        send0(message, addressArr);
    }

    private static void send0(Message message, Address[] addressArr) throws MessagingException {
        Address[] addressArr2;
        Address[] addressArr3;
        Transport transport;
        boolean z;
        Address[] addressArr4 = null;
        if (addressArr == null || addressArr.length == 0) {
            throw new SendFailedException("No recipient addresses");
        }
        Hashtable hashtable = new Hashtable();
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        for (int i = 0; i < addressArr.length; i++) {
            if (hashtable.containsKey(addressArr[i].getType())) {
                ((Vector) hashtable.get(addressArr[i].getType())).addElement(addressArr[i]);
            } else {
                Vector vector4 = new Vector();
                vector4.addElement(addressArr[i]);
                hashtable.put(addressArr[i].getType(), vector4);
            }
        }
        int size = hashtable.size();
        if (size == 0) {
            throw new SendFailedException("No recipient addresses");
        }
        Session defaultInstance = message.session != null ? message.session : Session.getDefaultInstance(System.getProperties(), null);
        if (size == 1) {
            transport = defaultInstance.getTransport(addressArr[0]);
            try {
                transport.connect();
                transport.sendMessage(message, addressArr);
                return;
            } finally {
            }
        }
        Enumeration enumerationElements = hashtable.elements();
        boolean z2 = false;
        MessagingException messagingException = null;
        while (enumerationElements.hasMoreElements()) {
            Vector vector5 = (Vector) enumerationElements.nextElement();
            Address[] addressArr5 = new Address[vector5.size()];
            vector5.copyInto(addressArr5);
            transport = defaultInstance.getTransport(addressArr5[0]);
            if (transport == null) {
                for (Address address : addressArr5) {
                    vector.addElement(address);
                }
            } else {
                try {
                    try {
                        transport.connect();
                        transport.sendMessage(message, addressArr5);
                        transport.close();
                        z = z2;
                    } catch (SendFailedException e2) {
                        if (messagingException == null) {
                            messagingException = e2;
                        } else {
                            messagingException.setNextException(e2);
                        }
                        Address[] invalidAddresses = e2.getInvalidAddresses();
                        if (invalidAddresses != null) {
                            for (Address address2 : invalidAddresses) {
                                vector.addElement(address2);
                            }
                        }
                        Address[] validSentAddresses = e2.getValidSentAddresses();
                        if (validSentAddresses != null) {
                            for (Address address3 : validSentAddresses) {
                                vector2.addElement(address3);
                            }
                        }
                        Address[] validUnsentAddresses = e2.getValidUnsentAddresses();
                        if (validUnsentAddresses != null) {
                            for (Address address4 : validUnsentAddresses) {
                                vector3.addElement(address4);
                            }
                        }
                        transport.close();
                        z = true;
                    } catch (MessagingException e3) {
                        if (messagingException == null) {
                            messagingException = e3;
                        } else {
                            messagingException.setNextException(e3);
                        }
                        transport.close();
                        z = true;
                    }
                    z2 = z;
                } finally {
                }
            }
        }
        if (!z2 && vector.size() == 0 && vector3.size() == 0) {
            return;
        }
        if (vector2.size() > 0) {
            addressArr2 = new Address[vector2.size()];
            vector2.copyInto(addressArr2);
        } else {
            addressArr2 = null;
        }
        if (vector3.size() > 0) {
            addressArr3 = new Address[vector3.size()];
            vector3.copyInto(addressArr3);
        } else {
            addressArr3 = null;
        }
        if (vector.size() > 0) {
            addressArr4 = new Address[vector.size()];
            vector.copyInto(addressArr4);
        }
        throw new SendFailedException("Sending failed", messagingException, addressArr2, addressArr3, addressArr4);
    }

    public synchronized void addTransportListener(TransportListener transportListener) {
        if (this.transportListeners == null) {
            this.transportListeners = new Vector();
        }
        this.transportListeners.addElement(transportListener);
    }

    public synchronized void removeTransportListener(TransportListener transportListener) {
        if (this.transportListeners != null) {
            this.transportListeners.removeElement(transportListener);
        }
    }

    protected void notifyTransportListeners(int i, Address[] addressArr, Address[] addressArr2, Address[] addressArr3, Message message) {
        if (this.transportListeners != null) {
            queueEvent(new TransportEvent(this, i, addressArr, addressArr2, addressArr3, message), this.transportListeners);
        }
    }
}
