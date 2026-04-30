package org.mortbay.jetty.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.ServletResponse;
import javax.servlet.UnavailableException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.io.RuntimeIOException;
import org.mortbay.jetty.EofException;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpException;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.RetryRequest;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.handler.AbstractHandler;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiException;
import org.mortbay.util.MultiMap;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ServletHandler extends AbstractHandler {
    public static final String __DEFAULT_SERVLET = "default";
    public static final String __J_S_CONTEXT_TEMPDIR = "javax.servlet.context.tempdir";
    public static final String __J_S_ERROR_EXCEPTION = "javax.servlet.error.exception";
    public static final String __J_S_ERROR_EXCEPTION_TYPE = "javax.servlet.error.exception_type";
    public static final String __J_S_ERROR_MESSAGE = "javax.servlet.error.message";
    public static final String __J_S_ERROR_REQUEST_URI = "javax.servlet.error.request_uri";
    public static final String __J_S_ERROR_SERVLET_NAME = "javax.servlet.error.servlet_name";
    public static final String __J_S_ERROR_STATUS_CODE = "javax.servlet.error.status_code";
    static Class class$org$mortbay$jetty$servlet$FilterHolder;
    static Class class$org$mortbay$jetty$servlet$FilterMapping;
    static Class class$org$mortbay$jetty$servlet$ServletHolder;
    static Class class$org$mortbay$jetty$servlet$ServletMapping;
    protected transient MruCache[] _chainCache;
    private ContextHandler _contextHandler;
    private FilterMapping[] _filterMappings;
    private transient MultiMap _filterNameMappings;
    private transient List _filterPathMappings;
    private FilterHolder[] _filters;
    private ContextHandler.SContext _servletContext;
    private ServletMapping[] _servletMappings;
    private transient PathMap _servletPathMap;
    private ServletHolder[] _servlets;
    private boolean _filterChainsCached = true;
    private int _maxFilterChainsCacheSize = 1000;
    private boolean _startWithUnavailable = true;
    private transient Map _filterNameMap = new HashMap();
    private transient Map _servletNameMap = new HashMap();

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        if (getServer() != null && getServer() != server) {
            getServer().getContainer().update((Object) this, (Object[]) this._filters, (Object[]) null, "filter", true);
            getServer().getContainer().update((Object) this, (Object[]) this._filterMappings, (Object[]) null, "filterMapping", true);
            getServer().getContainer().update((Object) this, (Object[]) this._servlets, (Object[]) null, "servlet", true);
            getServer().getContainer().update((Object) this, (Object[]) this._servletMappings, (Object[]) null, "servletMapping", true);
        }
        if (server != null && getServer() != server) {
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._filters, "filter", true);
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._filterMappings, "filterMapping", true);
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._servlets, "servlet", true);
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._servletMappings, "servletMapping", true);
        }
        super.setServer(server);
        invalidateChainsCache();
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected synchronized void doStart() throws Exception {
        synchronized (this) {
            this._servletContext = ContextHandler.getCurrentContext();
            this._contextHandler = this._servletContext != null ? this._servletContext.getContextHandler() : null;
            updateNameMappings();
            updateMappings();
            if (this._filterChainsCached) {
                this._chainCache = new MruCache[]{null, new MruCache(this, this._maxFilterChainsCacheSize), new MruCache(this, this._maxFilterChainsCacheSize), null, new MruCache(this, this._maxFilterChainsCacheSize), null, null, null, new MruCache(this, this._maxFilterChainsCacheSize)};
            }
            super.doStart();
            if (this._contextHandler == null || !(this._contextHandler instanceof Context)) {
                initialize();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025 A[Catch: all -> 0x004c, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0008, B:8:0x000f, B:11:0x0019, B:12:0x0021, B:14:0x0025, B:17:0x002c, B:20:0x0036, B:21:0x003e), top: B:31:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e A[Catch: all -> 0x004c, EDGE_INSN: B:38:0x003e->B:21:0x003e BREAK  A[LOOP:1: B:15:0x0028->B:40:0x0028], TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0008, B:8:0x000f, B:11:0x0019, B:12:0x0021, B:14:0x0025, B:17:0x002c, B:20:0x0036, B:21:0x003e), top: B:31:0x0001, inners: #0, #1 }] */
    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected synchronized void doStop() throws java.lang.Exception {
        /*
            r3 = this;
            monitor-enter(r3)
            super.doStop()     // Catch: java.lang.Throwable -> L4c
            org.mortbay.jetty.servlet.FilterHolder[] r0 = r3._filters     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L21
            org.mortbay.jetty.servlet.FilterHolder[] r0 = r3._filters     // Catch: java.lang.Throwable -> L4c
            int r0 = r0.length     // Catch: java.lang.Throwable -> L4c
        Lb:
            int r1 = r0 + (-1)
            if (r0 <= 0) goto L21
            org.mortbay.jetty.servlet.FilterHolder[] r0 = r3._filters     // Catch: java.lang.Exception -> L18 java.lang.Throwable -> L4c
            r0 = r0[r1]     // Catch: java.lang.Exception -> L18 java.lang.Throwable -> L4c
            r0.stop()     // Catch: java.lang.Exception -> L18 java.lang.Throwable -> L4c
            r0 = r1
            goto Lb
        L18:
            r0 = move-exception
            java.lang.String r2 = "EXCEPTION "
            org.mortbay.log.Log.warn(r2, r0)     // Catch: java.lang.Throwable -> L4c
            r0 = r1
            goto Lb
        L21:
            org.mortbay.jetty.servlet.ServletHolder[] r0 = r3._servlets     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L3e
            org.mortbay.jetty.servlet.ServletHolder[] r0 = r3._servlets     // Catch: java.lang.Throwable -> L4c
            int r0 = r0.length     // Catch: java.lang.Throwable -> L4c
        L28:
            int r1 = r0 + (-1)
            if (r0 <= 0) goto L3e
            org.mortbay.jetty.servlet.ServletHolder[] r0 = r3._servlets     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            r0 = r0[r1]     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            r0.stop()     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            r0 = r1
            goto L28
        L35:
            r0 = move-exception
            java.lang.String r2 = "EXCEPTION "
            org.mortbay.log.Log.warn(r2, r0)     // Catch: java.lang.Throwable -> L4c
            r0 = r1
            goto L28
        L3e:
            r0 = 0
            r3._filterPathMappings = r0     // Catch: java.lang.Throwable -> L4c
            r0 = 0
            r3._filterNameMappings = r0     // Catch: java.lang.Throwable -> L4c
            r0 = 0
            r3._servletPathMap = r0     // Catch: java.lang.Throwable -> L4c
            r0 = 0
            r3._chainCache = r0     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r3)
            return
        L4c:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.ServletHandler.doStop():void");
    }

    public Object getContextLog() {
        return null;
    }

    public FilterMapping[] getFilterMappings() {
        return this._filterMappings;
    }

    public FilterHolder[] getFilters() {
        return this._filters;
    }

    public PathMap.Entry getHolderEntry(String str) {
        if (this._servletPathMap == null) {
            return null;
        }
        return this._servletPathMap.getMatch(str);
    }

    public boolean matchesPath(String str) {
        return this._servletPathMap.containsMatch(str);
    }

    public RequestDispatcher getRequestDispatcher(String str) {
        String str2;
        String strSubstring;
        if (str == null || !str.startsWith(URIUtil.SLASH)) {
            return null;
        }
        try {
            int iIndexOf = str.indexOf(63);
            if (iIndexOf > 0) {
                String strSubstring2 = str.substring(iIndexOf + 1);
                String strSubstring3 = str.substring(0, iIndexOf);
                str2 = strSubstring2;
                strSubstring = strSubstring3;
            } else {
                str2 = null;
                strSubstring = str;
            }
            int iIndexOf2 = strSubstring.indexOf(59);
            if (iIndexOf2 > 0) {
                strSubstring = strSubstring.substring(0, iIndexOf2);
            }
            return new Dispatcher(this._contextHandler, URIUtil.addPaths(this._contextHandler.getContextPath(), strSubstring), URIUtil.canonicalPath(URIUtil.decodePath(strSubstring)), str2);
        } catch (Exception e2) {
            Log.ignore(e2);
            return null;
        }
    }

    public ServletContext getServletContext() {
        return this._servletContext;
    }

    public ServletMapping[] getServletMappings() {
        return this._servletMappings;
    }

    public ServletHolder[] getServlets() {
        return this._servlets;
    }

    public ServletHolder getServlet(String str) {
        return (ServletHolder) this._servletNameMap.get(str);
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0125: MOVE (r6 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:49:0x0125 */
    @Override // org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws Throwable {
        Throwable th;
        ServletRequestEvent servletRequestEvent;
        FilterChain filterChain;
        ServletHolder servletHolder;
        ServletRequestEvent servletRequestEvent2;
        ServletHolder servletHolder2;
        FilterChain filterChain2;
        if (!isStarted()) {
            return;
        }
        Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
        String servletName = request.getServletName();
        String servletPath = request.getServletPath();
        String pathInfo = request.getPathInfo();
        Map roleMap = request.getRoleMap();
        Object obj = null;
        ServletRequestEvent servletRequestEvent3 = null;
        try {
            try {
                try {
                    if (str.startsWith(URIUtil.SLASH)) {
                        PathMap.Entry holderEntry = getHolderEntry(str);
                        if (holderEntry != null) {
                            ServletHolder servletHolder3 = (ServletHolder) holderEntry.getValue();
                            request.setServletName(servletHolder3.getName());
                            request.setRoleMap(servletHolder3.getRoleMap());
                            if (Log.isDebugEnabled()) {
                                Log.debug(new StringBuffer().append("servlet=").append(servletHolder3).toString());
                            }
                            String str2 = (String) holderEntry.getKey();
                            String mapped = holderEntry.getMapped() != null ? holderEntry.getMapped() : PathMap.pathMatch(str2, str);
                            String strPathInfo = PathMap.pathInfo(str2, str);
                            if (i == 4) {
                                request.setAttribute(Dispatcher.__INCLUDE_SERVLET_PATH, mapped);
                                request.setAttribute(Dispatcher.__INCLUDE_PATH_INFO, strPathInfo);
                            } else {
                                request.setServletPath(mapped);
                                request.setPathInfo(strPathInfo);
                            }
                            if (servletHolder3 == null || this._filterMappings == null || this._filterMappings.length <= 0) {
                                servletHolder2 = servletHolder3;
                                filterChain2 = null;
                            } else {
                                servletHolder2 = servletHolder3;
                                filterChain2 = getFilterChain(i, str, servletHolder3);
                            }
                        } else {
                            servletHolder2 = null;
                            filterChain2 = null;
                        }
                        filterChain = filterChain2;
                        servletHolder = servletHolder2;
                    } else {
                        ServletHolder servletHolder4 = (ServletHolder) this._servletNameMap.get(str);
                        if (servletHolder4 == null || this._filterMappings == null || this._filterMappings.length <= 0) {
                            filterChain = null;
                            servletHolder = servletHolder4;
                        } else {
                            request.setServletName(servletHolder4.getName());
                            filterChain = getFilterChain(i, null, servletHolder4);
                            servletHolder = servletHolder4;
                        }
                    }
                    if (Log.isDebugEnabled()) {
                        Log.debug(new StringBuffer().append("chain=").append(filterChain).toString());
                        Log.debug(new StringBuffer().append("servlet holder=").append(servletHolder).toString());
                    }
                    Object objTakeRequestListeners = request.takeRequestListeners();
                    if (objTakeRequestListeners != null) {
                        try {
                            servletRequestEvent2 = new ServletRequestEvent(getServletContext(), httpServletRequest);
                            try {
                                int size = LazyList.size(objTakeRequestListeners);
                                for (int i2 = 0; i2 < size; i2++) {
                                    ((ServletRequestListener) LazyList.get(objTakeRequestListeners, i2)).requestInitialized(servletRequestEvent2);
                                }
                            } catch (Error e2) {
                                e = e2;
                                servletRequestEvent3 = servletRequestEvent2;
                                obj = objTakeRequestListeners;
                                if (i != 1) {
                                    throw e;
                                }
                                Log.warn(new StringBuffer().append("Error for ").append(httpServletRequest.getRequestURI()).toString(), (Throwable) e);
                                if (Log.isDebugEnabled()) {
                                    Log.debug(httpServletRequest.toString());
                                }
                                if (!httpServletResponse.isCommitted()) {
                                    httpServletRequest.setAttribute(__J_S_ERROR_EXCEPTION_TYPE, e.getClass());
                                    httpServletRequest.setAttribute(__J_S_ERROR_EXCEPTION, e);
                                    httpServletResponse.sendError(500, e.getMessage());
                                } else if (Log.isDebugEnabled()) {
                                    Log.debug("Response already committed for handling ", e);
                                }
                                if (obj != null) {
                                    int size2 = LazyList.size(obj);
                                    while (true) {
                                        int i3 = size2 - 1;
                                        if (size2 <= 0) {
                                            break;
                                        }
                                        ((ServletRequestListener) LazyList.get(obj, i3)).requestDestroyed(servletRequestEvent3);
                                        size2 = i3;
                                    }
                                }
                                request.setServletName(servletName);
                                request.setRoleMap(roleMap);
                                if (i != 4) {
                                    request.setServletPath(servletPath);
                                    request.setPathInfo(pathInfo);
                                    return;
                                }
                                return;
                            } catch (RuntimeIOException e3) {
                                throw e3;
                            } catch (EofException e4) {
                                throw e4;
                            } catch (RetryRequest e5) {
                                e = e5;
                                request.setHandled(false);
                                throw e;
                            } catch (Exception e6) {
                                e = e6;
                                servletRequestEvent3 = servletRequestEvent2;
                                obj = objTakeRequestListeners;
                                if (i != 1) {
                                    if (e instanceof IOException) {
                                        throw ((IOException) e);
                                    }
                                    if (e instanceof RuntimeException) {
                                        throw ((RuntimeException) e);
                                    }
                                    if (e instanceof ServletException) {
                                        throw ((ServletException) e);
                                    }
                                }
                                if (e instanceof UnavailableException) {
                                    Log.debug(e);
                                } else if (e instanceof ServletException) {
                                    Log.debug(e);
                                    Throwable rootCause = ((ServletException) e).getRootCause();
                                    if (rootCause != e && rootCause != null) {
                                        e = rootCause;
                                    }
                                }
                                if (e instanceof RetryRequest) {
                                    request.setHandled(false);
                                    throw ((RetryRequest) e);
                                }
                                if (e instanceof HttpException) {
                                    throw ((HttpException) e);
                                }
                                if (e instanceof RuntimeIOException) {
                                    throw ((RuntimeIOException) e);
                                }
                                if (e instanceof EofException) {
                                    throw ((EofException) e);
                                }
                                if (Log.isDebugEnabled()) {
                                    Log.warn(httpServletRequest.getRequestURI(), e);
                                    Log.debug(httpServletRequest.toString());
                                } else if ((e instanceof IOException) || (e instanceof UnavailableException)) {
                                    Log.warn(new StringBuffer().append(httpServletRequest.getRequestURI()).append(": ").append(e).toString());
                                } else {
                                    Log.warn(httpServletRequest.getRequestURI(), e);
                                }
                                if (!httpServletResponse.isCommitted()) {
                                    httpServletRequest.setAttribute(__J_S_ERROR_EXCEPTION_TYPE, e.getClass());
                                    httpServletRequest.setAttribute(__J_S_ERROR_EXCEPTION, e);
                                    if (!(e instanceof UnavailableException)) {
                                        httpServletResponse.sendError(500, e.getMessage());
                                    } else if (((UnavailableException) e).isPermanent()) {
                                        httpServletResponse.sendError(404, e.getMessage());
                                    } else {
                                        httpServletResponse.sendError(503, e.getMessage());
                                    }
                                } else if (Log.isDebugEnabled()) {
                                    Log.debug(new StringBuffer().append("Response already committed for handling ").append(e).toString());
                                }
                                if (obj != null) {
                                    int size3 = LazyList.size(obj);
                                    while (true) {
                                        int i4 = size3 - 1;
                                        if (size3 <= 0) {
                                            break;
                                        }
                                        ((ServletRequestListener) LazyList.get(obj, i4)).requestDestroyed(servletRequestEvent3);
                                        size3 = i4;
                                    }
                                }
                                request.setServletName(servletName);
                                request.setRoleMap(roleMap);
                                if (i != 4) {
                                    request.setServletPath(servletPath);
                                    request.setPathInfo(pathInfo);
                                    return;
                                }
                                return;
                            }
                        } catch (Error e7) {
                            e = e7;
                            obj = objTakeRequestListeners;
                        } catch (RuntimeIOException e8) {
                            throw e8;
                        } catch (EofException e9) {
                            throw e9;
                        } catch (RetryRequest e10) {
                            e = e10;
                        } catch (Exception e11) {
                            e = e11;
                            obj = objTakeRequestListeners;
                        } catch (Throwable th2) {
                            th = th2;
                            obj = objTakeRequestListeners;
                            if (obj != null) {
                                int size4 = LazyList.size(obj);
                                while (true) {
                                    int i5 = size4 - 1;
                                    if (size4 <= 0) {
                                        break;
                                    }
                                    ((ServletRequestListener) LazyList.get(obj, i5)).requestDestroyed(servletRequestEvent3);
                                    size4 = i5;
                                }
                            }
                            request.setServletName(servletName);
                            request.setRoleMap(roleMap);
                            if (i == 4) {
                                throw th;
                            }
                            request.setServletPath(servletPath);
                            request.setPathInfo(pathInfo);
                            throw th;
                        }
                    } else {
                        servletRequestEvent2 = null;
                    }
                    if (servletHolder != null) {
                        request.setHandled(true);
                        if (filterChain != null) {
                            filterChain.doFilter(httpServletRequest, httpServletResponse);
                        } else {
                            servletHolder.handle(httpServletRequest, httpServletResponse);
                        }
                    } else {
                        notFound(httpServletRequest, httpServletResponse);
                    }
                    if (objTakeRequestListeners != null) {
                        int size5 = LazyList.size(objTakeRequestListeners);
                        while (true) {
                            int i6 = size5 - 1;
                            if (size5 <= 0) {
                                break;
                            }
                            ((ServletRequestListener) LazyList.get(objTakeRequestListeners, i6)).requestDestroyed(servletRequestEvent2);
                            size5 = i6;
                        }
                    }
                    request.setServletName(servletName);
                    request.setRoleMap(roleMap);
                    if (i != 4) {
                        request.setServletPath(servletPath);
                        request.setPathInfo(pathInfo);
                    }
                } catch (Throwable th3) {
                    servletRequestEvent3 = servletRequestEvent;
                    obj = null;
                    th = th3;
                }
            } catch (Error e12) {
                e = e12;
            } catch (RuntimeIOException e13) {
                throw e13;
            } catch (EofException e14) {
            } catch (RetryRequest e15) {
                e = e15;
            } catch (Exception e16) {
                e = e16;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private FilterChain getFilterChain(int i, String str, ServletHolder servletHolder) {
        Object obj;
        String name = str == null ? servletHolder.getName() : str;
        if (this._filterChainsCached && this._chainCache != null) {
            synchronized (this) {
                if (this._chainCache[i].containsKey(name)) {
                    return (FilterChain) this._chainCache[i].get(name);
                }
            }
        }
        if (str == null || this._filterPathMappings == null) {
            obj = null;
        } else {
            int i2 = 0;
            Object objAdd = null;
            while (i2 < this._filterPathMappings.size()) {
                FilterMapping filterMapping = (FilterMapping) this._filterPathMappings.get(i2);
                i2++;
                objAdd = filterMapping.appliesTo(str, i) ? LazyList.add(objAdd, filterMapping.getFilterHolder()) : objAdd;
            }
            obj = objAdd;
        }
        if (servletHolder != null && this._filterNameMappings != null && this._filterNameMappings.size() > 0 && this._filterNameMappings.size() > 0) {
            Object obj2 = this._filterNameMappings.get(servletHolder.getName());
            Object objAdd2 = obj;
            for (int i3 = 0; i3 < LazyList.size(obj2); i3++) {
                FilterMapping filterMapping2 = (FilterMapping) LazyList.get(obj2, i3);
                if (filterMapping2.appliesTo(i)) {
                    objAdd2 = LazyList.add(objAdd2, filterMapping2.getFilterHolder());
                }
            }
            Object obj3 = this._filterNameMappings.get("*");
            for (int i4 = 0; i4 < LazyList.size(obj3); i4++) {
                FilterMapping filterMapping3 = (FilterMapping) LazyList.get(obj3, i4);
                if (filterMapping3.appliesTo(i)) {
                    objAdd2 = LazyList.add(objAdd2, filterMapping3.getFilterHolder());
                }
            }
            obj = objAdd2;
        }
        if (obj == null) {
            return null;
        }
        if (this._filterChainsCached) {
            CachedChain cachedChain = LazyList.size(obj) > 0 ? new CachedChain(this, obj, servletHolder) : null;
            synchronized (this) {
                this._chainCache[i].put(name, cachedChain);
            }
            return cachedChain;
        }
        if (LazyList.size(obj) > 0) {
            return new Chain(this, obj, servletHolder);
        }
        return null;
    }

    class MruCache extends LinkedHashMap {
        private int maxEntries = 1000;
        private final ServletHandler this$0;

        public MruCache(ServletHandler servletHandler) {
            this.this$0 = servletHandler;
        }

        public MruCache(ServletHandler servletHandler, int i) {
            this.this$0 = servletHandler;
            setMaxEntries(i);
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry entry) {
            return size() > this.maxEntries;
        }

        public void setMaxEntries(int i) {
            this.maxEntries = i;
        }
    }

    private void invalidateChainsCache() {
        this._chainCache = new MruCache[]{null, new MruCache(this, this._maxFilterChainsCacheSize), new MruCache(this, this._maxFilterChainsCacheSize), null, new MruCache(this, this._maxFilterChainsCacheSize), null, null, null, new MruCache(this, this._maxFilterChainsCacheSize)};
    }

    public boolean isInitializeAtStart() {
        return false;
    }

    public void setInitializeAtStart(boolean z) {
    }

    public boolean isAvailable() {
        if (!isStarted()) {
            return false;
        }
        for (ServletHolder servletHolder : getServlets()) {
            if (servletHolder != null && !servletHolder.isAvailable()) {
                return false;
            }
        }
        return true;
    }

    public void setStartWithUnavailable(boolean z) {
        this._startWithUnavailable = z;
    }

    public boolean isStartWithUnavailable() {
        return this._startWithUnavailable;
    }

    public void initialize() throws Exception {
        MultiException multiException = new MultiException();
        if (this._filters != null) {
            for (int i = 0; i < this._filters.length; i++) {
                this._filters[i].start();
            }
        }
        if (this._servlets != null) {
            ServletHolder[] servletHolderArr = (ServletHolder[]) this._servlets.clone();
            Arrays.sort(servletHolderArr);
            for (int i2 = 0; i2 < servletHolderArr.length; i2++) {
                try {
                    if (servletHolderArr[i2].getClassName() == null && servletHolderArr[i2].getForcedPath() != null) {
                        ServletHolder servletHolder = (ServletHolder) this._servletPathMap.match(servletHolderArr[i2].getForcedPath());
                        if (servletHolder == null || servletHolder.getClassName() == null) {
                            multiException.add(new IllegalStateException(new StringBuffer().append("No forced path servlet for ").append(servletHolderArr[i2].getForcedPath()).toString()));
                        } else {
                            servletHolderArr[i2].setClassName(servletHolder.getClassName());
                            servletHolderArr[i2].start();
                        }
                    } else {
                        servletHolderArr[i2].start();
                    }
                } catch (Throwable th) {
                    Log.debug(Log.EXCEPTION, th);
                    multiException.add(th);
                }
            }
            multiException.ifExceptionThrow();
        }
    }

    public boolean isFilterChainsCached() {
        return this._filterChainsCached;
    }

    public ServletHolder newServletHolder() {
        return new ServletHolder();
    }

    public ServletHolder newServletHolder(Class cls) {
        return new ServletHolder(cls);
    }

    public ServletHolder addServletWithMapping(String str, String str2) throws Throwable {
        ServletHolder servletHolderNewServletHolder = newServletHolder(null);
        servletHolderNewServletHolder.setName(new StringBuffer().append(str).append("-").append(servletHolderNewServletHolder.hashCode()).toString());
        servletHolderNewServletHolder.setClassName(str);
        addServletWithMapping(servletHolderNewServletHolder, str2);
        return servletHolderNewServletHolder;
    }

    public ServletHolder addServletWithMapping(Class cls, String str) throws Throwable {
        Class clsClass$;
        ServletHolder servletHolderNewServletHolder = newServletHolder(cls);
        ServletHolder[] servlets = getServlets();
        if (class$org$mortbay$jetty$servlet$ServletHolder == null) {
            clsClass$ = class$("org.mortbay.jetty.servlet.ServletHolder");
            class$org$mortbay$jetty$servlet$ServletHolder = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$servlet$ServletHolder;
        }
        setServlets((ServletHolder[]) LazyList.addToArray(servlets, servletHolderNewServletHolder, clsClass$));
        addServletWithMapping(servletHolderNewServletHolder, str);
        return servletHolderNewServletHolder;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public void addServletWithMapping(ServletHolder servletHolder, String str) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        ServletHolder[] servlets = getServlets();
        ServletHolder[] servletHolderArr = servlets != null ? (ServletHolder[]) servlets.clone() : servlets;
        try {
            if (class$org$mortbay$jetty$servlet$ServletHolder == null) {
                clsClass$ = class$("org.mortbay.jetty.servlet.ServletHolder");
                class$org$mortbay$jetty$servlet$ServletHolder = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$servlet$ServletHolder;
            }
            setServlets((ServletHolder[]) LazyList.addToArray(servletHolderArr, servletHolder, clsClass$));
            ServletMapping servletMapping = new ServletMapping();
            servletMapping.setServletName(servletHolder.getName());
            servletMapping.setPathSpec(str);
            ServletMapping[] servletMappings = getServletMappings();
            if (class$org$mortbay$jetty$servlet$ServletMapping == null) {
                clsClass$2 = class$("org.mortbay.jetty.servlet.ServletMapping");
                class$org$mortbay$jetty$servlet$ServletMapping = clsClass$2;
            } else {
                clsClass$2 = class$org$mortbay$jetty$servlet$ServletMapping;
            }
            setServletMappings((ServletMapping[]) LazyList.addToArray(servletMappings, servletMapping, clsClass$2));
        } catch (Exception e2) {
            setServlets(servletHolderArr);
            if (e2 instanceof RuntimeException) {
                throw ((RuntimeException) e2);
            }
            throw new RuntimeException(e2);
        }
    }

    public ServletHolder addServlet(String str, String str2) {
        return addServletWithMapping(str, str2);
    }

    public void addServlet(ServletHolder servletHolder) throws Throwable {
        Class clsClass$;
        ServletHolder[] servlets = getServlets();
        if (class$org$mortbay$jetty$servlet$ServletHolder == null) {
            clsClass$ = class$("org.mortbay.jetty.servlet.ServletHolder");
            class$org$mortbay$jetty$servlet$ServletHolder = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$servlet$ServletHolder;
        }
        setServlets((ServletHolder[]) LazyList.addToArray(servlets, servletHolder, clsClass$));
    }

    public void addServletMapping(ServletMapping servletMapping) throws Throwable {
        Class clsClass$;
        ServletMapping[] servletMappings = getServletMappings();
        if (class$org$mortbay$jetty$servlet$ServletMapping == null) {
            clsClass$ = class$("org.mortbay.jetty.servlet.ServletMapping");
            class$org$mortbay$jetty$servlet$ServletMapping = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$servlet$ServletMapping;
        }
        setServletMappings((ServletMapping[]) LazyList.addToArray(servletMappings, servletMapping, clsClass$));
    }

    public FilterHolder newFilterHolder(Class cls) {
        return new FilterHolder(cls);
    }

    public FilterHolder newFilterHolder() {
        return new FilterHolder();
    }

    public FilterHolder getFilter(String str) {
        return (FilterHolder) this._filterNameMap.get(str);
    }

    public FilterHolder addFilterWithMapping(Class cls, String str, int i) throws Throwable {
        FilterHolder filterHolderNewFilterHolder = newFilterHolder(cls);
        addFilterWithMapping(filterHolderNewFilterHolder, str, i);
        return filterHolderNewFilterHolder;
    }

    public FilterHolder addFilterWithMapping(String str, String str2, int i) throws Throwable {
        FilterHolder filterHolderNewFilterHolder = newFilterHolder(null);
        filterHolderNewFilterHolder.setName(new StringBuffer().append(str).append("-").append(filterHolderNewFilterHolder.hashCode()).toString());
        filterHolderNewFilterHolder.setClassName(str);
        addFilterWithMapping(filterHolderNewFilterHolder, str2, i);
        return filterHolderNewFilterHolder;
    }

    public void addFilterWithMapping(FilterHolder filterHolder, String str, int i) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        FilterHolder[] filters = getFilters();
        FilterHolder[] filterHolderArr = filters != null ? (FilterHolder[]) filters.clone() : filters;
        try {
            if (class$org$mortbay$jetty$servlet$FilterHolder == null) {
                clsClass$ = class$("org.mortbay.jetty.servlet.FilterHolder");
                class$org$mortbay$jetty$servlet$FilterHolder = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$servlet$FilterHolder;
            }
            setFilters((FilterHolder[]) LazyList.addToArray(filterHolderArr, filterHolder, clsClass$));
            FilterMapping filterMapping = new FilterMapping();
            filterMapping.setFilterName(filterHolder.getName());
            filterMapping.setPathSpec(str);
            filterMapping.setDispatches(i);
            FilterMapping[] filterMappings = getFilterMappings();
            if (class$org$mortbay$jetty$servlet$FilterMapping == null) {
                clsClass$2 = class$("org.mortbay.jetty.servlet.FilterMapping");
                class$org$mortbay$jetty$servlet$FilterMapping = clsClass$2;
            } else {
                clsClass$2 = class$org$mortbay$jetty$servlet$FilterMapping;
            }
            setFilterMappings((FilterMapping[]) LazyList.addToArray(filterMappings, filterMapping, clsClass$2));
        } catch (Error e2) {
            setFilters(filterHolderArr);
            throw e2;
        } catch (RuntimeException e3) {
            setFilters(filterHolderArr);
            throw e3;
        }
    }

    public FilterHolder addFilter(String str, String str2, int i) {
        return addFilterWithMapping(str, str2, i);
    }

    public void addFilter(FilterHolder filterHolder, FilterMapping filterMapping) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        if (filterHolder != null) {
            FilterHolder[] filters = getFilters();
            if (class$org$mortbay$jetty$servlet$FilterHolder == null) {
                clsClass$2 = class$("org.mortbay.jetty.servlet.FilterHolder");
                class$org$mortbay$jetty$servlet$FilterHolder = clsClass$2;
            } else {
                clsClass$2 = class$org$mortbay$jetty$servlet$FilterHolder;
            }
            setFilters((FilterHolder[]) LazyList.addToArray(filters, filterHolder, clsClass$2));
        }
        if (filterMapping != null) {
            FilterMapping[] filterMappings = getFilterMappings();
            if (class$org$mortbay$jetty$servlet$FilterMapping == null) {
                clsClass$ = class$("org.mortbay.jetty.servlet.FilterMapping");
                class$org$mortbay$jetty$servlet$FilterMapping = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$servlet$FilterMapping;
            }
            setFilterMappings((FilterMapping[]) LazyList.addToArray(filterMappings, filterMapping, clsClass$));
        }
    }

    public void addFilter(FilterHolder filterHolder) throws Throwable {
        Class clsClass$;
        if (filterHolder != null) {
            FilterHolder[] filters = getFilters();
            if (class$org$mortbay$jetty$servlet$FilterHolder == null) {
                clsClass$ = class$("org.mortbay.jetty.servlet.FilterHolder");
                class$org$mortbay$jetty$servlet$FilterHolder = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$servlet$FilterHolder;
            }
            setFilters((FilterHolder[]) LazyList.addToArray(filters, filterHolder, clsClass$));
        }
    }

    public void addFilterMapping(FilterMapping filterMapping) throws Throwable {
        Class clsClass$;
        if (filterMapping != null) {
            FilterMapping[] filterMappings = getFilterMappings();
            if (class$org$mortbay$jetty$servlet$FilterMapping == null) {
                clsClass$ = class$("org.mortbay.jetty.servlet.FilterMapping");
                class$org$mortbay$jetty$servlet$FilterMapping = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$servlet$FilterMapping;
            }
            setFilterMappings((FilterMapping[]) LazyList.addToArray(filterMappings, filterMapping, clsClass$));
        }
    }

    protected synchronized void updateNameMappings() {
        synchronized (this) {
            this._filterNameMap.clear();
            if (this._filters != null) {
                for (int i = 0; i < this._filters.length; i++) {
                    this._filterNameMap.put(this._filters[i].getName(), this._filters[i]);
                    this._filters[i].setServletHandler(this);
                }
            }
            this._servletNameMap.clear();
            if (this._servlets != null) {
                for (int i2 = 0; i2 < this._servlets.length; i2++) {
                    this._servletNameMap.put(this._servlets[i2].getName(), this._servlets[i2]);
                    this._servlets[i2].setServletHandler(this);
                }
            }
        }
    }

    protected synchronized void updateMappings() {
        if (this._filterMappings == null) {
            this._filterPathMappings = null;
            this._filterNameMappings = null;
        } else {
            this._filterPathMappings = new ArrayList();
            this._filterNameMappings = new MultiMap();
            for (int i = 0; i < this._filterMappings.length; i++) {
                FilterHolder filterHolder = (FilterHolder) this._filterNameMap.get(this._filterMappings[i].getFilterName());
                if (filterHolder == null) {
                    throw new IllegalStateException(new StringBuffer().append("No filter named ").append(this._filterMappings[i].getFilterName()).toString());
                }
                this._filterMappings[i].setFilterHolder(filterHolder);
                if (this._filterMappings[i].getPathSpecs() != null) {
                    this._filterPathMappings.add(this._filterMappings[i]);
                }
                if (this._filterMappings[i].getServletNames() != null) {
                    String[] servletNames = this._filterMappings[i].getServletNames();
                    for (int i2 = 0; i2 < servletNames.length; i2++) {
                        if (servletNames[i2] != null) {
                            this._filterNameMappings.add(servletNames[i2], this._filterMappings[i]);
                        }
                    }
                }
            }
        }
        if (this._servletMappings == null || this._servletNameMap == null) {
            this._servletPathMap = null;
        } else {
            PathMap pathMap = new PathMap();
            for (int i3 = 0; i3 < this._servletMappings.length; i3++) {
                ServletHolder servletHolder = (ServletHolder) this._servletNameMap.get(this._servletMappings[i3].getServletName());
                if (servletHolder == null) {
                    throw new IllegalStateException(new StringBuffer().append("No such servlet: ").append(this._servletMappings[i3].getServletName()).toString());
                }
                if (this._servletMappings[i3].getPathSpecs() != null) {
                    String[] pathSpecs = this._servletMappings[i3].getPathSpecs();
                    for (int i4 = 0; i4 < pathSpecs.length; i4++) {
                        if (pathSpecs[i4] != null) {
                            pathMap.put(pathSpecs[i4], servletHolder);
                        }
                    }
                }
            }
            this._servletPathMap = pathMap;
        }
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("filterNameMap=").append(this._filterNameMap).toString());
            Log.debug(new StringBuffer().append("pathFilters=").append(this._filterPathMappings).toString());
            Log.debug(new StringBuffer().append("servletFilterMap=").append(this._filterNameMappings).toString());
            Log.debug(new StringBuffer().append("servletPathMap=").append(this._servletPathMap).toString());
            Log.debug(new StringBuffer().append("servletNameMap=").append(this._servletNameMap).toString());
        }
        try {
            if (isStarted()) {
                initialize();
            }
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    protected void notFound(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("Not Found ").append(httpServletRequest.getRequestURI()).toString());
        }
        httpServletResponse.sendError(404);
    }

    public void setFilterChainsCached(boolean z) {
        this._filterChainsCached = z;
    }

    public void setFilterMappings(FilterMapping[] filterMappingArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this._filterMappings, (Object[]) filterMappingArr, "filterMapping", true);
        }
        this._filterMappings = filterMappingArr;
        updateMappings();
        invalidateChainsCache();
    }

    public synchronized void setFilters(FilterHolder[] filterHolderArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this._filters, (Object[]) filterHolderArr, "filter", true);
        }
        this._filters = filterHolderArr;
        updateNameMappings();
        invalidateChainsCache();
    }

    public void setServletMappings(ServletMapping[] servletMappingArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this._servletMappings, (Object[]) servletMappingArr, "servletMapping", true);
        }
        this._servletMappings = servletMappingArr;
        updateMappings();
        invalidateChainsCache();
    }

    public synchronized void setServlets(ServletHolder[] servletHolderArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this._servlets, (Object[]) servletHolderArr, "servlet", true);
        }
        this._servlets = servletHolderArr;
        updateNameMappings();
        invalidateChainsCache();
    }

    class CachedChain implements FilterChain {
        FilterHolder _filterHolder;
        CachedChain _next;
        ServletHolder _servletHolder;
        private final ServletHandler this$0;

        CachedChain(ServletHandler servletHandler, Object obj, ServletHolder servletHolder) {
            this.this$0 = servletHandler;
            if (LazyList.size(obj) > 0) {
                this._filterHolder = (FilterHolder) LazyList.get(obj, 0);
                this._next = new CachedChain(servletHandler, LazyList.remove(obj, 0), servletHolder);
            } else {
                this._servletHolder = servletHolder;
            }
        }

        @Override // javax.servlet.FilterChain
        public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
            if (this._filterHolder != null) {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("call filter ").append(this._filterHolder).toString());
                }
                this._filterHolder.getFilter().doFilter(servletRequest, servletResponse, this._next);
            } else {
                if (this._servletHolder != null) {
                    if (Log.isDebugEnabled()) {
                        Log.debug(new StringBuffer().append("call servlet ").append(this._servletHolder).toString());
                    }
                    this._servletHolder.handle(servletRequest, servletResponse);
                    return;
                }
                this.this$0.notFound((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse);
            }
        }

        public String toString() {
            if (this._filterHolder != null) {
                return new StringBuffer().append(this._filterHolder).append("->").append(this._next.toString()).toString();
            }
            if (this._servletHolder != null) {
                return this._servletHolder.toString();
            }
            return "null";
        }
    }

    class Chain implements FilterChain {
        Object _chain;
        int _filter = 0;
        ServletHolder _servletHolder;
        private final ServletHandler this$0;

        Chain(ServletHandler servletHandler, Object obj, ServletHolder servletHolder) {
            this.this$0 = servletHandler;
            this._chain = obj;
            this._servletHolder = servletHolder;
        }

        @Override // javax.servlet.FilterChain
        public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("doFilter ").append(this._filter).toString());
            }
            if (this._filter < LazyList.size(this._chain)) {
                Object obj = this._chain;
                int i = this._filter;
                this._filter = i + 1;
                FilterHolder filterHolder = (FilterHolder) LazyList.get(obj, i);
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("call filter ").append(filterHolder).toString());
                }
                filterHolder.getFilter().doFilter(servletRequest, servletResponse, this);
                return;
            }
            if (this._servletHolder != null) {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("call servlet ").append(this._servletHolder).toString());
                }
                this._servletHolder.handle(servletRequest, servletResponse);
                return;
            }
            this.this$0.notFound((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < LazyList.size(this._chain); i++) {
                stringBuffer.append(LazyList.get(this._chain, i).toString());
                stringBuffer.append("->");
            }
            stringBuffer.append(this._servletHolder);
            return stringBuffer.toString();
        }
    }

    public int getMaxFilterChainsCacheSize() {
        return this._maxFilterChainsCacheSize;
    }

    public void setMaxFilterChainsCacheSize(int i) {
        this._maxFilterChainsCacheSize = i;
        for (int i2 = 0; i2 < this._chainCache.length; i2++) {
            if (this._chainCache[i2] != null && (this._chainCache[i2] instanceof MruCache)) {
                this._chainCache[i2].setMaxEntries(i);
            }
        }
    }

    public Servlet customizeServlet(Servlet servlet) throws Exception {
        return servlet;
    }

    public Servlet customizeServletDestroy(Servlet servlet) throws Exception {
        return servlet;
    }

    public Filter customizeFilter(Filter filter) throws Exception {
        return filter;
    }

    public Filter customizeFilterDestroy(Filter filter) throws Exception {
        return filter;
    }
}
