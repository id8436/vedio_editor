package org.mortbay.jetty.handler;

import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ContextHandlerCollection extends HandlerCollection {
    static Class class$org$mortbay$jetty$handler$ContextHandler;
    private Class _contextClass;
    private PathMap _contextMap;

    public ContextHandlerCollection() throws Throwable {
        Class clsClass$;
        if (class$org$mortbay$jetty$handler$ContextHandler == null) {
            clsClass$ = class$("org.mortbay.jetty.handler.ContextHandler");
            class$org$mortbay$jetty$handler$ContextHandler = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$handler$ContextHandler;
        }
        this._contextClass = clsClass$;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mapContexts() {
        /*
            Method dump skipped, instruction units count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.ContextHandlerCollection.mapContexts():void");
    }

    @Override // org.mortbay.jetty.handler.HandlerCollection
    public void setHandlers(Handler[] handlerArr) {
        this._contextMap = null;
        super.setHandlers(handlerArr);
        if (isStarted()) {
            mapContexts();
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerCollection, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        mapContexts();
        super.doStart();
    }

    @Override // org.mortbay.jetty.handler.HandlerCollection, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws ServletException, IOException {
        Handler[] handlers = getHandlers();
        if (handlers != null && handlers.length != 0) {
            Request request = HttpConnection.getCurrentConnection().getRequest();
            PathMap pathMap = this._contextMap;
            if (pathMap != null && str != null && str.startsWith(URIUtil.SLASH)) {
                Object lazyMatches = pathMap.getLazyMatches(str);
                for (int i2 = 0; i2 < LazyList.size(lazyMatches); i2++) {
                    Object value = ((Map.Entry) LazyList.get(lazyMatches, i2)).getValue();
                    if (value instanceof Map) {
                        Map map = (Map) value;
                        String strNormalizeHostname = normalizeHostname(httpServletRequest.getServerName());
                        Object obj = map.get(strNormalizeHostname);
                        for (int i3 = 0; i3 < LazyList.size(obj); i3++) {
                            ((Handler) LazyList.get(obj, i3)).handle(str, httpServletRequest, httpServletResponse, i);
                            if (request.isHandled()) {
                                return;
                            }
                        }
                        Object obj2 = map.get(new StringBuffer().append("*.").append(strNormalizeHostname.substring(strNormalizeHostname.indexOf(".") + 1)).toString());
                        for (int i4 = 0; i4 < LazyList.size(obj2); i4++) {
                            ((Handler) LazyList.get(obj2, i4)).handle(str, httpServletRequest, httpServletResponse, i);
                            if (request.isHandled()) {
                                return;
                            }
                        }
                        Object obj3 = map.get("*");
                        for (int i5 = 0; i5 < LazyList.size(obj3); i5++) {
                            ((Handler) LazyList.get(obj3, i5)).handle(str, httpServletRequest, httpServletResponse, i);
                            if (request.isHandled()) {
                                return;
                            }
                        }
                    } else {
                        for (int i6 = 0; i6 < LazyList.size(value); i6++) {
                            ((Handler) LazyList.get(value, i6)).handle(str, httpServletRequest, httpServletResponse, i);
                            if (request.isHandled()) {
                                return;
                            }
                        }
                    }
                }
                return;
            }
            for (Handler handler : handlers) {
                handler.handle(str, httpServletRequest, httpServletResponse, i);
                if (request.isHandled()) {
                    return;
                }
            }
        }
    }

    public ContextHandler addContext(String str, String str2) throws Throwable {
        try {
            ContextHandler contextHandler = (ContextHandler) this._contextClass.newInstance();
            contextHandler.setContextPath(str);
            contextHandler.setResourceBase(str2);
            addHandler(contextHandler);
            return contextHandler;
        } catch (Exception e2) {
            Log.debug(e2);
            throw new Error(e2);
        }
    }

    public Class getContextClass() {
        return this._contextClass;
    }

    public void setContextClass(Class cls) throws Throwable {
        Class clsClass$;
        if (cls != null) {
            if (class$org$mortbay$jetty$handler$ContextHandler == null) {
                clsClass$ = class$("org.mortbay.jetty.handler.ContextHandler");
                class$org$mortbay$jetty$handler$ContextHandler = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$handler$ContextHandler;
            }
            if (clsClass$.isAssignableFrom(cls)) {
                this._contextClass = cls;
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    private String normalizeHostname(String str) {
        if (str == null) {
            return null;
        }
        if (str.endsWith(".")) {
            return str.substring(0, str.length() - 1);
        }
        return str;
    }
}
