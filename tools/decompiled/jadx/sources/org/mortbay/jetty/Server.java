package org.mortbay.jetty;

import com.google.gdata.client.authn.oauth.OAuthParameters;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import org.mortbay.component.Container;
import org.mortbay.component.LifeCycle;
import org.mortbay.jetty.bio.SocketConnector;
import org.mortbay.jetty.handler.HandlerCollection;
import org.mortbay.jetty.handler.HandlerWrapper;
import org.mortbay.jetty.security.UserRealm;
import org.mortbay.log.Log;
import org.mortbay.thread.QueuedThreadPool;
import org.mortbay.thread.ThreadPool;
import org.mortbay.util.Attributes;
import org.mortbay.util.AttributesMap;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiException;

/* JADX INFO: loaded from: classes3.dex */
public class Server extends HandlerWrapper implements Attributes {
    public static final String SNAPSHOT_VERSION = "6.1-SNAPSHOT";
    public static final String UNKNOWN_VERSION = "6.1.x";
    private static String _version;
    static Class class$java$lang$Runtime;
    static Class class$java$lang$Thread;
    static Class class$org$mortbay$jetty$Connector;
    static Class class$org$mortbay$jetty$Server;
    static Class class$org$mortbay$jetty$Server$Graceful;
    static Class class$org$mortbay$jetty$security$UserRealm;
    private static ShutdownHookThread hookThread = new ShutdownHookThread(null);
    private Connector[] _connectors;
    private UserRealm[] _realms;
    private SessionIdManager _sessionIdManager;
    private ThreadPool _threadPool;
    private Container _container = new Container();
    private boolean _sendServerVersion = true;
    private boolean _sendDateHeader = false;
    private AttributesMap _attributes = new AttributesMap();
    private List _dependentLifeCycles = new ArrayList();
    private int _graceful = 0;

    /* JADX INFO: renamed from: org.mortbay.jetty.Server$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    public interface Graceful {
        void setShutdown(boolean z);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    static {
        /*
            org.mortbay.jetty.Server$ShutdownHookThread r0 = new org.mortbay.jetty.Server$ShutdownHookThread
            r1 = 0
            r0.<init>(r1)
            org.mortbay.jetty.Server.hookThread = r0
            java.lang.Class r0 = org.mortbay.jetty.Server.class$org$mortbay$jetty$Server
            if (r0 != 0) goto L4a
            java.lang.String r0 = "org.mortbay.jetty.Server"
            java.lang.Class r0 = class$(r0)
            org.mortbay.jetty.Server.class$org$mortbay$jetty$Server = r0
        L15:
            java.lang.Package r0 = r0.getPackage()
            if (r0 == 0) goto L53
            java.lang.Class r0 = org.mortbay.jetty.Server.class$org$mortbay$jetty$Server
            if (r0 != 0) goto L4d
            java.lang.String r0 = "org.mortbay.jetty.Server"
            java.lang.Class r0 = class$(r0)
            org.mortbay.jetty.Server.class$org$mortbay$jetty$Server = r0
        L28:
            java.lang.Package r0 = r0.getPackage()
            java.lang.String r0 = r0.getImplementationVersion()
            if (r0 == 0) goto L53
            java.lang.Class r0 = org.mortbay.jetty.Server.class$org$mortbay$jetty$Server
            if (r0 != 0) goto L50
            java.lang.String r0 = "org.mortbay.jetty.Server"
            java.lang.Class r0 = class$(r0)
            org.mortbay.jetty.Server.class$org$mortbay$jetty$Server = r0
        L3f:
            java.lang.Package r0 = r0.getPackage()
            java.lang.String r0 = r0.getImplementationVersion()
        L47:
            org.mortbay.jetty.Server._version = r0
            return
        L4a:
            java.lang.Class r0 = org.mortbay.jetty.Server.class$org$mortbay$jetty$Server
            goto L15
        L4d:
            java.lang.Class r0 = org.mortbay.jetty.Server.class$org$mortbay$jetty$Server
            goto L28
        L50:
            java.lang.Class r0 = org.mortbay.jetty.Server.class$org$mortbay$jetty$Server
            goto L3f
        L53:
            java.lang.String r0 = "6.1.x"
            goto L47
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.Server.<clinit>():void");
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public Server() {
        setServer(this);
    }

    public Server(int i) {
        setServer(this);
        SocketConnector socketConnector = new SocketConnector();
        socketConnector.setPort(i);
        setConnectors(new Connector[]{socketConnector});
    }

    public static String getVersion() {
        return _version;
    }

    public Container getContainer() {
        return this._container;
    }

    public boolean getStopAtShutdown() {
        return hookThread.contains(this);
    }

    public void setStopAtShutdown(boolean z) throws Throwable {
        if (z) {
            hookThread.add(this);
        } else {
            hookThread.remove(this);
        }
    }

    public Connector[] getConnectors() {
        return this._connectors;
    }

    public void addConnector(Connector connector) throws Throwable {
        Class clsClass$;
        Connector[] connectors = getConnectors();
        if (class$org$mortbay$jetty$Connector == null) {
            clsClass$ = class$("org.mortbay.jetty.Connector");
            class$org$mortbay$jetty$Connector = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$Connector;
        }
        setConnectors((Connector[]) LazyList.addToArray(connectors, connector, clsClass$));
    }

    public void removeConnector(Connector connector) {
        setConnectors((Connector[]) LazyList.removeFromArray(getConnectors(), connector));
    }

    public void setConnectors(Connector[] connectorArr) {
        if (connectorArr != null) {
            for (Connector connector : connectorArr) {
                connector.setServer(this);
            }
        }
        this._container.update((Object) this, (Object[]) this._connectors, (Object[]) connectorArr, "connector");
        this._connectors = connectorArr;
    }

    public ThreadPool getThreadPool() {
        return this._threadPool;
    }

    public void setThreadPool(ThreadPool threadPool) {
        this._container.update((Object) this, (Object) this._threadPool, (Object) threadPool, "threadpool", true);
        this._threadPool = threadPool;
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        Log.info(new StringBuffer().append("jetty-").append(_version).toString());
        HttpGenerator.setServerVersion(_version);
        MultiException multiException = new MultiException();
        for (int i = 0; this._realms != null && i < this._realms.length; i++) {
            if (this._realms[i] instanceof LifeCycle) {
                ((LifeCycle) this._realms[i]).start();
            }
        }
        Iterator it = this._dependentLifeCycles.iterator();
        while (it.hasNext()) {
            try {
                ((LifeCycle) it.next()).start();
            } catch (Throwable th) {
                multiException.add(th);
            }
        }
        if (this._threadPool == null) {
            setThreadPool(new QueuedThreadPool());
        }
        if (this._sessionIdManager != null) {
            this._sessionIdManager.start();
        }
        try {
            if (this._threadPool instanceof LifeCycle) {
                ((LifeCycle) this._threadPool).start();
            }
        } catch (Throwable th2) {
            multiException.add(th2);
        }
        try {
            super.doStart();
        } catch (Throwable th3) {
            Log.warn("Error starting handlers", th3);
        }
        if (this._connectors != null) {
            for (int i2 = 0; i2 < this._connectors.length; i2++) {
                try {
                    this._connectors[i2].start();
                } catch (Throwable th4) {
                    multiException.add(th4);
                }
            }
        }
        multiException.ifExceptionThrow();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:0|2|(4:7|(2:9|75)(1:76)|10|3)|74|11|(8:13|(2:15|(2:16|(7:18|71|19|78|20|80|79)(1:77)))(0)|23|(1:25)(1:30)|26|(2:29|27)|82|31)|32|(12:34|(2:35|(6:65|37|83|38|85|84)(0))|41|42|(1:44)|63|45|(1:47)|48|(3:50|(5:67|53|89|88|51)|87)|61|62)(0)|69|41|42|(0)|63|45|(0)|48|(0)|61|62) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d8, code lost:
    
        r3.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00dc, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00dd, code lost:
    
        r3.add(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a7 A[Catch: Throwable -> 0x00dc, TRY_LEAVE, TryCatch #0 {Throwable -> 0x00dc, blocks: (B:45:0x00a1, B:47:0x00a7), top: B:63:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b6  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void doStop() throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.Server.doStop():void");
    }

    public void handle(HttpConnection httpConnection) throws ServletException, IOException {
        String pathInfo = httpConnection.getRequest().getPathInfo();
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("REQUEST ").append(pathInfo).append(" on ").append(httpConnection).toString());
            handle(pathInfo, httpConnection.getRequest(), httpConnection.getResponse(), 1);
            Log.debug(new StringBuffer().append("RESPONSE ").append(pathInfo).append("  ").append(httpConnection.getResponse().getStatus()).toString());
            return;
        }
        handle(pathInfo, httpConnection.getRequest(), httpConnection.getResponse(), 1);
    }

    public void join() throws InterruptedException {
        getThreadPool().join();
    }

    public UserRealm[] getUserRealms() {
        return this._realms;
    }

    public void setUserRealms(UserRealm[] userRealmArr) {
        this._container.update((Object) this, (Object[]) this._realms, (Object[]) userRealmArr, OAuthParameters.REALM_KEY, true);
        this._realms = userRealmArr;
    }

    public void addUserRealm(UserRealm userRealm) throws Throwable {
        Class clsClass$;
        UserRealm[] userRealms = getUserRealms();
        if (class$org$mortbay$jetty$security$UserRealm == null) {
            clsClass$ = class$("org.mortbay.jetty.security.UserRealm");
            class$org$mortbay$jetty$security$UserRealm = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$security$UserRealm;
        }
        setUserRealms((UserRealm[]) LazyList.addToArray(userRealms, userRealm, clsClass$));
    }

    public void removeUserRealm(UserRealm userRealm) {
        setUserRealms((UserRealm[]) LazyList.removeFromArray(getUserRealms(), userRealm));
    }

    public SessionIdManager getSessionIdManager() {
        return this._sessionIdManager;
    }

    public void setSessionIdManager(SessionIdManager sessionIdManager) {
        this._container.update((Object) this, (Object) this._sessionIdManager, (Object) sessionIdManager, "sessionIdManager", true);
        this._sessionIdManager = sessionIdManager;
    }

    public void setSendServerVersion(boolean z) {
        this._sendServerVersion = z;
    }

    public boolean getSendServerVersion() {
        return this._sendServerVersion;
    }

    public void setSendDateHeader(boolean z) {
        this._sendDateHeader = z;
    }

    public boolean getSendDateHeader() {
        return this._sendDateHeader;
    }

    public void addLifeCycle(LifeCycle lifeCycle) {
        if (lifeCycle != null) {
            if (!this._dependentLifeCycles.contains(lifeCycle)) {
                this._dependentLifeCycles.add(lifeCycle);
                this._container.addBean(lifeCycle);
            }
            try {
                if (isStarted()) {
                    lifeCycle.start();
                }
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public void removeLifeCycle(LifeCycle lifeCycle) {
        if (lifeCycle != null) {
            this._dependentLifeCycles.remove(lifeCycle);
            this._container.removeBean(lifeCycle);
        }
    }

    class ShutdownHookThread extends Thread {
        private boolean hooked;
        private ArrayList servers;

        private ShutdownHookThread() {
            this.hooked = false;
            this.servers = new ArrayList();
        }

        ShutdownHookThread(AnonymousClass1 anonymousClass1) {
            this();
        }

        private void createShutdownHook() throws Throwable {
            Class cls;
            Class<?> clsClass$;
            if (!Boolean.getBoolean("JETTY_NO_SHUTDOWN_HOOK") && !this.hooked) {
                try {
                    if (Server.class$java$lang$Runtime == null) {
                        Class clsClass$2 = Server.class$("java.lang.Runtime");
                        Server.class$java$lang$Runtime = clsClass$2;
                        cls = clsClass$2;
                    } else {
                        cls = Server.class$java$lang$Runtime;
                    }
                    Class<?>[] clsArr = new Class[1];
                    if (Server.class$java$lang$Thread == null) {
                        clsClass$ = Server.class$("java.lang.Thread");
                        Server.class$java$lang$Thread = clsClass$;
                    } else {
                        clsClass$ = Server.class$java$lang$Thread;
                    }
                    clsArr[0] = clsClass$;
                    cls.getMethod("addShutdownHook", clsArr).invoke(Runtime.getRuntime(), this);
                    this.hooked = true;
                } catch (Exception e2) {
                    if (Log.isDebugEnabled()) {
                        Log.debug("No shutdown hook in JVM ", e2);
                    }
                }
            }
        }

        public boolean add(Server server) throws Throwable {
            createShutdownHook();
            return this.servers.add(server);
        }

        public boolean contains(Server server) {
            return this.servers.contains(server);
        }

        public boolean addAll(Collection collection) throws Throwable {
            createShutdownHook();
            return this.servers.addAll(collection);
        }

        public void clear() throws Throwable {
            createShutdownHook();
            this.servers.clear();
        }

        public boolean remove(Server server) throws Throwable {
            createShutdownHook();
            return this.servers.remove(server);
        }

        public boolean removeAll(Collection collection) throws Throwable {
            createShutdownHook();
            return this.servers.removeAll(collection);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("Shutdown");
            Log.info("Shutdown hook executing");
            for (Server server : this.servers) {
                if (server != null) {
                    try {
                        server.stop();
                    } catch (Exception e2) {
                        Log.warn(e2);
                    }
                    Log.info("Shutdown hook complete");
                    try {
                        Thread.sleep(1000L);
                    } catch (Exception e3) {
                        Log.warn(e3);
                    }
                }
            }
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.HandlerContainer
    public void addHandler(Handler handler) {
        if (getHandler() == null) {
            setHandler(handler);
        } else {
            if (getHandler() instanceof HandlerCollection) {
                ((HandlerCollection) getHandler()).addHandler(handler);
                return;
            }
            HandlerCollection handlerCollection = new HandlerCollection();
            handlerCollection.setHandlers(new Handler[]{getHandler(), handler});
            setHandler(handlerCollection);
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.HandlerContainer
    public void removeHandler(Handler handler) {
        if (getHandler() instanceof HandlerCollection) {
            ((HandlerCollection) getHandler()).removeHandler(handler);
        }
    }

    public Handler[] getHandlers() {
        if (getHandler() instanceof HandlerCollection) {
            return ((HandlerCollection) getHandler()).getHandlers();
        }
        return null;
    }

    public void setHandlers(Handler[] handlerArr) {
        HandlerCollection handlerCollection;
        if (getHandler() instanceof HandlerCollection) {
            handlerCollection = (HandlerCollection) getHandler();
        } else {
            handlerCollection = new HandlerCollection();
            setHandler(handlerCollection);
        }
        handlerCollection.setHandlers(handlerArr);
    }

    @Override // org.mortbay.util.Attributes
    public void clearAttributes() {
        this._attributes.clearAttributes();
    }

    @Override // org.mortbay.util.Attributes
    public Object getAttribute(String str) {
        return this._attributes.getAttribute(str);
    }

    @Override // org.mortbay.util.Attributes
    public Enumeration getAttributeNames() {
        return AttributesMap.getAttributeNamesCopy(this._attributes);
    }

    @Override // org.mortbay.util.Attributes
    public void removeAttribute(String str) {
        this._attributes.removeAttribute(str);
    }

    @Override // org.mortbay.util.Attributes
    public void setAttribute(String str, Object obj) {
        this._attributes.setAttribute(str, obj);
    }

    public int getGracefulShutdown() {
        return this._graceful;
    }

    public void setGracefulShutdown(int i) {
        this._graceful = i;
    }
}
