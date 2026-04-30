package org.mortbay.jetty.handler;

import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.Server;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractHandler extends AbstractLifeCycle implements Handler {
    private Server _server;
    protected String _string;

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        Log.debug("starting {}", this);
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        Log.debug("stopping {}", this);
    }

    public String toString() {
        if (this._string == null) {
            this._string = super.toString();
            this._string = this._string.substring(this._string.lastIndexOf(46) + 1);
        }
        return this._string;
    }

    @Override // org.mortbay.jetty.Handler
    public void setServer(Server server) {
        Server server2 = this._server;
        if (server2 != null && server2 != server) {
            server2.getContainer().removeBean(this);
        }
        this._server = server;
        if (this._server != null && this._server != server2) {
            this._server.getContainer().addBean(this);
        }
    }

    @Override // org.mortbay.jetty.Handler
    public Server getServer() {
        return this._server;
    }

    @Override // org.mortbay.jetty.Handler
    public void destroy() {
        if (!isStopped()) {
            throw new IllegalStateException("!STOPPED");
        }
        if (this._server != null) {
            this._server.getContainer().removeBean(this);
        }
    }
}
