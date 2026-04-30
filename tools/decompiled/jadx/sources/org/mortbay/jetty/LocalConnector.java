package org.mortbay.jetty;

import java.io.IOException;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.ByteArrayEndPoint;

/* JADX INFO: loaded from: classes3.dex */
public class LocalConnector extends AbstractConnector {
    boolean _accepting;
    ByteArrayEndPoint _endp;
    ByteArrayBuffer _in;
    boolean _keepOpen;
    ByteArrayBuffer _out;
    Server _server;

    public LocalConnector() {
        setPort(1);
    }

    @Override // org.mortbay.jetty.Connector
    public Object getConnection() {
        return this._endp;
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void setServer(Server server) {
        super.setServer(server);
        this._server = server;
    }

    public void clear() {
        this._in.clear();
        this._out.clear();
    }

    public void reopen() {
        this._in.clear();
        this._out.clear();
        this._endp = new ByteArrayEndPoint();
        this._endp.setIn(this._in);
        this._endp.setOut(this._out);
        this._endp.setGrowOutput(true);
        this._accepting = false;
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.AbstractBuffers, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this._in = new ByteArrayBuffer(8192);
        this._out = new ByteArrayBuffer(8192);
        this._endp = new ByteArrayEndPoint();
        this._endp.setIn(this._in);
        this._endp.setOut(this._out);
        this._endp.setGrowOutput(true);
        this._accepting = false;
        super.doStart();
    }

    public String getResponses(String str) throws Exception {
        return getResponses(str, false);
    }

    public String getResponses(String str, boolean z) throws Exception {
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(str);
        if (this._in.space() < byteArrayBuffer.length()) {
            ByteArrayBuffer byteArrayBuffer2 = new ByteArrayBuffer(this._in.length() + byteArrayBuffer.length());
            byteArrayBuffer2.put(this._in);
            this._in = byteArrayBuffer2;
            this._endp.setIn(this._in);
        }
        this._in.put(byteArrayBuffer);
        synchronized (this) {
            this._keepOpen = z;
            this._accepting = true;
            notify();
            while (this._accepting) {
                wait();
            }
        }
        this._out = this._endp.getOut();
        return this._out.toString();
    }

    public ByteArrayBuffer getResponses(ByteArrayBuffer byteArrayBuffer, boolean z) throws Exception {
        if (this._in.space() < byteArrayBuffer.length()) {
            ByteArrayBuffer byteArrayBuffer2 = new ByteArrayBuffer(this._in.length() + byteArrayBuffer.length());
            byteArrayBuffer2.put(this._in);
            this._in = byteArrayBuffer2;
            this._endp.setIn(this._in);
        }
        this._in.put(byteArrayBuffer);
        synchronized (this) {
            this._keepOpen = z;
            this._accepting = true;
            notify();
            while (this._accepting) {
                wait();
            }
        }
        this._out = this._endp.getOut();
        return this._out;
    }

    @Override // org.mortbay.jetty.AbstractBuffers
    protected Buffer newBuffer(int i) {
        return new ByteArrayBuffer(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003e  */
    @Override // org.mortbay.jetty.AbstractConnector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void accept(int r7) throws java.lang.Throwable {
        /*
            r6 = this;
            r1 = 0
            r0 = r1
        L2:
            boolean r2 = r6.isRunning()
            if (r2 == 0) goto L13
            monitor-enter(r6)
        L9:
            boolean r2 = r6._accepting     // Catch: java.lang.InterruptedException -> L11 java.lang.Throwable -> L46
            if (r2 != 0) goto L14
            r6.wait()     // Catch: java.lang.InterruptedException -> L11 java.lang.Throwable -> L46
            goto L9
        L11:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L46
        L13:
            return
        L14:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L46
            if (r0 != 0) goto L6a
            org.mortbay.jetty.HttpConnection r2 = new org.mortbay.jetty.HttpConnection     // Catch: java.lang.Throwable -> L63
            org.mortbay.io.ByteArrayEndPoint r3 = r6._endp     // Catch: java.lang.Throwable -> L63
            org.mortbay.jetty.Server r4 = r6.getServer()     // Catch: java.lang.Throwable -> L63
            r2.<init>(r6, r3, r4)     // Catch: java.lang.Throwable -> L63
            r6.connectionOpened(r2)     // Catch: java.lang.Throwable -> L31
        L25:
            org.mortbay.io.ByteArrayBuffer r0 = r6._in     // Catch: java.lang.Throwable -> L31
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L31
            if (r0 <= 0) goto L4c
            r2.handle()     // Catch: java.lang.Throwable -> L31
            goto L25
        L31:
            r0 = move-exception
            r1 = r2
        L33:
            boolean r2 = r6._keepOpen
            if (r2 != 0) goto L3d
            r6.connectionClosed(r1)
            r1.destroy()
        L3d:
            monitor-enter(r6)
            r1 = 0
            r6._accepting = r1     // Catch: java.lang.Throwable -> L49
            r6.notify()     // Catch: java.lang.Throwable -> L49
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L49
            throw r0
        L46:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L46
            throw r0
        L49:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L49
            throw r0
        L4c:
            boolean r0 = r6._keepOpen
            if (r0 != 0) goto L68
            r6.connectionClosed(r2)
            r2.destroy()
            r0 = r1
        L57:
            monitor-enter(r6)
            r2 = 0
            r6._accepting = r2     // Catch: java.lang.Throwable -> L60
            r6.notify()     // Catch: java.lang.Throwable -> L60
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L60
            goto L2
        L60:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L60
            throw r0
        L63:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L33
        L68:
            r0 = r2
            goto L57
        L6a:
            r2 = r0
            goto L25
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.LocalConnector.accept(int):void");
    }

    @Override // org.mortbay.jetty.Connector
    public void open() throws IOException {
    }

    @Override // org.mortbay.jetty.Connector
    public void close() throws IOException {
    }

    @Override // org.mortbay.jetty.Connector
    public int getLocalPort() {
        return -1;
    }
}
