package javax.mail;

import java.util.Vector;
import javax.mail.event.MailEvent;

/* JADX INFO: loaded from: classes3.dex */
class EventQueue implements Runnable {
    private QueueElement head = null;
    private QueueElement tail = null;
    private Thread qThread = new Thread(this, "JavaMail-EventQueue");

    class QueueElement {
        MailEvent event;
        QueueElement next = null;
        QueueElement prev = null;
        private final EventQueue this$0;
        Vector vector;

        QueueElement(EventQueue eventQueue, MailEvent mailEvent, Vector vector) {
            this.this$0 = eventQueue;
            this.event = null;
            this.vector = null;
            this.event = mailEvent;
            this.vector = vector;
        }
    }

    public EventQueue() {
        this.qThread.setDaemon(true);
        this.qThread.start();
    }

    public synchronized void enqueue(MailEvent mailEvent, Vector vector) {
        QueueElement queueElement = new QueueElement(this, mailEvent, vector);
        if (this.head == null) {
            this.head = queueElement;
            this.tail = queueElement;
        } else {
            queueElement.next = this.head;
            this.head.prev = queueElement;
            this.head = queueElement;
        }
        notify();
    }

    private synchronized QueueElement dequeue() throws InterruptedException {
        QueueElement queueElement;
        while (this.tail == null) {
            wait();
        }
        queueElement = this.tail;
        this.tail = queueElement.prev;
        if (this.tail == null) {
            this.head = null;
        } else {
            this.tail.next = null;
        }
        queueElement.next = null;
        queueElement.prev = null;
        return queueElement;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                QueueElement queueElementDequeue = dequeue();
                if (queueElementDequeue != null) {
                    MailEvent mailEvent = queueElementDequeue.event;
                    Vector vector = queueElementDequeue.vector;
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < vector.size()) {
                            try {
                                mailEvent.dispatch(vector.elementAt(i2));
                            } catch (Throwable th) {
                                if (th instanceof InterruptedException) {
                                    return;
                                }
                            }
                            i = i2 + 1;
                        }
                    }
                } else {
                    return;
                }
            } catch (InterruptedException e2) {
                return;
            }
        }
    }

    void stop() {
        if (this.qThread != null) {
            this.qThread.interrupt();
            this.qThread = null;
        }
    }
}
