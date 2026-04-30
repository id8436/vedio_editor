package org.mortbay.jetty.handler;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.behance.sdk.util.BehanceSDKConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestListener;
import org.mortbay.io.Buffer;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.webapp.WebAppClassLoader;
import org.mortbay.log.Log;
import org.mortbay.log.Logger;
import org.mortbay.resource.Resource;
import org.mortbay.util.Attributes;
import org.mortbay.util.AttributesMap;
import org.mortbay.util.LazyList;
import org.mortbay.util.Loader;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ContextHandler extends HandlerWrapper implements Server.Graceful, Attributes {
    public static final String MANAGED_ATTRIBUTES = "org.mortbay.jetty.servlet.ManagedAttributes";
    private static ThreadLocal __context = new ThreadLocal();
    static Class class$java$util$EventListener;
    static Class class$org$mortbay$jetty$handler$ContextHandler;
    static Class class$org$mortbay$jetty$handler$ContextHandlerCollection;
    private boolean _allowNullPathInfo;
    private AttributesMap _attributes;
    private Resource _baseResource;
    private ClassLoader _classLoader;
    private boolean _compactPath;
    private Set _connectors;
    private Object _contextAttributeListeners;
    private AttributesMap _contextAttributes;
    private Object _contextListeners;
    private String _contextPath;
    private String _displayName;
    private ErrorHandler _errorHandler;
    private EventListener[] _eventListeners;
    private Map _initParams;
    private Map _localeEncodingMap;
    private Logger _logger;
    private Set _managedAttributes;
    private int _maxFormContentSize;
    private MimeTypes _mimeTypes;
    private Object _requestAttributeListeners;
    private Object _requestListeners;
    protected SContext _scontext;
    private boolean _shutdown;
    private String[] _vhosts;
    private String[] _welcomeFiles;

    public static SContext getCurrentContext() {
        return (SContext) __context.get();
    }

    public ContextHandler() {
        this._contextPath = URIUtil.SLASH;
        this._maxFormContentSize = Integer.getInteger("org.mortbay.jetty.Request.maxFormContentSize", 200000).intValue();
        this._compactPath = false;
        this._scontext = new SContext(this);
        this._attributes = new AttributesMap();
        this._initParams = new HashMap();
    }

    protected ContextHandler(SContext sContext) {
        this._contextPath = URIUtil.SLASH;
        this._maxFormContentSize = Integer.getInteger("org.mortbay.jetty.Request.maxFormContentSize", 200000).intValue();
        this._compactPath = false;
        this._scontext = sContext;
        this._attributes = new AttributesMap();
        this._initParams = new HashMap();
    }

    public ContextHandler(String str) throws Throwable {
        this();
        setContextPath(str);
    }

    public ContextHandler(HandlerContainer handlerContainer, String str) throws Throwable {
        this();
        setContextPath(str);
        handlerContainer.addHandler(this);
    }

    public SContext getServletContext() {
        return this._scontext;
    }

    public boolean getAllowNullPathInfo() {
        return this._allowNullPathInfo;
    }

    public void setAllowNullPathInfo(boolean z) {
        this._allowNullPathInfo = z;
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        if (this._errorHandler != null) {
            Server server2 = getServer();
            if (server2 != null && server2 != server) {
                server2.getContainer().update((Object) this, (Object) this._errorHandler, (Object) null, Adobe360Constants.kAdobe360SatusError, true);
            }
            super.setServer(server);
            if (server != null && server != server2) {
                server.getContainer().update((Object) this, (Object) null, (Object) this._errorHandler, Adobe360Constants.kAdobe360SatusError, true);
            }
            this._errorHandler.setServer(server);
            return;
        }
        super.setServer(server);
    }

    public void setVirtualHosts(String[] strArr) {
        if (strArr == null) {
            this._vhosts = strArr;
            return;
        }
        this._vhosts = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            this._vhosts[i] = normalizeHostname(strArr[i]);
        }
    }

    public String[] getVirtualHosts() {
        return this._vhosts;
    }

    public void setHosts(String[] strArr) {
        setConnectorNames(strArr);
    }

    public String[] getHosts() {
        return getConnectorNames();
    }

    public String[] getConnectorNames() {
        if (this._connectors == null || this._connectors.size() == 0) {
            return null;
        }
        return (String[]) this._connectors.toArray(new String[this._connectors.size()]);
    }

    public void setConnectorNames(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            this._connectors = null;
        } else {
            this._connectors = new HashSet(Arrays.asList(strArr));
        }
    }

    @Override // org.mortbay.util.Attributes
    public Object getAttribute(String str) {
        return this._attributes.getAttribute(str);
    }

    @Override // org.mortbay.util.Attributes
    public Enumeration getAttributeNames() {
        return AttributesMap.getAttributeNamesCopy(this._attributes);
    }

    public Attributes getAttributes() {
        return this._attributes;
    }

    public ClassLoader getClassLoader() {
        return this._classLoader;
    }

    public String getClassPath() {
        if (this._classLoader == null || !(this._classLoader instanceof URLClassLoader)) {
            return null;
        }
        URL[] uRLs = ((URLClassLoader) this._classLoader).getURLs();
        StringBuffer stringBuffer = new StringBuffer();
        for (URL url : uRLs) {
            try {
                File file = Resource.newResource(url).getFile();
                if (file.exists()) {
                    if (stringBuffer.length() > 0) {
                        stringBuffer.append(File.pathSeparatorChar);
                    }
                    stringBuffer.append(file.getAbsolutePath());
                }
            } catch (IOException e2) {
                Log.debug(e2);
            }
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        return stringBuffer.toString();
    }

    public String getContextPath() {
        return this._contextPath;
    }

    public String getInitParameter(String str) {
        return (String) this._initParams.get(str);
    }

    public Enumeration getInitParameterNames() {
        return Collections.enumeration(this._initParams.keySet());
    }

    public Map getInitParams() {
        return this._initParams;
    }

    public String getDisplayName() {
        return this._displayName;
    }

    public EventListener[] getEventListeners() {
        return this._eventListeners;
    }

    public void setEventListeners(EventListener[] eventListenerArr) {
        this._contextListeners = null;
        this._contextAttributeListeners = null;
        this._requestListeners = null;
        this._requestAttributeListeners = null;
        this._eventListeners = eventListenerArr;
        for (int i = 0; eventListenerArr != null && i < eventListenerArr.length; i++) {
            EventListener eventListener = this._eventListeners[i];
            if (eventListener instanceof ServletContextListener) {
                this._contextListeners = LazyList.add(this._contextListeners, eventListener);
            }
            if (eventListener instanceof ServletContextAttributeListener) {
                this._contextAttributeListeners = LazyList.add(this._contextAttributeListeners, eventListener);
            }
            if (eventListener instanceof ServletRequestListener) {
                this._requestListeners = LazyList.add(this._requestListeners, eventListener);
            }
            if (eventListener instanceof ServletRequestAttributeListener) {
                this._requestAttributeListeners = LazyList.add(this._requestAttributeListeners, eventListener);
            }
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public void addEventListener(EventListener eventListener) throws Throwable {
        Class clsClass$;
        EventListener[] eventListeners = getEventListeners();
        if (class$java$util$EventListener == null) {
            clsClass$ = class$("java.util.EventListener");
            class$java$util$EventListener = clsClass$;
        } else {
            clsClass$ = class$java$util$EventListener;
        }
        setEventListeners((EventListener[]) LazyList.addToArray(eventListeners, eventListener, clsClass$));
    }

    public boolean isShutdown() {
        return !this._shutdown;
    }

    @Override // org.mortbay.jetty.Server.Graceful
    public void setShutdown(boolean z) {
        this._shutdown = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x007d  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void doStart() throws java.lang.Exception {
        /*
            r6 = this;
            r1 = 0
            java.lang.String r0 = r6._contextPath
            if (r0 != 0) goto Le
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Null contextPath"
            r0.<init>(r1)
            throw r0
        Le:
            java.lang.String r0 = r6.getDisplayName()
            if (r0 != 0) goto L6c
            java.lang.String r0 = r6.getContextPath()
        L18:
            org.mortbay.log.Logger r0 = org.mortbay.log.Log.getLogger(r0)
            r6._logger = r0
            org.mortbay.util.AttributesMap r0 = new org.mortbay.util.AttributesMap
            r0.<init>()
            r6._contextAttributes = r0
            java.lang.ClassLoader r0 = r6._classLoader     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L8b
            java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L71
            java.lang.ClassLoader r3 = r2.getContextClassLoader()     // Catch: java.lang.Throwable -> L81
            java.lang.ClassLoader r0 = r6._classLoader     // Catch: java.lang.Throwable -> L84
            r2.setContextClassLoader(r0)     // Catch: java.lang.Throwable -> L84
        L36:
            org.mortbay.jetty.MimeTypes r0 = r6._mimeTypes     // Catch: java.lang.Throwable -> L84
            if (r0 != 0) goto L41
            org.mortbay.jetty.MimeTypes r0 = new org.mortbay.jetty.MimeTypes     // Catch: java.lang.Throwable -> L84
            r0.<init>()     // Catch: java.lang.Throwable -> L84
            r6._mimeTypes = r0     // Catch: java.lang.Throwable -> L84
        L41:
            java.lang.ThreadLocal r0 = org.mortbay.jetty.handler.ContextHandler.__context     // Catch: java.lang.Throwable -> L84
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L84
            org.mortbay.jetty.handler.ContextHandler$SContext r0 = (org.mortbay.jetty.handler.ContextHandler.SContext) r0     // Catch: java.lang.Throwable -> L84
            java.lang.ThreadLocal r1 = org.mortbay.jetty.handler.ContextHandler.__context     // Catch: java.lang.Throwable -> L86
            org.mortbay.jetty.handler.ContextHandler$SContext r4 = r6._scontext     // Catch: java.lang.Throwable -> L86
            r1.set(r4)     // Catch: java.lang.Throwable -> L86
            org.mortbay.jetty.handler.ErrorHandler r1 = r6._errorHandler     // Catch: java.lang.Throwable -> L86
            if (r1 != 0) goto L5c
            org.mortbay.jetty.handler.ErrorHandler r1 = new org.mortbay.jetty.handler.ErrorHandler     // Catch: java.lang.Throwable -> L86
            r1.<init>()     // Catch: java.lang.Throwable -> L86
            r6.setErrorHandler(r1)     // Catch: java.lang.Throwable -> L86
        L5c:
            r6.startContext()     // Catch: java.lang.Throwable -> L86
            java.lang.ThreadLocal r1 = org.mortbay.jetty.handler.ContextHandler.__context
            r1.set(r0)
            java.lang.ClassLoader r0 = r6._classLoader
            if (r0 == 0) goto L6b
            r2.setContextClassLoader(r3)
        L6b:
            return
        L6c:
            java.lang.String r0 = r6.getDisplayName()
            goto L18
        L71:
            r0 = move-exception
            r2 = r1
            r3 = r1
        L74:
            java.lang.ThreadLocal r4 = org.mortbay.jetty.handler.ContextHandler.__context
            r4.set(r1)
            java.lang.ClassLoader r1 = r6._classLoader
            if (r1 == 0) goto L80
            r2.setContextClassLoader(r3)
        L80:
            throw r0
        L81:
            r0 = move-exception
            r3 = r1
            goto L74
        L84:
            r0 = move-exception
            goto L74
        L86:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L74
        L8b:
            r2 = r1
            r3 = r1
            goto L36
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.ContextHandler.doStart():void");
    }

    protected void startContext() throws Exception {
        super.doStart();
        if (this._errorHandler != null) {
            this._errorHandler.start();
        }
        if (this._contextListeners != null) {
            ServletContextEvent servletContextEvent = new ServletContextEvent(this._scontext);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= LazyList.size(this._contextListeners)) {
                    break;
                }
                ((ServletContextListener) LazyList.get(this._contextListeners, i2)).contextInitialized(servletContextEvent);
                i = i2 + 1;
            }
        }
        String str = (String) this._initParams.get(MANAGED_ATTRIBUTES);
        if (str != null) {
            this._managedAttributes = new HashSet();
            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(str, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            while (quotedStringTokenizer.hasMoreTokens()) {
                this._managedAttributes.add(quotedStringTokenizer.nextToken().trim());
            }
            Enumeration attributeNames = this._scontext.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String str2 = (String) attributeNames.nextElement();
                setManagedAttribute(str2, this._scontext.getAttribute(str2));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void doStop() throws java.lang.Exception {
        /*
            r7 = this;
            r3 = 0
            java.lang.ThreadLocal r0 = org.mortbay.jetty.handler.ContextHandler.__context
            java.lang.Object r0 = r0.get()
            org.mortbay.jetty.handler.ContextHandler$SContext r0 = (org.mortbay.jetty.handler.ContextHandler.SContext) r0
            java.lang.ThreadLocal r1 = org.mortbay.jetty.handler.ContextHandler.__context
            org.mortbay.jetty.handler.ContextHandler$SContext r2 = r7._scontext
            r1.set(r2)
            java.lang.ClassLoader r1 = r7._classLoader     // Catch: java.lang.Throwable -> L8d
            if (r1 == 0) goto L92
            java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L8d
            java.lang.ClassLoader r4 = r2.getContextClassLoader()     // Catch: java.lang.Throwable -> L90
            java.lang.ClassLoader r1 = r7._classLoader     // Catch: java.lang.Throwable -> L66
            r2.setContextClassLoader(r1)     // Catch: java.lang.Throwable -> L66
        L21:
            super.doStop()     // Catch: java.lang.Throwable -> L66
            java.lang.Object r1 = r7._contextListeners     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L46
            javax.servlet.ServletContextEvent r6 = new javax.servlet.ServletContextEvent     // Catch: java.lang.Throwable -> L66
            org.mortbay.jetty.handler.ContextHandler$SContext r1 = r7._scontext     // Catch: java.lang.Throwable -> L66
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L66
            java.lang.Object r1 = r7._contextListeners     // Catch: java.lang.Throwable -> L66
            int r1 = org.mortbay.util.LazyList.size(r1)     // Catch: java.lang.Throwable -> L66
        L35:
            int r5 = r1 + (-1)
            if (r1 <= 0) goto L46
            java.lang.Object r1 = r7._contextListeners     // Catch: java.lang.Throwable -> L66
            java.lang.Object r1 = org.mortbay.util.LazyList.get(r1, r5)     // Catch: java.lang.Throwable -> L66
            javax.servlet.ServletContextListener r1 = (javax.servlet.ServletContextListener) r1     // Catch: java.lang.Throwable -> L66
            r1.contextDestroyed(r6)     // Catch: java.lang.Throwable -> L66
            r1 = r5
            goto L35
        L46:
            org.mortbay.jetty.handler.ErrorHandler r1 = r7._errorHandler     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L4f
            org.mortbay.jetty.handler.ErrorHandler r1 = r7._errorHandler     // Catch: java.lang.Throwable -> L66
            r1.stop()     // Catch: java.lang.Throwable -> L66
        L4f:
            org.mortbay.jetty.handler.ContextHandler$SContext r1 = r7._scontext     // Catch: java.lang.Throwable -> L66
            java.util.Enumeration r5 = r1.getAttributeNames()     // Catch: java.lang.Throwable -> L66
        L55:
            boolean r1 = r5.hasMoreElements()     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L75
            java.lang.Object r1 = r5.nextElement()     // Catch: java.lang.Throwable -> L66
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L66
            r6 = 0
            r7.setManagedAttribute(r1, r6)     // Catch: java.lang.Throwable -> L66
            goto L55
        L66:
            r1 = move-exception
            r3 = r4
        L68:
            java.lang.ThreadLocal r4 = org.mortbay.jetty.handler.ContextHandler.__context
            r4.set(r0)
            java.lang.ClassLoader r0 = r7._classLoader
            if (r0 == 0) goto L74
            r2.setContextClassLoader(r3)
        L74:
            throw r1
        L75:
            java.lang.ThreadLocal r1 = org.mortbay.jetty.handler.ContextHandler.__context
            r1.set(r0)
            java.lang.ClassLoader r0 = r7._classLoader
            if (r0 == 0) goto L81
            r2.setContextClassLoader(r4)
        L81:
            org.mortbay.util.AttributesMap r0 = r7._contextAttributes
            if (r0 == 0) goto L8a
            org.mortbay.util.AttributesMap r0 = r7._contextAttributes
            r0.clearAttributes()
        L8a:
            r7._contextAttributes = r3
            return
        L8d:
            r1 = move-exception
            r2 = r3
            goto L68
        L90:
            r1 = move-exception
            goto L68
        L92:
            r2 = r3
            r4 = r3
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.ContextHandler.doStop():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x02a1 A[Catch: HttpException -> 0x0264, all -> 0x02d2, TRY_LEAVE, TryCatch #4 {HttpException -> 0x0264, blocks: (B:106:0x0256, B:108:0x025c, B:109:0x0263, B:120:0x029b, B:122:0x02a1), top: B:168:0x0256, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02ae A[Catch: all -> 0x02fb, TRY_ENTER, TryCatch #6 {all -> 0x02fb, blocks: (B:124:0x02ae, B:126:0x02b7, B:127:0x02bf, B:129:0x02c3, B:113:0x0277, B:115:0x0280, B:116:0x0288, B:118:0x028c, B:133:0x02d6, B:135:0x02df, B:136:0x02e7, B:138:0x02eb, B:139:0x02fa, B:106:0x0256, B:108:0x025c, B:109:0x0263, B:120:0x029b, B:122:0x02a1, B:111:0x0265), top: B:161:0x0254, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0237  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r20, javax.servlet.http.HttpServletRequest r21, javax.servlet.http.HttpServletResponse r22, int r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 853
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.ContextHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    protected boolean isProtectedTarget(String str) {
        return false;
    }

    @Override // org.mortbay.util.Attributes
    public void removeAttribute(String str) {
        setManagedAttribute(str, null);
        this._attributes.removeAttribute(str);
    }

    @Override // org.mortbay.util.Attributes
    public void setAttribute(String str, Object obj) {
        setManagedAttribute(str, obj);
        this._attributes.setAttribute(str, obj);
    }

    public void setAttributes(Attributes attributes) {
        if (attributes instanceof AttributesMap) {
            this._attributes = (AttributesMap) attributes;
            Enumeration attributeNames = this._attributes.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String str = (String) attributeNames.nextElement();
                setManagedAttribute(str, attributes.getAttribute(str));
            }
            return;
        }
        this._attributes = new AttributesMap();
        Enumeration attributeNames2 = attributes.getAttributeNames();
        while (attributeNames2.hasMoreElements()) {
            String str2 = (String) attributeNames2.nextElement();
            Object attribute = attributes.getAttribute(str2);
            setManagedAttribute(str2, attribute);
            this._attributes.setAttribute(str2, attribute);
        }
    }

    @Override // org.mortbay.util.Attributes
    public void clearAttributes() {
        Enumeration attributeNames = this._attributes.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            setManagedAttribute((String) attributeNames.nextElement(), null);
        }
        this._attributes.clearAttributes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setManagedAttribute(String str, Object obj) {
        if (this._managedAttributes != null && this._managedAttributes.contains(str)) {
            Object attribute = this._scontext.getAttribute(str);
            if (attribute != null) {
                getServer().getContainer().removeBean(attribute);
            }
            if (obj != null) {
                getServer().getContainer().addBean(obj);
            }
        }
    }

    public void setClassLoader(ClassLoader classLoader) {
        this._classLoader = classLoader;
    }

    public void setContextPath(String str) throws Throwable {
        Class clsClass$;
        if (str != null && str.length() > 1 && str.endsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("ends with /");
        }
        this._contextPath = str;
        if (getServer() != null) {
            if (getServer().isStarting() || getServer().isStarted()) {
                Server server = getServer();
                if (class$org$mortbay$jetty$handler$ContextHandlerCollection == null) {
                    clsClass$ = class$("org.mortbay.jetty.handler.ContextHandlerCollection");
                    class$org$mortbay$jetty$handler$ContextHandlerCollection = clsClass$;
                } else {
                    clsClass$ = class$org$mortbay$jetty$handler$ContextHandlerCollection;
                }
                Handler[] childHandlersByClass = server.getChildHandlersByClass(clsClass$);
                for (int i = 0; childHandlersByClass != null && i < childHandlersByClass.length; i++) {
                    ((ContextHandlerCollection) childHandlersByClass[i]).mapContexts();
                }
            }
        }
    }

    public void setInitParams(Map map) {
        if (map != null) {
            this._initParams = new HashMap(map);
        }
    }

    public void setDisplayName(String str) {
        this._displayName = str;
        if (this._classLoader != null && (this._classLoader instanceof WebAppClassLoader)) {
            ((WebAppClassLoader) this._classLoader).setName(str);
        }
    }

    public Resource getBaseResource() {
        if (this._baseResource == null) {
            return null;
        }
        return this._baseResource;
    }

    public String getResourceBase() {
        if (this._baseResource == null) {
            return null;
        }
        return this._baseResource.toString();
    }

    public void setBaseResource(Resource resource) {
        this._baseResource = resource;
    }

    public void setResourceBase(String str) {
        try {
            setBaseResource(Resource.newResource(str));
        } catch (Exception e2) {
            Log.warn(e2.toString());
            Log.debug(e2);
            throw new IllegalArgumentException(str);
        }
    }

    public MimeTypes getMimeTypes() {
        return this._mimeTypes;
    }

    public void setMimeTypes(MimeTypes mimeTypes) {
        this._mimeTypes = mimeTypes;
    }

    public void setWelcomeFiles(String[] strArr) {
        this._welcomeFiles = strArr;
    }

    public String[] getWelcomeFiles() {
        return this._welcomeFiles;
    }

    public ErrorHandler getErrorHandler() {
        return this._errorHandler;
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        if (errorHandler != null) {
            errorHandler.setServer(getServer());
        }
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) this._errorHandler, (Object) errorHandler, "errorHandler", true);
        }
        this._errorHandler = errorHandler;
    }

    public int getMaxFormContentSize() {
        return this._maxFormContentSize;
    }

    public void setMaxFormContentSize(int i) {
        this._maxFormContentSize = i;
    }

    public boolean isCompactPath() {
        return this._compactPath;
    }

    public void setCompactPath(boolean z) {
        this._compactPath = z;
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler
    public String toString() {
        return new StringBuffer().append(getClass().getName()).append("@").append(Integer.toHexString(hashCode())).append("{").append(getContextPath()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(getBaseResource()).append("}").toString();
    }

    public synchronized Class loadClass(String str) throws ClassNotFoundException {
        Class<?> clsLoadClass;
        if (str == null) {
            clsLoadClass = null;
        } else if (this._classLoader == null) {
            clsLoadClass = Loader.loadClass(getClass(), str);
        } else {
            clsLoadClass = this._classLoader.loadClass(str);
        }
        return clsLoadClass;
    }

    public void addLocaleEncoding(String str, String str2) {
        if (this._localeEncodingMap == null) {
            this._localeEncodingMap = new HashMap();
        }
        this._localeEncodingMap.put(str, str2);
    }

    public String getLocaleEncoding(Locale locale) {
        if (this._localeEncodingMap == null) {
            return null;
        }
        String str = (String) this._localeEncodingMap.get(locale.toString());
        if (str == null) {
            return (String) this._localeEncodingMap.get(locale.getLanguage());
        }
        return str;
    }

    public Resource getResource(String str) throws MalformedURLException {
        if (str == null || !str.startsWith(URIUtil.SLASH)) {
            throw new MalformedURLException(str);
        }
        if (this._baseResource == null) {
            return null;
        }
        try {
            return this._baseResource.addPath(URIUtil.canonicalPath(str));
        } catch (Exception e2) {
            Log.ignore(e2);
            return null;
        }
    }

    public Set getResourcePaths(String str) {
        try {
            String strCanonicalPath = URIUtil.canonicalPath(str);
            Resource resource = getResource(strCanonicalPath);
            if (resource != null && resource.exists()) {
                String string = !strCanonicalPath.endsWith(URIUtil.SLASH) ? new StringBuffer().append(strCanonicalPath).append(URIUtil.SLASH).toString() : strCanonicalPath;
                String[] list = resource.list();
                if (list != null) {
                    HashSet hashSet = new HashSet();
                    for (String str2 : list) {
                        hashSet.add(new StringBuffer().append(string).append(str2).toString());
                    }
                    return hashSet;
                }
            }
        } catch (Exception e2) {
            Log.ignore(e2);
        }
        return Collections.EMPTY_SET;
    }

    public class SContext implements ServletContext {
        private final ContextHandler this$0;

        protected SContext(ContextHandler contextHandler) {
            this.this$0 = contextHandler;
        }

        public ContextHandler getContextHandler() {
            return this.this$0;
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
        @Override // javax.servlet.ServletContext
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public javax.servlet.ServletContext getContext(java.lang.String r9) throws java.lang.Throwable {
            /*
                r8 = this;
                r3 = 0
                org.mortbay.jetty.handler.ContextHandler r0 = r8.this$0
                org.mortbay.jetty.Server r1 = r0.getServer()
                java.lang.Class r0 = org.mortbay.jetty.handler.ContextHandler.class$org$mortbay$jetty$handler$ContextHandler
                if (r0 != 0) goto L30
                java.lang.String r0 = "org.mortbay.jetty.handler.ContextHandler"
                java.lang.Class r0 = org.mortbay.jetty.handler.ContextHandler.class$(r0)
                org.mortbay.jetty.handler.ContextHandler.class$org$mortbay$jetty$handler$ContextHandler = r0
            L14:
                org.mortbay.jetty.Handler[] r4 = r1.getChildHandlersByClass(r0)
                r0 = 0
                r2 = r0
                r1 = r3
            L1b:
                int r0 = r4.length
                if (r2 >= r0) goto L65
                r0 = r4[r2]
                if (r0 == 0) goto L63
                r0 = r4[r2]
                boolean r0 = r0.isStarted()
                if (r0 != 0) goto L33
                r0 = r1
            L2b:
                int r1 = r2 + 1
                r2 = r1
                r1 = r0
                goto L1b
            L30:
                java.lang.Class r0 = org.mortbay.jetty.handler.ContextHandler.class$org$mortbay$jetty$handler$ContextHandler
                goto L14
            L33:
                r0 = r4[r2]
                org.mortbay.jetty.handler.ContextHandler r0 = (org.mortbay.jetty.handler.ContextHandler) r0
                java.lang.String r5 = r0.getContextPath()
                boolean r6 = r9.equals(r5)
                if (r6 != 0) goto L53
                boolean r6 = r9.startsWith(r5)
                if (r6 == 0) goto L63
                int r6 = r5.length()
                char r6 = r9.charAt(r6)
                r7 = 47
                if (r6 != r7) goto L63
            L53:
                if (r1 == 0) goto L2b
                int r5 = r5.length()
                java.lang.String r6 = r1.getContextPath()
                int r6 = r6.length()
                if (r5 > r6) goto L2b
            L63:
                r0 = r1
                goto L2b
            L65:
                if (r1 == 0) goto L69
                org.mortbay.jetty.handler.ContextHandler$SContext r3 = r1._scontext
            L69:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.ContextHandler.SContext.getContext(java.lang.String):javax.servlet.ServletContext");
        }

        @Override // javax.servlet.ServletContext
        public int getMajorVersion() {
            return 2;
        }

        @Override // javax.servlet.ServletContext
        public String getMimeType(String str) {
            Buffer mimeByExtension;
            if (this.this$0._mimeTypes == null || (mimeByExtension = this.this$0._mimeTypes.getMimeByExtension(str)) == null) {
                return null;
            }
            return mimeByExtension.toString();
        }

        @Override // javax.servlet.ServletContext
        public int getMinorVersion() {
            return 5;
        }

        @Override // javax.servlet.ServletContext
        public RequestDispatcher getNamedDispatcher(String str) {
            return null;
        }

        @Override // javax.servlet.ServletContext
        public String getRealPath(String str) {
            File file;
            if (str == null) {
                return null;
            }
            if (str.length() == 0) {
                str = URIUtil.SLASH;
            } else if (str.charAt(0) != '/') {
                str = new StringBuffer().append(URIUtil.SLASH).append(str).toString();
            }
            try {
                Resource resource = this.this$0.getResource(str);
                if (resource == null || (file = resource.getFile()) == null) {
                    return null;
                }
                return file.getCanonicalPath();
            } catch (Exception e2) {
                Log.ignore(e2);
                return null;
            }
        }

        @Override // javax.servlet.ServletContext
        public RequestDispatcher getRequestDispatcher(String str) {
            return null;
        }

        @Override // javax.servlet.ServletContext
        public URL getResource(String str) throws MalformedURLException {
            Resource resource = this.this$0.getResource(str);
            if (resource == null || !resource.exists()) {
                return null;
            }
            return resource.getURL();
        }

        @Override // javax.servlet.ServletContext
        public InputStream getResourceAsStream(String str) {
            try {
                URL resource = getResource(str);
                if (resource == null) {
                    return null;
                }
                return resource.openStream();
            } catch (Exception e2) {
                Log.ignore(e2);
                return null;
            }
        }

        @Override // javax.servlet.ServletContext
        public Set getResourcePaths(String str) {
            return this.this$0.getResourcePaths(str);
        }

        @Override // javax.servlet.ServletContext
        public String getServerInfo() {
            return new StringBuffer().append("jetty/").append(Server.getVersion()).toString();
        }

        @Override // javax.servlet.ServletContext
        public Servlet getServlet(String str) throws ServletException {
            return null;
        }

        @Override // javax.servlet.ServletContext
        public Enumeration getServletNames() {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }

        @Override // javax.servlet.ServletContext
        public Enumeration getServlets() {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }

        @Override // javax.servlet.ServletContext
        public void log(Exception exc, String str) {
            this.this$0._logger.warn(str, exc);
        }

        @Override // javax.servlet.ServletContext
        public void log(String str) {
            this.this$0._logger.info(str, null, null);
        }

        @Override // javax.servlet.ServletContext
        public void log(String str, Throwable th) {
            this.this$0._logger.warn(str, th);
        }

        @Override // javax.servlet.ServletContext
        public String getInitParameter(String str) {
            return this.this$0.getInitParameter(str);
        }

        @Override // javax.servlet.ServletContext
        public Enumeration getInitParameterNames() {
            return this.this$0.getInitParameterNames();
        }

        @Override // javax.servlet.ServletContext
        public synchronized Object getAttribute(String str) {
            Object attribute;
            attribute = this.this$0.getAttribute(str);
            if (attribute == null && this.this$0._contextAttributes != null) {
                attribute = this.this$0._contextAttributes.getAttribute(str);
            }
            return attribute;
        }

        @Override // javax.servlet.ServletContext
        public synchronized Enumeration getAttributeNames() {
            HashSet hashSet;
            hashSet = new HashSet();
            if (this.this$0._contextAttributes != null) {
                Enumeration attributeNames = this.this$0._contextAttributes.getAttributeNames();
                while (attributeNames.hasMoreElements()) {
                    hashSet.add(attributeNames.nextElement());
                }
            }
            Enumeration attributeNames2 = this.this$0._attributes.getAttributeNames();
            while (attributeNames2.hasMoreElements()) {
                hashSet.add(attributeNames2.nextElement());
            }
            return Collections.enumeration(hashSet);
        }

        @Override // javax.servlet.ServletContext
        public synchronized void setAttribute(String str, Object obj) {
            if (this.this$0._contextAttributes != null) {
                this.this$0.setManagedAttribute(str, obj);
                Object attribute = this.this$0._contextAttributes.getAttribute(str);
                if (obj == null) {
                    this.this$0._contextAttributes.removeAttribute(str);
                } else {
                    this.this$0._contextAttributes.setAttribute(str, obj);
                }
                if (this.this$0._contextAttributeListeners != null) {
                    ServletContextAttributeEvent servletContextAttributeEvent = new ServletContextAttributeEvent(this.this$0._scontext, str, attribute == null ? obj : attribute);
                    for (int i = 0; i < LazyList.size(this.this$0._contextAttributeListeners); i++) {
                        ServletContextAttributeListener servletContextAttributeListener = (ServletContextAttributeListener) LazyList.get(this.this$0._contextAttributeListeners, i);
                        if (attribute == null) {
                            servletContextAttributeListener.attributeAdded(servletContextAttributeEvent);
                        } else if (obj == null) {
                            servletContextAttributeListener.attributeRemoved(servletContextAttributeEvent);
                        } else {
                            servletContextAttributeListener.attributeReplaced(servletContextAttributeEvent);
                        }
                    }
                }
            } else {
                this.this$0.setAttribute(str, obj);
            }
        }

        @Override // javax.servlet.ServletContext
        public synchronized void removeAttribute(String str) {
            this.this$0.setManagedAttribute(str, null);
            if (this.this$0._contextAttributes == null) {
                this.this$0._attributes.removeAttribute(str);
            } else {
                Object attribute = this.this$0._contextAttributes.getAttribute(str);
                this.this$0._contextAttributes.removeAttribute(str);
                if (attribute != null && this.this$0._contextAttributeListeners != null) {
                    ServletContextAttributeEvent servletContextAttributeEvent = new ServletContextAttributeEvent(this.this$0._scontext, str, attribute);
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= LazyList.size(this.this$0._contextAttributeListeners)) {
                            break;
                        }
                        ((ServletContextAttributeListener) LazyList.get(this.this$0._contextAttributeListeners, i2)).attributeRemoved(servletContextAttributeEvent);
                        i = i2 + 1;
                    }
                }
            }
        }

        @Override // javax.servlet.ServletContext
        public String getServletContextName() {
            String displayName = this.this$0.getDisplayName();
            if (displayName == null) {
                return this.this$0.getContextPath();
            }
            return displayName;
        }

        @Override // javax.servlet.ServletContext
        public String getContextPath() {
            if (this.this$0._contextPath == null || !this.this$0._contextPath.equals(URIUtil.SLASH)) {
                return this.this$0._contextPath;
            }
            return "";
        }

        public String toString() {
            return new StringBuffer().append("ServletContext@").append(Integer.toHexString(hashCode())).append("{").append(getContextPath().equals("") ? URIUtil.SLASH : getContextPath()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this.this$0.getBaseResource()).append("}").toString();
        }
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
