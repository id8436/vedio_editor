package org.mortbay.jetty.servlet;

import com.google.gdata.data.analytics.Engagement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.HttpOnlyCookie;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.SessionIdManager;
import org.mortbay.jetty.SessionManager;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.util.LazyList;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractSessionManager extends AbstractLifeCycle implements SessionManager {
    public static final int __distantFuture = 628992000;
    private static final HttpSessionContext __nullSessionContext = new NullSessionContext(null);
    protected ContextHandler.SContext _context;
    protected ClassLoader _loader;
    protected boolean _nodeIdInSessionId;
    protected int _refreshCookieAge;
    protected Object _sessionAttributeListeners;
    protected String _sessionDomain;
    protected SessionHandler _sessionHandler;
    protected SessionIdManager _sessionIdManager;
    protected Object _sessionListeners;
    protected String _sessionPath;
    private boolean _usingCookies = true;
    protected int _dftMaxIdleSecs = -1;
    protected boolean _httpOnly = false;
    protected int _maxSessions = 0;
    protected int _minSessions = 0;
    protected boolean _secureCookies = false;
    protected String _sessionCookie = SessionManager.__DefaultSessionCookie;
    protected String _sessionURL = SessionManager.__DefaultSessionURL;
    protected String _sessionURLPrefix = new StringBuffer().append(";").append(this._sessionURL).append(Engagement.Comparison.EQ).toString();
    protected int _maxCookieAge = -1;

    /* JADX INFO: renamed from: org.mortbay.jetty.servlet.AbstractSessionManager$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    public interface SessionIf extends HttpSession {
        Session getSession();
    }

    protected abstract void addSession(Session session);

    public abstract Session getSession(String str);

    public abstract Map getSessionMap();

    public abstract int getSessions();

    protected abstract void invalidateSessions();

    protected abstract Session newSession(HttpServletRequest httpServletRequest);

    protected abstract void removeSession(String str);

    @Override // org.mortbay.jetty.SessionManager
    public Cookie access(HttpSession httpSession, boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Session session = ((SessionIf) httpSession).getSession();
        session.access(jCurrentTimeMillis);
        if (!isUsingCookies() || (!session.isIdChanged() && (getMaxCookieAge() <= 0 || getRefreshCookieAge() <= 0 || (jCurrentTimeMillis - session.getCookieSetTime()) / 1000 <= getRefreshCookieAge()))) {
            return null;
        }
        Cookie sessionCookie = getSessionCookie(httpSession, this._context.getContextPath(), z);
        session.cookieSet();
        session.setIdChanged(false);
        return sessionCookie;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void addEventListener(EventListener eventListener) {
        if (eventListener instanceof HttpSessionAttributeListener) {
            this._sessionAttributeListeners = LazyList.add(this._sessionAttributeListeners, eventListener);
        }
        if (eventListener instanceof HttpSessionListener) {
            this._sessionListeners = LazyList.add(this._sessionListeners, eventListener);
        }
    }

    @Override // org.mortbay.jetty.SessionManager
    public void clearEventListeners() {
        this._sessionAttributeListeners = null;
        this._sessionListeners = null;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void complete(HttpSession httpSession) {
        ((SessionIf) httpSession).getSession().complete();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        String initParameter;
        String string = null;
        this._context = ContextHandler.getCurrentContext();
        this._loader = Thread.currentThread().getContextClassLoader();
        if (this._sessionIdManager == null) {
            Server server = getSessionHandler().getServer();
            synchronized (server) {
                this._sessionIdManager = server.getSessionIdManager();
                if (this._sessionIdManager == null) {
                    this._sessionIdManager = new HashSessionIdManager();
                    server.setSessionIdManager(this._sessionIdManager);
                }
            }
        }
        if (!this._sessionIdManager.isStarted()) {
            this._sessionIdManager.start();
        }
        if (this._context != null) {
            String initParameter2 = this._context.getInitParameter(SessionManager.__SessionCookieProperty);
            if (initParameter2 != null) {
                this._sessionCookie = initParameter2;
            }
            String initParameter3 = this._context.getInitParameter(SessionManager.__SessionURLProperty);
            if (initParameter3 != null) {
                this._sessionURL = (initParameter3 == null || "none".equals(initParameter3)) ? null : initParameter3;
                if (initParameter3 != null && !"none".equals(initParameter3)) {
                    string = new StringBuffer().append(";").append(this._sessionURL).append(Engagement.Comparison.EQ).toString();
                }
                this._sessionURLPrefix = string;
            }
            if (this._maxCookieAge == -1 && (initParameter = this._context.getInitParameter(SessionManager.__MaxAgeProperty)) != null) {
                this._maxCookieAge = Integer.parseInt(initParameter.trim());
            }
            if (this._sessionDomain == null) {
                this._sessionDomain = this._context.getInitParameter(SessionManager.__SessionDomainProperty);
            }
            if (this._sessionPath == null) {
                this._sessionPath = this._context.getInitParameter(SessionManager.__SessionPathProperty);
            }
        }
        super.doStart();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
        invalidateSessions();
        this._loader = null;
    }

    @Override // org.mortbay.jetty.SessionManager
    public boolean getHttpOnly() {
        return this._httpOnly;
    }

    @Override // org.mortbay.jetty.SessionManager
    public HttpSession getHttpSession(String str) {
        Session session;
        String clusterId = getIdManager().getClusterId(str);
        synchronized (this) {
            session = getSession(clusterId);
            if (session != null && !session.getNodeId().equals(str)) {
                session.setIdChanged(true);
            }
        }
        return session;
    }

    @Override // org.mortbay.jetty.SessionManager
    public SessionIdManager getIdManager() {
        return this._sessionIdManager;
    }

    @Override // org.mortbay.jetty.SessionManager
    public int getMaxCookieAge() {
        return this._maxCookieAge;
    }

    @Override // org.mortbay.jetty.SessionManager
    public int getMaxInactiveInterval() {
        return this._dftMaxIdleSecs;
    }

    public int getMaxSessions() {
        return this._maxSessions;
    }

    @Override // org.mortbay.jetty.SessionManager
    public SessionIdManager getMetaManager() {
        return getIdManager();
    }

    public int getMinSessions() {
        return this._minSessions;
    }

    public int getRefreshCookieAge() {
        return this._refreshCookieAge;
    }

    @Override // org.mortbay.jetty.SessionManager
    public boolean getSecureCookies() {
        return this._secureCookies;
    }

    @Override // org.mortbay.jetty.SessionManager
    public String getSessionCookie() {
        return this._sessionCookie;
    }

    @Override // org.mortbay.jetty.SessionManager
    public Cookie getSessionCookie(HttpSession httpSession, String str, boolean z) {
        if (isUsingCookies()) {
            String nodeId = getNodeId(httpSession);
            Cookie httpOnlyCookie = getHttpOnly() ? new HttpOnlyCookie(this._sessionCookie, nodeId) : new Cookie(this._sessionCookie, nodeId);
            if (str == null || str.length() == 0) {
                str = URIUtil.SLASH;
            }
            httpOnlyCookie.setPath(str);
            httpOnlyCookie.setMaxAge(getMaxCookieAge());
            httpOnlyCookie.setSecure(z && getSecureCookies());
            if (this._sessionDomain != null) {
                httpOnlyCookie.setDomain(this._sessionDomain);
            }
            if (this._sessionPath != null) {
                httpOnlyCookie.setPath(this._sessionPath);
            }
            return httpOnlyCookie;
        }
        return null;
    }

    @Override // org.mortbay.jetty.SessionManager
    public String getSessionDomain() {
        return this._sessionDomain;
    }

    public SessionHandler getSessionHandler() {
        return this._sessionHandler;
    }

    @Override // org.mortbay.jetty.SessionManager
    public String getSessionPath() {
        return this._sessionPath;
    }

    @Override // org.mortbay.jetty.SessionManager
    public String getSessionURL() {
        return this._sessionURL;
    }

    @Override // org.mortbay.jetty.SessionManager
    public String getSessionURLPrefix() {
        return this._sessionURLPrefix;
    }

    @Override // org.mortbay.jetty.SessionManager
    public boolean isUsingCookies() {
        return this._usingCookies;
    }

    @Override // org.mortbay.jetty.SessionManager
    public boolean isValid(HttpSession httpSession) {
        return ((SessionIf) httpSession).getSession().isValid();
    }

    @Override // org.mortbay.jetty.SessionManager
    public String getClusterId(HttpSession httpSession) {
        return ((SessionIf) httpSession).getSession().getClusterId();
    }

    @Override // org.mortbay.jetty.SessionManager
    public String getNodeId(HttpSession httpSession) {
        return ((SessionIf) httpSession).getSession().getNodeId();
    }

    @Override // org.mortbay.jetty.SessionManager
    public HttpSession newHttpSession(HttpServletRequest httpServletRequest) {
        Session sessionNewSession = newSession(httpServletRequest);
        sessionNewSession.setMaxInactiveInterval(this._dftMaxIdleSecs);
        addSession(sessionNewSession, true);
        return sessionNewSession;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void removeEventListener(EventListener eventListener) {
        if (eventListener instanceof HttpSessionAttributeListener) {
            this._sessionAttributeListeners = LazyList.remove(this._sessionAttributeListeners, eventListener);
        }
        if (eventListener instanceof HttpSessionListener) {
            this._sessionListeners = LazyList.remove(this._sessionListeners, eventListener);
        }
    }

    public void resetStats() {
        this._minSessions = getSessions();
        this._maxSessions = getSessions();
    }

    public void setHttpOnly(boolean z) {
        this._httpOnly = z;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void setIdManager(SessionIdManager sessionIdManager) {
        this._sessionIdManager = sessionIdManager;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void setMaxCookieAge(int i) {
        this._maxCookieAge = i;
        if (this._maxCookieAge > 0 && this._refreshCookieAge == 0) {
            this._refreshCookieAge = this._maxCookieAge / 3;
        }
    }

    @Override // org.mortbay.jetty.SessionManager
    public void setMaxInactiveInterval(int i) {
        this._dftMaxIdleSecs = i;
    }

    public void setMetaManager(SessionIdManager sessionIdManager) {
        setIdManager(sessionIdManager);
    }

    public void setRefreshCookieAge(int i) {
        this._refreshCookieAge = i;
    }

    public void setSecureCookies(boolean z) {
        this._secureCookies = z;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void setSessionCookie(String str) {
        this._sessionCookie = str;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void setSessionDomain(String str) {
        this._sessionDomain = str;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void setSessionHandler(SessionHandler sessionHandler) {
        this._sessionHandler = sessionHandler;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void setSessionPath(String str) {
        this._sessionPath = str;
    }

    @Override // org.mortbay.jetty.SessionManager
    public void setSessionURL(String str) {
        String string = null;
        this._sessionURL = (str == null || "none".equals(str)) ? null : str;
        if (str != null && !"none".equals(str)) {
            string = new StringBuffer().append(";").append(this._sessionURL).append(Engagement.Comparison.EQ).toString();
        }
        this._sessionURLPrefix = string;
    }

    public void setUsingCookies(boolean z) {
        this._usingCookies = z;
    }

    protected void addSession(Session session, boolean z) {
        synchronized (this._sessionIdManager) {
            this._sessionIdManager.addSession(session);
            synchronized (this) {
                addSession(session);
                if (getSessions() > this._maxSessions) {
                    this._maxSessions = getSessions();
                }
            }
        }
        if (!z) {
            session.didActivate();
            return;
        }
        if (this._sessionListeners != null) {
            HttpSessionEvent httpSessionEvent = new HttpSessionEvent(session);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < LazyList.size(this._sessionListeners)) {
                    ((HttpSessionListener) LazyList.get(this._sessionListeners, i2)).sessionCreated(httpSessionEvent);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public boolean isNodeIdInSessionId() {
        return this._nodeIdInSessionId;
    }

    public void setNodeIdInSessionId(boolean z) {
        this._nodeIdInSessionId = z;
    }

    public void removeSession(HttpSession httpSession, boolean z) {
        removeSession(((SessionIf) httpSession).getSession(), z);
    }

    public void removeSession(Session session, boolean z) {
        boolean z2 = false;
        synchronized (this) {
            if (getSession(session.getClusterId()) != null) {
                z2 = true;
                removeSession(session.getClusterId());
            }
        }
        if (z2 && z) {
            this._sessionIdManager.removeSession(session);
            this._sessionIdManager.invalidateAll(session.getClusterId());
        }
        if (z && this._sessionListeners != null) {
            HttpSessionEvent httpSessionEvent = new HttpSessionEvent(session);
            int size = LazyList.size(this._sessionListeners);
            while (true) {
                int i = size - 1;
                if (size <= 0) {
                    break;
                }
                ((HttpSessionListener) LazyList.get(this._sessionListeners, i)).sessionDestroyed(httpSessionEvent);
                size = i;
            }
        }
        if (!z) {
            session.willPassivate();
        }
    }

    public class NullSessionContext implements HttpSessionContext {
        NullSessionContext(AnonymousClass1 anonymousClass1) {
            this();
        }

        private NullSessionContext() {
        }

        @Override // javax.servlet.http.HttpSessionContext
        public Enumeration getIds() {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }

        @Override // javax.servlet.http.HttpSessionContext
        public HttpSession getSession(String str) {
            return null;
        }
    }

    public abstract class Session implements Serializable, SessionIf {
        protected long _accessed;
        protected final String _clusterId;
        protected long _cookieSet;
        protected final long _created;
        protected boolean _doInvalidate;
        protected boolean _idChanged;
        protected boolean _invalid;
        protected long _lastAccessed;
        protected long _maxIdleMs;
        protected boolean _newSession;
        protected final String _nodeId;
        protected int _requests;
        protected Map _values;
        private final AbstractSessionManager this$0;

        protected abstract Map newAttributeMap();

        protected Session(AbstractSessionManager abstractSessionManager, HttpServletRequest httpServletRequest) {
            this.this$0 = abstractSessionManager;
            this._maxIdleMs = this.this$0._dftMaxIdleSecs * 1000;
            this._newSession = true;
            this._created = System.currentTimeMillis();
            this._clusterId = abstractSessionManager._sessionIdManager.newSessionId(httpServletRequest, this._created);
            this._nodeId = abstractSessionManager._sessionIdManager.getNodeId(this._clusterId, httpServletRequest);
            this._accessed = this._created;
            this._requests = 1;
        }

        protected Session(AbstractSessionManager abstractSessionManager, long j, String str) {
            this.this$0 = abstractSessionManager;
            this._maxIdleMs = this.this$0._dftMaxIdleSecs * 1000;
            this._created = j;
            this._clusterId = str;
            this._nodeId = abstractSessionManager._sessionIdManager.getNodeId(this._clusterId, null);
            this._accessed = this._created;
        }

        @Override // org.mortbay.jetty.servlet.AbstractSessionManager.SessionIf
        public Session getSession() {
            return this;
        }

        protected void initValues() {
            this._values = newAttributeMap();
        }

        @Override // javax.servlet.http.HttpSession
        public synchronized Object getAttribute(String str) {
            if (this._invalid) {
                throw new IllegalStateException();
            }
            return this._values == null ? null : this._values.get(str);
        }

        @Override // javax.servlet.http.HttpSession
        public synchronized Enumeration getAttributeNames() {
            if (this._invalid) {
                throw new IllegalStateException();
            }
            return Collections.enumeration(this._values == null ? Collections.EMPTY_LIST : new ArrayList(this._values.keySet()));
        }

        public long getCookieSetTime() {
            return this._cookieSet;
        }

        @Override // javax.servlet.http.HttpSession
        public long getCreationTime() throws IllegalStateException {
            if (this._invalid) {
                throw new IllegalStateException();
            }
            return this._created;
        }

        @Override // javax.servlet.http.HttpSession
        public String getId() throws IllegalStateException {
            return this.this$0._nodeIdInSessionId ? this._nodeId : this._clusterId;
        }

        protected String getNodeId() {
            return this._nodeId;
        }

        protected String getClusterId() {
            return this._clusterId;
        }

        @Override // javax.servlet.http.HttpSession
        public long getLastAccessedTime() throws IllegalStateException {
            if (this._invalid) {
                throw new IllegalStateException();
            }
            return this._lastAccessed;
        }

        @Override // javax.servlet.http.HttpSession
        public int getMaxInactiveInterval() {
            if (this._invalid) {
                throw new IllegalStateException();
            }
            return (int) (this._maxIdleMs / 1000);
        }

        @Override // javax.servlet.http.HttpSession
        public ServletContext getServletContext() {
            return this.this$0._context;
        }

        @Override // javax.servlet.http.HttpSession
        public HttpSessionContext getSessionContext() throws IllegalStateException {
            if (!this._invalid) {
                return AbstractSessionManager.__nullSessionContext;
            }
            throw new IllegalStateException();
        }

        @Override // javax.servlet.http.HttpSession
        public Object getValue(String str) throws IllegalStateException {
            return getAttribute(str);
        }

        @Override // javax.servlet.http.HttpSession
        public synchronized String[] getValueNames() throws IllegalStateException {
            String[] strArr;
            if (this._invalid) {
                throw new IllegalStateException();
            }
            if (this._values == null) {
                strArr = new String[0];
            } else {
                strArr = (String[]) this._values.keySet().toArray(new String[this._values.size()]);
            }
            return strArr;
        }

        protected void access(long j) {
            synchronized (this) {
                this._newSession = false;
                this._lastAccessed = this._accessed;
                this._accessed = j;
                this._requests++;
            }
        }

        protected void complete() {
            synchronized (this) {
                this._requests--;
                if (this._doInvalidate && this._requests <= 0) {
                    doInvalidate();
                }
            }
        }

        protected void timeout() throws IllegalStateException {
            this.this$0.removeSession(this, true);
            synchronized (this) {
                if (!this._invalid) {
                    if (this._requests <= 0) {
                        doInvalidate();
                    } else {
                        this._doInvalidate = true;
                    }
                }
            }
        }

        @Override // javax.servlet.http.HttpSession
        public void invalidate() throws IllegalStateException {
            this.this$0.removeSession(this, true);
            doInvalidate();
        }

        protected void doInvalidate() throws IllegalStateException {
            ArrayList<String> arrayList;
            Object objRemove;
            try {
                if (this._invalid) {
                    throw new IllegalStateException();
                }
                while (this._values != null && this._values.size() > 0) {
                    synchronized (this) {
                        arrayList = new ArrayList(this._values.keySet());
                    }
                    for (String str : arrayList) {
                        synchronized (this) {
                            objRemove = this._values.remove(str);
                        }
                        unbindValue(str, objRemove);
                        if (this.this$0._sessionAttributeListeners != null) {
                            HttpSessionBindingEvent httpSessionBindingEvent = new HttpSessionBindingEvent(this, str, objRemove);
                            int i = 0;
                            while (true) {
                                int i2 = i;
                                if (i2 < LazyList.size(this.this$0._sessionAttributeListeners)) {
                                    ((HttpSessionAttributeListener) LazyList.get(this.this$0._sessionAttributeListeners, i2)).attributeRemoved(httpSessionBindingEvent);
                                    i = i2 + 1;
                                }
                            }
                        }
                    }
                }
            } finally {
                this._invalid = true;
            }
        }

        public boolean isIdChanged() {
            return this._idChanged;
        }

        @Override // javax.servlet.http.HttpSession
        public boolean isNew() throws IllegalStateException {
            if (this._invalid) {
                throw new IllegalStateException();
            }
            return this._newSession;
        }

        @Override // javax.servlet.http.HttpSession
        public void putValue(String str, Object obj) throws IllegalStateException {
            setAttribute(str, obj);
        }

        @Override // javax.servlet.http.HttpSession
        public synchronized void removeAttribute(String str) {
            Object objRemove;
            if (this._invalid) {
                throw new IllegalStateException();
            }
            if (this._values != null && (objRemove = this._values.remove(str)) != null) {
                unbindValue(str, objRemove);
                if (this.this$0._sessionAttributeListeners != null) {
                    HttpSessionBindingEvent httpSessionBindingEvent = new HttpSessionBindingEvent(this, str, objRemove);
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= LazyList.size(this.this$0._sessionAttributeListeners)) {
                            break;
                        }
                        ((HttpSessionAttributeListener) LazyList.get(this.this$0._sessionAttributeListeners, i2)).attributeRemoved(httpSessionBindingEvent);
                        i = i2 + 1;
                    }
                }
            }
        }

        @Override // javax.servlet.http.HttpSession
        public void removeValue(String str) throws IllegalStateException {
            removeAttribute(str);
        }

        @Override // javax.servlet.http.HttpSession
        public synchronized void setAttribute(String str, Object obj) {
            if (obj == null) {
                removeAttribute(str);
            } else {
                if (this._invalid) {
                    throw new IllegalStateException();
                }
                if (this._values == null) {
                    this._values = newAttributeMap();
                }
                Object objPut = this._values.put(str, obj);
                if (objPut == null || !obj.equals(objPut)) {
                    unbindValue(str, objPut);
                    bindValue(str, obj);
                    if (this.this$0._sessionAttributeListeners != null) {
                        HttpSessionBindingEvent httpSessionBindingEvent = new HttpSessionBindingEvent(this, str, objPut == null ? obj : objPut);
                        for (int i = 0; i < LazyList.size(this.this$0._sessionAttributeListeners); i++) {
                            HttpSessionAttributeListener httpSessionAttributeListener = (HttpSessionAttributeListener) LazyList.get(this.this$0._sessionAttributeListeners, i);
                            if (objPut == null) {
                                httpSessionAttributeListener.attributeAdded(httpSessionBindingEvent);
                            } else if (obj == null) {
                                httpSessionAttributeListener.attributeRemoved(httpSessionBindingEvent);
                            } else {
                                httpSessionAttributeListener.attributeReplaced(httpSessionBindingEvent);
                            }
                        }
                    }
                }
            }
        }

        public void setIdChanged(boolean z) {
            this._idChanged = z;
        }

        @Override // javax.servlet.http.HttpSession
        public void setMaxInactiveInterval(int i) {
            this._maxIdleMs = ((long) i) * 1000;
        }

        public String toString() {
            return new StringBuffer().append(getClass().getName()).append(":").append(getId()).append("@").append(hashCode()).toString();
        }

        protected void bindValue(String str, Object obj) {
            if (obj != null && (obj instanceof HttpSessionBindingListener)) {
                ((HttpSessionBindingListener) obj).valueBound(new HttpSessionBindingEvent(this, str));
            }
        }

        protected boolean isValid() {
            return !this._invalid;
        }

        protected void cookieSet() {
            this._cookieSet = this._accessed;
        }

        protected void unbindValue(String str, Object obj) {
            if (obj != null && (obj instanceof HttpSessionBindingListener)) {
                ((HttpSessionBindingListener) obj).valueUnbound(new HttpSessionBindingEvent(this, str));
            }
        }

        protected synchronized void willPassivate() {
            HttpSessionEvent httpSessionEvent = new HttpSessionEvent(this);
            for (Object obj : this._values.values()) {
                if (obj instanceof HttpSessionActivationListener) {
                    ((HttpSessionActivationListener) obj).sessionWillPassivate(httpSessionEvent);
                }
            }
        }

        protected synchronized void didActivate() {
            HttpSessionEvent httpSessionEvent = new HttpSessionEvent(this);
            for (Object obj : this._values.values()) {
                if (obj instanceof HttpSessionActivationListener) {
                    ((HttpSessionActivationListener) obj).sessionDidActivate(httpSessionEvent);
                }
            }
        }
    }
}
