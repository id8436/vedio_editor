package org.mortbay.jetty.webapp;

import c.a.a.a.a.d.d;
import com.behance.sdk.util.BehanceSDKConstants;
import com.dropbox.core.DbxWebAuth;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.security.PermissionCollection;
import java.util.EventListener;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionListener;
import org.apache.commons.io.IOUtils;
import org.mortbay.io.Portable;
import org.mortbay.jetty.Connector;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.deployer.WebAppDeployer;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.handler.ErrorHandler;
import org.mortbay.jetty.handler.HandlerCollection;
import org.mortbay.jetty.security.SecurityHandler;
import org.mortbay.jetty.servlet.Context;
import org.mortbay.jetty.servlet.ErrorPageErrorHandler;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.jetty.servlet.SessionHandler;
import org.mortbay.log.Log;
import org.mortbay.resource.JarResource;
import org.mortbay.resource.Resource;
import org.mortbay.util.IO;
import org.mortbay.util.LazyList;
import org.mortbay.util.Loader;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class WebAppContext extends Context {
    public static final String ERROR_PAGE = "org.mortbay.jetty.error_page";
    public static final String WEB_DEFAULTS_XML = "org/mortbay/jetty/webapp/webdefault.xml";
    private static String[] __dftConfigurationClasses = {"org.mortbay.jetty.webapp.WebInfConfiguration", "org.mortbay.jetty.webapp.WebXmlConfiguration", "org.mortbay.jetty.webapp.JettyWebXmlConfiguration", "org.mortbay.jetty.webapp.TagLibConfiguration"};
    static Class class$java$util$EventListener;
    static Class class$org$mortbay$jetty$handler$ContextHandlerCollection;
    static Class class$org$mortbay$jetty$handler$HandlerCollection;
    private String[] _configurationClasses;
    private Configuration[] _configurations;
    private boolean _copyDir;
    private String _defaultsDescriptor;
    private String _descriptor;
    private boolean _distributable;
    private String _extraClasspath;
    private boolean _extractWAR;
    private boolean _isExistingTmpDir;
    private boolean _logUrlOnStart;
    private String _overrideDescriptor;
    private transient boolean _ownClassLoader;
    private boolean _parentLoaderPriority;
    private PermissionCollection _permissions;
    private transient Map _resourceAliases;
    private String[] _serverClasses;
    private String[] _systemClasses;
    private File _tmpDir;
    private transient boolean _unavailable;
    private Throwable _unavailableException;
    private String _war;

    public static ContextHandler getCurrentWebAppContext() {
        ContextHandler.SContext currentContext = ContextHandler.getCurrentContext();
        if (currentContext != null) {
            ContextHandler contextHandler = currentContext.getContextHandler();
            if (contextHandler instanceof WebAppContext) {
                return contextHandler;
            }
        }
        return null;
    }

    public static void addWebApplications(Server server, String str, String str2, boolean z, boolean z2) throws Throwable {
        addWebApplications(server, str, str2, __dftConfigurationClasses, z, z2);
    }

    public static void addWebApplications(Server server, String str, String str2, String[] strArr, boolean z, boolean z2) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        if (class$org$mortbay$jetty$handler$ContextHandlerCollection == null) {
            clsClass$ = class$("org.mortbay.jetty.handler.ContextHandlerCollection");
            class$org$mortbay$jetty$handler$ContextHandlerCollection = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$handler$ContextHandlerCollection;
        }
        HandlerCollection handlerCollection = (HandlerCollection) server.getChildHandlerByClass(clsClass$);
        if (handlerCollection == null) {
            if (class$org$mortbay$jetty$handler$HandlerCollection == null) {
                clsClass$2 = class$("org.mortbay.jetty.handler.HandlerCollection");
                class$org$mortbay$jetty$handler$HandlerCollection = clsClass$2;
            } else {
                clsClass$2 = class$org$mortbay$jetty$handler$HandlerCollection;
            }
            handlerCollection = (HandlerCollection) server.getChildHandlerByClass(clsClass$2);
        }
        addWebApplications(handlerCollection, str, str2, strArr, z, z2);
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static void addWebApplications(HandlerContainer handlerContainer, String str, String str2, boolean z, boolean z2) throws IOException {
        addWebApplications(handlerContainer, str, str2, __dftConfigurationClasses, z, z2);
    }

    public static void addWebApplications(HandlerContainer handlerContainer, String str, String str2, String[] strArr, boolean z, boolean z2) throws IOException {
        Log.warn(new StringBuffer().append("Deprecated configuration used for ").append(str).toString());
        WebAppDeployer webAppDeployer = new WebAppDeployer();
        webAppDeployer.setContexts(handlerContainer);
        webAppDeployer.setWebAppDir(str);
        webAppDeployer.setConfigurationClasses(strArr);
        webAppDeployer.setExtract(z);
        webAppDeployer.setParentLoaderPriority(z2);
        try {
            webAppDeployer.start();
        } catch (IOException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    public WebAppContext() {
        this(null, null, null, null);
    }

    public WebAppContext(String str, String str2) {
        super(null, str2, 3);
        this._configurationClasses = __dftConfigurationClasses;
        this._defaultsDescriptor = WEB_DEFAULTS_XML;
        this._descriptor = null;
        this._overrideDescriptor = null;
        this._distributable = false;
        this._extractWAR = true;
        this._copyDir = false;
        this._logUrlOnStart = false;
        this._parentLoaderPriority = Boolean.getBoolean("org.mortbay.jetty.webapp.parentLoaderPriority");
        this._systemClasses = new String[]{"java.", "javax.", "org.mortbay.", "org.xml.", "org.w3c.", "org.apache.commons.logging.", "org.apache.log4j."};
        this._serverClasses = new String[]{"-org.mortbay.jetty.plus.annotation.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.plus.naming.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.servlet.DefaultServlet", "org.mortbay.jetty.", "org.slf4j."};
        this._ownClassLoader = false;
        setContextPath(str2);
        setWar(str);
        setErrorHandler(new ErrorPageErrorHandler());
    }

    public WebAppContext(HandlerContainer handlerContainer, String str, String str2) {
        super(handlerContainer, str2, 3);
        this._configurationClasses = __dftConfigurationClasses;
        this._defaultsDescriptor = WEB_DEFAULTS_XML;
        this._descriptor = null;
        this._overrideDescriptor = null;
        this._distributable = false;
        this._extractWAR = true;
        this._copyDir = false;
        this._logUrlOnStart = false;
        this._parentLoaderPriority = Boolean.getBoolean("org.mortbay.jetty.webapp.parentLoaderPriority");
        this._systemClasses = new String[]{"java.", "javax.", "org.mortbay.", "org.xml.", "org.w3c.", "org.apache.commons.logging.", "org.apache.log4j."};
        this._serverClasses = new String[]{"-org.mortbay.jetty.plus.annotation.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.plus.naming.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.servlet.DefaultServlet", "org.mortbay.jetty.", "org.slf4j."};
        this._ownClassLoader = false;
        setWar(str);
        setErrorHandler(new ErrorPageErrorHandler());
    }

    public WebAppContext(SecurityHandler securityHandler, SessionHandler sessionHandler, ServletHandler servletHandler, ErrorHandler errorHandler) {
        super(null, sessionHandler != null ? sessionHandler : new SessionHandler(), securityHandler != null ? securityHandler : new SecurityHandler(), servletHandler != null ? servletHandler : new ServletHandler(), null);
        this._configurationClasses = __dftConfigurationClasses;
        this._defaultsDescriptor = WEB_DEFAULTS_XML;
        this._descriptor = null;
        this._overrideDescriptor = null;
        this._distributable = false;
        this._extractWAR = true;
        this._copyDir = false;
        this._logUrlOnStart = false;
        this._parentLoaderPriority = Boolean.getBoolean("org.mortbay.jetty.webapp.parentLoaderPriority");
        this._systemClasses = new String[]{"java.", "javax.", "org.mortbay.", "org.xml.", "org.w3c.", "org.apache.commons.logging.", "org.apache.log4j."};
        this._serverClasses = new String[]{"-org.mortbay.jetty.plus.annotation.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.plus.naming.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.servlet.DefaultServlet", "org.mortbay.jetty.", "org.slf4j."};
        this._ownClassLoader = false;
        setErrorHandler(errorHandler == null ? new ErrorPageErrorHandler() : errorHandler);
    }

    public Throwable getUnavailableException() {
        return this._unavailableException;
    }

    public void setResourceAlias(String str, String str2) {
        if (this._resourceAliases == null) {
            this._resourceAliases = new HashMap(5);
        }
        this._resourceAliases.put(str, str2);
    }

    public Map getResourceAliases() {
        if (this._resourceAliases == null) {
            return null;
        }
        return this._resourceAliases;
    }

    public void setResourceAliases(Map map) {
        this._resourceAliases = map;
    }

    public String getResourceAlias(String str) {
        if (this._resourceAliases == null) {
            return null;
        }
        return (String) this._resourceAliases.get(str);
    }

    public String removeResourceAlias(String str) {
        if (this._resourceAliases == null) {
            return null;
        }
        return (String) this._resourceAliases.remove(str);
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    public void setClassLoader(ClassLoader classLoader) {
        super.setClassLoader(classLoader);
        if (classLoader != null && (classLoader instanceof WebAppClassLoader)) {
            ((WebAppClassLoader) classLoader).setName(getDisplayName());
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    public Resource getResource(String str) throws MalformedURLException {
        Resource resource = null;
        int i = 0;
        IOException iOException = null;
        while (str != null) {
            int i2 = i + 1;
            if (i >= 100) {
                break;
            }
            try {
                resource = super.getResource(str);
            } catch (IOException e2) {
                Resource resource2 = resource;
                Log.ignore(e2);
                if (iOException == null) {
                    iOException = e2;
                }
                resource = resource2;
                i = i2;
            }
            if (resource != null && resource.exists()) {
                return resource;
            }
            str = getResourceAlias(str);
            i = i2;
        }
        if (iOException == null || !(iOException instanceof MalformedURLException)) {
            return resource;
        }
        throw ((MalformedURLException) iOException);
    }

    @Override // org.mortbay.jetty.handler.ContextHandler, org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws ServletException, IOException {
        if (this._unavailable) {
            (httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest()).setHandled(true);
            httpServletResponse.sendError(503);
        } else {
            super.handle(str, httpServletRequest, httpServletResponse, i);
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler, org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        try {
            loadConfigurations();
            for (int i = 0; i < this._configurations.length; i++) {
                this._configurations[i].setWebAppContext(this);
            }
            this._ownClassLoader = false;
            if (getClassLoader() == null) {
                setClassLoader(new WebAppClassLoader(this));
                this._ownClassLoader = true;
            }
            if (Log.isDebugEnabled()) {
                ClassLoader classLoader = getClassLoader();
                Log.debug(new StringBuffer().append("Thread Context class loader is: ").append(classLoader).toString());
                for (ClassLoader parent = classLoader.getParent(); parent != null; parent = parent.getParent()) {
                    Log.debug(new StringBuffer().append("Parent class loader is: ").append(parent).toString());
                }
            }
            for (int i2 = 0; i2 < this._configurations.length; i2++) {
                this._configurations[i2].configureClassLoader();
            }
            getTempDirectory();
            if (this._tmpDir != null && !this._isExistingTmpDir && !isTempWorkDirectory()) {
                File file = new File(this._tmpDir, ".active");
                if (!file.exists()) {
                    file.mkdir();
                }
            }
            super.doStart();
            if (isLogUrlOnStart()) {
                dumpUrl();
            }
        } catch (Exception e2) {
            Log.warn(new StringBuffer().append("Failed startup of context ").append(this).toString(), (Throwable) e2);
            this._unavailableException = e2;
            this._unavailable = true;
        }
    }

    public void dumpUrl() {
        Connector[] connectors = getServer().getConnectors();
        for (Connector connector : connectors) {
            String name = connector.getName();
            String displayName = getDisplayName();
            if (displayName == null) {
                displayName = new StringBuffer().append("WebApp@").append(connectors.hashCode()).toString();
            }
            Log.info(new StringBuffer().append(displayName).append(" at http://").append(name).append(getContextPath()).toString());
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler, org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
        try {
            int length = this._configurations.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                this._configurations[i].deconfigureWebApp();
                length = i;
            }
            this._configurations = null;
            if (this._securityHandler.getHandler() == null) {
                this._sessionHandler.setHandler(this._securityHandler);
                this._securityHandler.setHandler(this._servletHandler);
            }
            if (this._tmpDir != null && !this._isExistingTmpDir && !isTempWorkDirectory()) {
                IO.delete(this._tmpDir);
                this._tmpDir = null;
            }
        } finally {
            if (this._ownClassLoader) {
                setClassLoader(null);
            }
            this._unavailable = false;
            this._unavailableException = null;
        }
    }

    public String[] getConfigurationClasses() {
        return this._configurationClasses;
    }

    public Configuration[] getConfigurations() {
        return this._configurations;
    }

    public String getDefaultsDescriptor() {
        return this._defaultsDescriptor;
    }

    public String getOverrideDescriptor() {
        return this._overrideDescriptor;
    }

    public PermissionCollection getPermissions() {
        return this._permissions;
    }

    public String[] getServerClasses() {
        return this._serverClasses;
    }

    public String[] getSystemClasses() {
        return this._systemClasses;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0195  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File getTempDirectory() {
        /*
            Method dump skipped, instruction units count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.webapp.WebAppContext.getTempDirectory():java.io.File");
    }

    public boolean isTempWorkDirectory() {
        if (this._tmpDir == null) {
            return false;
        }
        if (this._tmpDir.getName().equalsIgnoreCase(DbxWebAuth.ROLE_WORK)) {
            return true;
        }
        File parentFile = this._tmpDir.getParentFile();
        if (parentFile != null) {
            return parentFile.getName().equalsIgnoreCase(DbxWebAuth.ROLE_WORK);
        }
        return false;
    }

    public String getWar() {
        if (this._war == null) {
            this._war = getResourceBase();
        }
        return this._war;
    }

    public Resource getWebInf() throws Throwable {
        resolveWebApp();
        Resource resourceAddPath = super.getBaseResource().addPath("WEB-INF/");
        if (!resourceAddPath.exists() || !resourceAddPath.isDirectory()) {
            return null;
        }
        return resourceAddPath;
    }

    public boolean isDistributable() {
        return this._distributable;
    }

    public boolean isExtractWAR() {
        return this._extractWAR;
    }

    public boolean isCopyWebDir() {
        return this._copyDir;
    }

    public boolean isParentLoaderPriority() {
        return this._parentLoaderPriority;
    }

    protected void loadConfigurations() throws Exception {
        if (this._configurations == null) {
            if (this._configurationClasses == null) {
                this._configurationClasses = __dftConfigurationClasses;
            }
            this._configurations = new Configuration[this._configurationClasses.length];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this._configurations.length) {
                    this._configurations[i2] = (Configuration) Loader.loadClass(getClass(), this._configurationClasses[i2]).newInstance();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    protected boolean isProtectedTarget(String str) {
        while (str.startsWith("//")) {
            str = URIUtil.compactPath(str);
        }
        return StringUtil.startsWithIgnoreCase(str, "/web-inf") || StringUtil.startsWithIgnoreCase(str, "/meta-inf");
    }

    @Override // org.mortbay.jetty.handler.ContextHandler, org.mortbay.jetty.handler.AbstractHandler
    public String toString() {
        return new StringBuffer().append(getClass().getName()).append("@").append(Integer.toHexString(hashCode())).append("{").append(getContextPath()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this._war == null ? getResourceBase() : this._war).append("}").toString();
    }

    protected void resolveWebApp() throws Throwable {
        if (super.getBaseResource() == null) {
            if (this._war == null || this._war.length() == 0) {
                this._war = getResourceBase();
            }
            Resource resourceNewResource = Resource.newResource(this._war);
            if (resourceNewResource.getAlias() != null) {
                Log.debug(new StringBuffer().append(resourceNewResource).append(" anti-aliased to ").append(resourceNewResource.getAlias()).toString());
                resourceNewResource = Resource.newResource(resourceNewResource.getAlias());
            }
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("Try webapp=").append(resourceNewResource).append(", exists=").append(resourceNewResource.exists()).append(", directory=").append(resourceNewResource.isDirectory()).toString());
            }
            if (resourceNewResource.exists() && !resourceNewResource.isDirectory() && !resourceNewResource.toString().startsWith("jar:")) {
                Resource resourceNewResource2 = Resource.newResource(new StringBuffer().append("jar:").append(resourceNewResource).append("!/").toString());
                if (resourceNewResource2.exists() && resourceNewResource2.isDirectory()) {
                    resourceNewResource = resourceNewResource2;
                }
            }
            if (resourceNewResource.exists() && ((this._copyDir && resourceNewResource.getFile() != null && resourceNewResource.getFile().isDirectory()) || ((this._extractWAR && resourceNewResource.getFile() != null && !resourceNewResource.getFile().isDirectory()) || ((this._extractWAR && resourceNewResource.getFile() == null) || !resourceNewResource.isDirectory())))) {
                File file = new File(getTempDirectory(), "webapp");
                if (resourceNewResource.getFile() != null && resourceNewResource.getFile().isDirectory()) {
                    Log.info(new StringBuffer().append("Copy ").append(resourceNewResource.getFile()).append(" to ").append(file).toString());
                    IO.copyDir(resourceNewResource.getFile(), file);
                } else if (!file.exists()) {
                    file.mkdir();
                    Log.info(new StringBuffer().append("Extract ").append(this._war).append(" to ").append(file).toString());
                    JarResource.extract(resourceNewResource, file, false);
                } else if (resourceNewResource.lastModified() > file.lastModified()) {
                    IO.delete(file);
                    file.mkdir();
                    Log.info(new StringBuffer().append("Extract ").append(this._war).append(" to ").append(file).toString());
                    JarResource.extract(resourceNewResource, file, false);
                }
                resourceNewResource = Resource.newResource(file.getCanonicalPath());
            }
            if (!resourceNewResource.exists() || !resourceNewResource.isDirectory()) {
                Log.warn(new StringBuffer().append("Web application not found ").append(this._war).toString());
                throw new FileNotFoundException(this._war);
            }
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("webapp=").append(resourceNewResource).toString());
            }
            super.setBaseResource(resourceNewResource);
        }
    }

    public void setConfigurationClasses(String[] strArr) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this._configurationClasses = strArr == null ? null : (String[]) strArr.clone();
    }

    public void setConfigurations(Configuration[] configurationArr) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this._configurations = configurationArr == null ? null : (Configuration[]) configurationArr.clone();
    }

    public void setDefaultsDescriptor(String str) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this._defaultsDescriptor = str;
    }

    public void setOverrideDescriptor(String str) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this._overrideDescriptor = str;
    }

    public String getDescriptor() {
        return this._descriptor;
    }

    public void setDescriptor(String str) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this._descriptor = str;
    }

    public void setDistributable(boolean z) {
        this._distributable = z;
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    public void setEventListeners(EventListener[] eventListenerArr) {
        if (this._sessionHandler != null) {
            this._sessionHandler.clearEventListeners();
        }
        super.setEventListeners(eventListenerArr);
        for (int i = 0; eventListenerArr != null && i < eventListenerArr.length; i++) {
            EventListener eventListener = eventListenerArr[i];
            if (((eventListener instanceof HttpSessionActivationListener) || (eventListener instanceof HttpSessionAttributeListener) || (eventListener instanceof HttpSessionBindingListener) || (eventListener instanceof HttpSessionListener)) && this._sessionHandler != null) {
                this._sessionHandler.addEventListener(eventListener);
            }
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
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

    public void setExtractWAR(boolean z) {
        this._extractWAR = z;
    }

    public void setCopyWebDir(boolean z) {
        this._copyDir = z;
    }

    public void setParentLoaderPriority(boolean z) {
        this._parentLoaderPriority = z;
    }

    public void setPermissions(PermissionCollection permissionCollection) {
        this._permissions = permissionCollection;
    }

    public void setServerClasses(String[] strArr) {
        this._serverClasses = strArr == null ? null : (String[]) strArr.clone();
    }

    public void setSystemClasses(String[] strArr) {
        this._systemClasses = strArr == null ? null : (String[]) strArr.clone();
    }

    public void setTempDirectory(File file) {
        if (isStarted()) {
            throw new IllegalStateException("Started");
        }
        if (file != null) {
            try {
                file = new File(file.getCanonicalPath());
            } catch (IOException e2) {
                Log.warn(Log.EXCEPTION, (Throwable) e2);
            }
        }
        if (file != null && !file.exists()) {
            file.mkdir();
            file.deleteOnExit();
        } else if (file != null) {
            this._isExistingTmpDir = true;
        }
        if (file != null && (!file.exists() || !file.isDirectory() || !file.canWrite())) {
            throw new IllegalArgumentException(new StringBuffer().append("Bad temp directory: ").append(file).toString());
        }
        this._tmpDir = file;
        setAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR, this._tmpDir);
    }

    public void setWar(String str) {
        this._war = str;
    }

    public String getExtraClasspath() {
        return this._extraClasspath;
    }

    public void setExtraClasspath(String str) {
        this._extraClasspath = str;
    }

    public boolean isLogUrlOnStart() {
        return this._logUrlOnStart;
    }

    public void setLogUrlOnStart(boolean z) {
        this._logUrlOnStart = z;
    }

    @Override // org.mortbay.jetty.servlet.Context, org.mortbay.jetty.handler.ContextHandler
    protected void startContext() throws Exception {
        for (int i = 0; i < this._configurations.length; i++) {
            this._configurations[i].configureDefaults();
        }
        Resource webInf = getWebInf();
        if (webInf != null) {
            Resource resourceAddPath = webInf.addPath(DbxWebAuth.ROLE_WORK);
            if (resourceAddPath.exists() && resourceAddPath.isDirectory() && resourceAddPath.getFile() != null && resourceAddPath.getFile().canWrite() && getAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR) == null) {
                setAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR, resourceAddPath.getFile());
            }
        }
        for (int i2 = 0; i2 < this._configurations.length; i2++) {
            this._configurations[i2].configureWebApp();
        }
        super.startContext();
    }

    private String getCanonicalNameForWebAppTmpDir() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Jetty");
        Connector[] connectors = getServer().getConnectors();
        stringBuffer.append(d.ROLL_OVER_FILE_NAME_SEPARATOR);
        String host = (connectors == null || connectors[0] == null) ? "" : connectors[0].getHost();
        if (host == null) {
            host = Portable.ALL_INTERFACES;
        }
        stringBuffer.append(host.replace('.', '_'));
        stringBuffer.append(d.ROLL_OVER_FILE_NAME_SEPARATOR);
        int localPort = (connectors == null || connectors[0] == null) ? 0 : connectors[0].getLocalPort();
        if (localPort < 0) {
            localPort = connectors[0].getPort();
        }
        stringBuffer.append(localPort);
        stringBuffer.append(d.ROLL_OVER_FILE_NAME_SEPARATOR);
        try {
            Resource baseResource = super.getBaseResource();
            if (baseResource == null) {
                if (this._war == null || this._war.length() == 0) {
                    Resource.newResource(getResourceBase());
                }
                baseResource = Resource.newResource(this._war);
            }
            String strDecodePath = URIUtil.decodePath(baseResource.getURL().getPath());
            if (strDecodePath.endsWith(URIUtil.SLASH)) {
                strDecodePath = strDecodePath.substring(0, strDecodePath.length() - 1);
            }
            if (strDecodePath.endsWith("!")) {
                strDecodePath = strDecodePath.substring(0, strDecodePath.length() - 1);
            }
            stringBuffer.append(strDecodePath.substring(strDecodePath.lastIndexOf(URIUtil.SLASH) + 1, strDecodePath.length()));
        } catch (Exception e2) {
            Log.warn("Can't generate resourceBase as part of webapp tmp dir name", (Throwable) e2);
        }
        stringBuffer.append(d.ROLL_OVER_FILE_NAME_SEPARATOR);
        stringBuffer.append(getContextPath().replace(IOUtils.DIR_SEPARATOR_UNIX, '_').replace(IOUtils.DIR_SEPARATOR_WINDOWS, '_'));
        stringBuffer.append(d.ROLL_OVER_FILE_NAME_SEPARATOR);
        String[] virtualHosts = getVirtualHosts();
        stringBuffer.append((virtualHosts == null || virtualHosts[0] == null) ? "" : virtualHosts[0]);
        String string = Integer.toString(stringBuffer.toString().hashCode(), 36);
        stringBuffer.append(d.ROLL_OVER_FILE_NAME_SEPARATOR);
        stringBuffer.append(string);
        for (int i = 0; i < stringBuffer.length(); i++) {
            if (!Character.isJavaIdentifierPart(stringBuffer.charAt(i))) {
                stringBuffer.setCharAt(i, '.');
            }
        }
        return stringBuffer.toString();
    }
}
