package org.mortbay.jetty.servlet;

import java.util.EventListener;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.SessionManager;
import org.mortbay.jetty.handler.HandlerWrapper;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class SessionHandler extends HandlerWrapper {
    private SessionManager _sessionManager;

    public SessionHandler() {
        this(new HashSessionManager());
    }

    public SessionHandler(SessionManager sessionManager) {
        setSessionManager(sessionManager);
    }

    public SessionManager getSessionManager() {
        return this._sessionManager;
    }

    public void setSessionManager(SessionManager sessionManager) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        SessionManager sessionManager2 = this._sessionManager;
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) sessionManager2, (Object) sessionManager, "sessionManager", true);
        }
        if (sessionManager != null) {
            sessionManager.setSessionHandler(this);
        }
        this._sessionManager = sessionManager;
        if (sessionManager2 != null) {
            sessionManager2.setSessionHandler(null);
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        if (server2 != null && server2 != server) {
            server2.getContainer().update((Object) this, (Object) this._sessionManager, (Object) null, "sessionManager", true);
        }
        super.setServer(server);
        if (server != null && server != server2) {
            server.getContainer().update((Object) this, (Object) null, (Object) this._sessionManager, "sessionManager", true);
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        this._sessionManager.start();
        super.doStart();
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
        this._sessionManager.stop();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00c8  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r8, javax.servlet.http.HttpServletRequest r9, javax.servlet.http.HttpServletResponse r10, int r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.SessionHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    protected void setRequestedId(HttpServletRequest httpServletRequest, int i) {
        String str;
        HttpSession httpSession;
        boolean z;
        int iIndexOf;
        char cCharAt;
        Cookie[] cookies;
        Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
        String requestedSessionId = httpServletRequest.getRequestedSessionId();
        if (i == 1 && requestedSessionId == null) {
            SessionManager sessionManager = getSessionManager();
            HttpSession httpSession2 = null;
            if (this._sessionManager.isUsingCookies() && (cookies = httpServletRequest.getCookies()) != null && cookies.length > 0) {
                int i2 = 0;
                boolean z2 = false;
                while (true) {
                    if (i2 >= cookies.length) {
                        HttpSession httpSession3 = httpSession2;
                        z = z2;
                        str = requestedSessionId;
                        httpSession = httpSession3;
                        break;
                    }
                    if (sessionManager.getSessionCookie().equalsIgnoreCase(cookies[i2].getName())) {
                        if (requestedSessionId != null && sessionManager.getHttpSession(requestedSessionId) != null) {
                            HttpSession httpSession4 = httpSession2;
                            z = z2;
                            str = requestedSessionId;
                            httpSession = httpSession4;
                            break;
                        }
                        String value = cookies[i2].getValue();
                        if (Log.isDebugEnabled()) {
                            Log.debug(new StringBuffer().append("Got Session ID ").append(value).append(" from cookie").toString());
                        }
                        httpSession2 = sessionManager.getHttpSession(value);
                        if (httpSession2 != null) {
                            request.setSession(httpSession2);
                        }
                        requestedSessionId = value;
                        z2 = true;
                    }
                    i2++;
                }
            } else {
                str = requestedSessionId;
                httpSession = null;
                z = false;
            }
            if (str == null || httpSession == null) {
                String requestURI = httpServletRequest.getRequestURI();
                String sessionURLPrefix = sessionManager.getSessionURLPrefix();
                if (sessionURLPrefix != null && (iIndexOf = requestURI.indexOf(sessionURLPrefix)) >= 0) {
                    int length = iIndexOf + sessionURLPrefix.length();
                    int i3 = length;
                    while (i3 < requestURI.length() && (cCharAt = requestURI.charAt(i3)) != ';' && cCharAt != '#' && cCharAt != '?' && cCharAt != '/') {
                        i3++;
                    }
                    String strSubstring = requestURI.substring(length, i3);
                    if (Log.isDebugEnabled()) {
                        Log.debug(new StringBuffer().append("Got Session ID ").append(strSubstring).append(" from URL").toString());
                    }
                    str = strSubstring;
                    z = false;
                }
            }
            request.setRequestedSessionId(str);
            request.setRequestedSessionIdFromCookie(str != null && z);
        }
    }

    public void addEventListener(EventListener eventListener) {
        if (this._sessionManager != null) {
            this._sessionManager.addEventListener(eventListener);
        }
    }

    public void clearEventListeners() {
        if (this._sessionManager != null) {
            this._sessionManager.clearEventListeners();
        }
    }
}
