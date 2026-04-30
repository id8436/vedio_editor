package org.mortbay.jetty.handler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.Server;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiException;

/* JADX INFO: loaded from: classes3.dex */
public class HandlerCollection extends AbstractHandlerContainer {
    static Class class$org$mortbay$jetty$Handler;
    private Handler[] _handlers;

    public Handler[] getHandlers() {
        return this._handlers;
    }

    public void setHandlers(Handler[] handlerArr) {
        Handler[] handlerArr2 = this._handlers == null ? null : (Handler[]) this._handlers.clone();
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) handlerArr2, (Object[]) handlerArr, "handler");
        }
        Server server = getServer();
        MultiException multiException = new MultiException();
        for (int i = 0; handlerArr != null && i < handlerArr.length; i++) {
            if (handlerArr[i].getServer() != server) {
                handlerArr[i].setServer(server);
            }
        }
        this._handlers = handlerArr;
        for (int i2 = 0; handlerArr2 != null && i2 < handlerArr2.length; i2++) {
            if (handlerArr2[i2] != null) {
                try {
                    if (handlerArr2[i2].isStarted()) {
                        handlerArr2[i2].stop();
                    }
                } catch (Throwable th) {
                    multiException.add(th);
                }
            }
        }
        multiException.ifExceptionThrowRuntime();
    }

    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws ServletException, IOException {
        if (this._handlers != null && isStarted()) {
            MultiException multiException = null;
            for (int i2 = 0; i2 < this._handlers.length; i2++) {
                try {
                    this._handlers[i2].handle(str, httpServletRequest, httpServletResponse, i);
                } catch (IOException e2) {
                    throw e2;
                } catch (RuntimeException e3) {
                    throw e3;
                } catch (Exception e4) {
                    if (multiException == null) {
                        multiException = new MultiException();
                    }
                    multiException.add(e4);
                }
            }
            if (multiException != null) {
                if (multiException.size() == 1) {
                    throw new ServletException(multiException.getThrowable(0));
                }
                throw new ServletException(multiException);
            }
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        MultiException multiException = new MultiException();
        if (this._handlers != null) {
            for (int i = 0; i < this._handlers.length; i++) {
                try {
                    this._handlers[i].start();
                } catch (Throwable th) {
                    multiException.add(th);
                }
            }
        }
        super.doStart();
        multiException.ifExceptionThrow();
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        MultiException multiException = new MultiException();
        try {
            super.doStop();
        } catch (Throwable th) {
            multiException.add(th);
        }
        if (this._handlers != null) {
            int length = this._handlers.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                try {
                    this._handlers[i].stop();
                    length = i;
                } catch (Throwable th2) {
                    multiException.add(th2);
                    length = i;
                }
            }
        }
        multiException.ifExceptionThrow();
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        super.setServer(server);
        Handler[] handlers = getHandlers();
        for (int i = 0; handlers != null && i < handlers.length; i++) {
            handlers[i].setServer(server);
        }
        if (server != null && server != server2) {
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._handlers, "handler");
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public void addHandler(Handler handler) {
        Class clsClass$;
        Handler[] handlers = getHandlers();
        if (class$org$mortbay$jetty$Handler == null) {
            clsClass$ = class$("org.mortbay.jetty.Handler");
            class$org$mortbay$jetty$Handler = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$Handler;
        }
        setHandlers((Handler[]) LazyList.addToArray(handlers, handler, clsClass$));
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public void removeHandler(Handler handler) {
        Handler[] handlers = getHandlers();
        if (handlers != null && handlers.length > 0) {
            setHandlers((Handler[]) LazyList.removeFromArray(handlers, handler));
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandlerContainer
    protected Object expandChildren(Object obj, Class cls) {
        Handler[] handlers = getHandlers();
        for (int i = 0; handlers != null && i < handlers.length; i++) {
            obj = expandHandler(handlers[i], obj, cls);
        }
        return obj;
    }
}
