package org.mortbay.jetty.webapp;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.data.appsforyourdomain.migration.Rfc822Msg;
import java.net.URL;
import java.util.ArrayList;
import java.util.EventListener;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.UnavailableException;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.security.Authenticator;
import org.mortbay.jetty.security.BasicAuthenticator;
import org.mortbay.jetty.security.ClientCertAuthenticator;
import org.mortbay.jetty.security.Constraint;
import org.mortbay.jetty.security.ConstraintMapping;
import org.mortbay.jetty.security.DigestAuthenticator;
import org.mortbay.jetty.security.FormAuthenticator;
import org.mortbay.jetty.security.SecurityHandler;
import org.mortbay.jetty.security.UserRealm;
import org.mortbay.jetty.servlet.Dispatcher;
import org.mortbay.jetty.servlet.ErrorPageErrorHandler;
import org.mortbay.jetty.servlet.FilterHolder;
import org.mortbay.jetty.servlet.FilterMapping;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.jetty.servlet.ServletHolder;
import org.mortbay.jetty.servlet.ServletMapping;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.LazyList;
import org.mortbay.util.URIUtil;
import org.mortbay.xml.XmlParser;

/* JADX INFO: loaded from: classes3.dex */
public class WebXmlConfiguration implements Configuration {
    static Class class$java$lang$String;
    static Class class$java$util$EventListener;
    static Class class$org$mortbay$jetty$security$ConstraintMapping;
    static Class class$org$mortbay$jetty$servlet$FilterHolder;
    static Class class$org$mortbay$jetty$servlet$FilterMapping;
    static Class class$org$mortbay$jetty$servlet$ServletHolder;
    static Class class$org$mortbay$jetty$servlet$ServletMapping;
    static Class class$org$mortbay$jetty$webapp$WebAppContext;
    protected Object _constraintMappings;
    protected WebAppContext _context;
    protected boolean _defaultWelcomeFileList;
    protected Map _errorPages;
    protected Object _filterMappings;
    protected Object _filters;
    protected boolean _hasJSP;
    protected String _jspServletClass;
    protected String _jspServletName;
    protected Object _listeners;
    protected ServletHandler _servletHandler;
    protected Object _servletMappings;
    protected Object _servlets;
    protected int _version;
    protected Object _welcomeFiles;
    protected XmlParser _xmlParser = webXmlParser();

    public static XmlParser webXmlParser() throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        Class clsClass$3;
        Class clsClass$4;
        Class clsClass$5;
        Class clsClass$6;
        Class clsClass$7;
        Class clsClass$8;
        Class clsClass$9;
        Class clsClass$10;
        Class clsClass$11;
        Class clsClass$12;
        XmlParser xmlParser = new XmlParser();
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$ = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource = clsClass$.getResource("/javax/servlet/resources/web-app_2_2.dtd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$2 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$2;
        } else {
            clsClass$2 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource2 = clsClass$2.getResource("/javax/servlet/resources/web-app_2_3.dtd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$3 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$3;
        } else {
            clsClass$3 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource3 = clsClass$3.getResource("/javax/servlet/resources/jsp_2_0.xsd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$4 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$4;
        } else {
            clsClass$4 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource4 = clsClass$4.getResource("/javax/servlet/resources/jsp_2_1.xsd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$5 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$5;
        } else {
            clsClass$5 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource5 = clsClass$5.getResource("/javax/servlet/resources/j2ee_1_4.xsd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$6 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$6;
        } else {
            clsClass$6 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource6 = clsClass$6.getResource("/javax/servlet/resources/web-app_2_4.xsd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$7 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$7;
        } else {
            clsClass$7 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource7 = clsClass$7.getResource("/javax/servlet/resources/web-app_2_5.xsd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$8 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$8;
        } else {
            clsClass$8 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource8 = clsClass$8.getResource("/javax/servlet/resources/XMLSchema.dtd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$9 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$9;
        } else {
            clsClass$9 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource9 = clsClass$9.getResource("/javax/servlet/resources/xml.xsd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$10 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$10;
        } else {
            clsClass$10 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource10 = clsClass$10.getResource("/javax/servlet/resources/j2ee_web_services_client_1_1.xsd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$11 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$11;
        } else {
            clsClass$11 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource11 = clsClass$11.getResource("/javax/servlet/resources/javaee_web_services_client_1_2.xsd");
        if (class$org$mortbay$jetty$webapp$WebAppContext == null) {
            clsClass$12 = class$("org.mortbay.jetty.webapp.WebAppContext");
            class$org$mortbay$jetty$webapp$WebAppContext = clsClass$12;
        } else {
            clsClass$12 = class$org$mortbay$jetty$webapp$WebAppContext;
        }
        URL resource12 = clsClass$12.getResource("/javax/servlet/resources/datatypes.dtd");
        xmlParser.redirectEntity("web-app_2_2.dtd", resource);
        xmlParser.redirectEntity("-//Sun Microsystems, Inc.//DTD Web Application 2.2//EN", resource);
        xmlParser.redirectEntity("web.dtd", resource2);
        xmlParser.redirectEntity("web-app_2_3.dtd", resource2);
        xmlParser.redirectEntity("-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN", resource2);
        xmlParser.redirectEntity("XMLSchema.dtd", resource8);
        xmlParser.redirectEntity("http://www.w3.org/2001/XMLSchema.dtd", resource8);
        xmlParser.redirectEntity("-//W3C//DTD XMLSCHEMA 200102//EN", resource8);
        xmlParser.redirectEntity("jsp_2_0.xsd", resource3);
        xmlParser.redirectEntity("http://java.sun.com/xml/ns/j2ee/jsp_2_0.xsd", resource3);
        xmlParser.redirectEntity("jsp_2_1.xsd", resource4);
        xmlParser.redirectEntity("http://java.sun.com/xml/ns/javaee/jsp_2_1.xsd", resource4);
        xmlParser.redirectEntity("j2ee_1_4.xsd", resource5);
        xmlParser.redirectEntity("http://java.sun.com/xml/ns/j2ee/j2ee_1_4.xsd", resource5);
        xmlParser.redirectEntity("web-app_2_4.xsd", resource6);
        xmlParser.redirectEntity("http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd", resource6);
        xmlParser.redirectEntity("web-app_2_5.xsd", resource7);
        xmlParser.redirectEntity("http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd", resource7);
        xmlParser.redirectEntity("xml.xsd", resource9);
        xmlParser.redirectEntity("http://www.w3.org/2001/xml.xsd", resource9);
        xmlParser.redirectEntity("datatypes.dtd", resource12);
        xmlParser.redirectEntity("http://www.w3.org/2001/datatypes.dtd", resource12);
        xmlParser.redirectEntity("j2ee_web_services_client_1_1.xsd", resource10);
        xmlParser.redirectEntity("http://www.ibm.com/webservices/xsd/j2ee_web_services_client_1_1.xsd", resource10);
        xmlParser.redirectEntity("javaee_web_services_client_1_2.xsd", resource11);
        xmlParser.redirectEntity("http://www.ibm.com/webservices/xsd/javaee_web_services_client_1_2.xsd", resource11);
        return xmlParser;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void setWebAppContext(WebAppContext webAppContext) {
        this._context = webAppContext;
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public WebAppContext getWebAppContext() {
        return this._context;
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureClassLoader() throws Exception {
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureDefaults() throws Exception {
        if (this._context.isStarted()) {
            if (Log.isDebugEnabled()) {
                Log.debug("Cannot configure webapp after it is started");
                return;
            }
            return;
        }
        String defaultsDescriptor = getWebAppContext().getDefaultsDescriptor();
        if (defaultsDescriptor != null && defaultsDescriptor.length() > 0) {
            Resource resourceNewSystemResource = Resource.newSystemResource(defaultsDescriptor);
            if (resourceNewSystemResource == null) {
                resourceNewSystemResource = Resource.newResource(defaultsDescriptor);
            }
            configure(resourceNewSystemResource.getURL().toString());
            this._defaultWelcomeFileList = this._welcomeFiles != null;
        }
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureWebApp() throws Exception {
        if (this._context.isStarted()) {
            if (Log.isDebugEnabled()) {
                Log.debug("Cannot configure webapp after it is started");
                return;
            }
            return;
        }
        URL urlFindWebXml = findWebXml();
        if (urlFindWebXml != null) {
            configure(urlFindWebXml.toString());
        }
        String overrideDescriptor = getWebAppContext().getOverrideDescriptor();
        if (overrideDescriptor != null && overrideDescriptor.length() > 0) {
            Resource resourceNewSystemResource = Resource.newSystemResource(overrideDescriptor);
            if (resourceNewSystemResource == null) {
                resourceNewSystemResource = Resource.newResource(overrideDescriptor);
            }
            this._xmlParser.setValidating(false);
            configure(resourceNewSystemResource.getURL().toString());
        }
    }

    protected URL findWebXml() throws Throwable {
        String descriptor = getWebAppContext().getDescriptor();
        if (descriptor != null) {
            Resource resourceNewResource = Resource.newResource(descriptor);
            if (resourceNewResource.exists() && !resourceNewResource.isDirectory()) {
                return resourceNewResource.getURL();
            }
        }
        Resource webInf = getWebAppContext().getWebInf();
        if (webInf != null && webInf.isDirectory()) {
            Resource resourceAddPath = webInf.addPath("web.xml");
            if (resourceAddPath.exists()) {
                return resourceAddPath.getURL();
            }
            Log.debug(new StringBuffer().append("No WEB-INF/web.xml in ").append(getWebAppContext().getWar()).append(". Serving files and default/dynamic servlets only").toString());
        }
        return null;
    }

    public void configure(String str) throws Exception {
        initialize(this._xmlParser.parse(str));
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void deconfigureWebApp() throws Exception {
        this._servletHandler = getWebAppContext().getServletHandler();
        this._servletHandler.setFilters(null);
        this._servletHandler.setFilterMappings(null);
        this._servletHandler.setServlets(null);
        this._servletHandler.setServletMappings(null);
        getWebAppContext().setEventListeners(null);
        getWebAppContext().setWelcomeFiles(null);
        if (getWebAppContext().getSecurityHandler() != null) {
            getWebAppContext().getSecurityHandler().setConstraintMappings(null);
        }
        if (getWebAppContext().getErrorHandler() instanceof ErrorPageErrorHandler) {
            ((ErrorPageErrorHandler) getWebAppContext().getErrorHandler()).setErrorPages(null);
        }
    }

    protected void initialize(XmlParser.Node node) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        Class clsClass$3;
        Class clsClass$4;
        Class clsClass$5;
        Class clsClass$6;
        Class clsClass$7;
        XmlParser.Node node2 = null;
        this._servletHandler = getWebAppContext().getServletHandler();
        this._filters = LazyList.array2List(this._servletHandler.getFilters());
        this._filterMappings = LazyList.array2List(this._servletHandler.getFilterMappings());
        this._servlets = LazyList.array2List(this._servletHandler.getServlets());
        this._servletMappings = LazyList.array2List(this._servletHandler.getServletMappings());
        this._listeners = LazyList.array2List(getWebAppContext().getEventListeners());
        this._welcomeFiles = LazyList.array2List(getWebAppContext().getWelcomeFiles());
        this._constraintMappings = LazyList.array2List(getWebAppContext().getSecurityHandler().getConstraintMappings());
        this._errorPages = getWebAppContext().getErrorHandler() instanceof ErrorPageErrorHandler ? ((ErrorPageErrorHandler) getWebAppContext().getErrorHandler()).getErrorPages() : null;
        String attribute = node.getAttribute(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, "DTD");
        if ("2.5".equals(attribute)) {
            this._version = 25;
        } else if ("2.4".equals(attribute)) {
            this._version = 24;
        } else if ("DTD".equals(attribute)) {
            this._version = 23;
            String dtd = this._xmlParser.getDTD();
            if (dtd != null && dtd.indexOf("web-app_2_2") >= 0) {
                this._version = 22;
            }
        }
        for (Object obj : node) {
            try {
                try {
                    if (obj instanceof XmlParser.Node) {
                        XmlParser.Node node3 = (XmlParser.Node) obj;
                        try {
                            initWebXmlElement(node3.getTag(), node3);
                            node2 = node3;
                        } catch (Exception e2) {
                            node2 = node3;
                            e = e2;
                            Log.warn(new StringBuffer().append("Configuration problem at ").append(node2).append(": ").append(e).toString());
                            Log.debug(e);
                            throw new UnavailableException("Configuration problem");
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (ClassNotFoundException e4) {
                throw e4;
            }
        }
        ServletHandler servletHandler = this._servletHandler;
        Object obj2 = this._filters;
        if (class$org$mortbay$jetty$servlet$FilterHolder == null) {
            clsClass$ = class$("org.mortbay.jetty.servlet.FilterHolder");
            class$org$mortbay$jetty$servlet$FilterHolder = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$servlet$FilterHolder;
        }
        servletHandler.setFilters((FilterHolder[]) LazyList.toArray(obj2, clsClass$));
        ServletHandler servletHandler2 = this._servletHandler;
        Object obj3 = this._filterMappings;
        if (class$org$mortbay$jetty$servlet$FilterMapping == null) {
            clsClass$2 = class$("org.mortbay.jetty.servlet.FilterMapping");
            class$org$mortbay$jetty$servlet$FilterMapping = clsClass$2;
        } else {
            clsClass$2 = class$org$mortbay$jetty$servlet$FilterMapping;
        }
        servletHandler2.setFilterMappings((FilterMapping[]) LazyList.toArray(obj3, clsClass$2));
        ServletHandler servletHandler3 = this._servletHandler;
        Object obj4 = this._servlets;
        if (class$org$mortbay$jetty$servlet$ServletHolder == null) {
            clsClass$3 = class$("org.mortbay.jetty.servlet.ServletHolder");
            class$org$mortbay$jetty$servlet$ServletHolder = clsClass$3;
        } else {
            clsClass$3 = class$org$mortbay$jetty$servlet$ServletHolder;
        }
        servletHandler3.setServlets((ServletHolder[]) LazyList.toArray(obj4, clsClass$3));
        ServletHandler servletHandler4 = this._servletHandler;
        Object obj5 = this._servletMappings;
        if (class$org$mortbay$jetty$servlet$ServletMapping == null) {
            clsClass$4 = class$("org.mortbay.jetty.servlet.ServletMapping");
            class$org$mortbay$jetty$servlet$ServletMapping = clsClass$4;
        } else {
            clsClass$4 = class$org$mortbay$jetty$servlet$ServletMapping;
        }
        servletHandler4.setServletMappings((ServletMapping[]) LazyList.toArray(obj5, clsClass$4));
        WebAppContext webAppContext = getWebAppContext();
        Object obj6 = this._listeners;
        if (class$java$util$EventListener == null) {
            clsClass$5 = class$("java.util.EventListener");
            class$java$util$EventListener = clsClass$5;
        } else {
            clsClass$5 = class$java$util$EventListener;
        }
        webAppContext.setEventListeners((EventListener[]) LazyList.toArray(obj6, clsClass$5));
        WebAppContext webAppContext2 = getWebAppContext();
        Object obj7 = this._welcomeFiles;
        if (class$java$lang$String == null) {
            clsClass$6 = class$("java.lang.String");
            class$java$lang$String = clsClass$6;
        } else {
            clsClass$6 = class$java$lang$String;
        }
        webAppContext2.setWelcomeFiles((String[]) LazyList.toArray(obj7, clsClass$6));
        SecurityHandler securityHandler = getWebAppContext().getSecurityHandler();
        Object obj8 = this._constraintMappings;
        if (class$org$mortbay$jetty$security$ConstraintMapping == null) {
            clsClass$7 = class$("org.mortbay.jetty.security.ConstraintMapping");
            class$org$mortbay$jetty$security$ConstraintMapping = clsClass$7;
        } else {
            clsClass$7 = class$org$mortbay$jetty$security$ConstraintMapping;
        }
        securityHandler.setConstraintMappings((ConstraintMapping[]) LazyList.toArray(obj8, clsClass$7));
        if (this._errorPages != null && (getWebAppContext().getErrorHandler() instanceof ErrorPageErrorHandler)) {
            ((ErrorPageErrorHandler) getWebAppContext().getErrorHandler()).setErrorPages(this._errorPages);
        }
    }

    protected void initWebXmlElement(String str, XmlParser.Node node) throws Exception {
        if ("display-name".equals(str)) {
            initDisplayName(node);
            return;
        }
        if (!"description".equals(str)) {
            if ("context-param".equals(str)) {
                initContextParam(node);
                return;
            }
            if ("servlet".equals(str)) {
                initServlet(node);
                return;
            }
            if ("servlet-mapping".equals(str)) {
                initServletMapping(node);
                return;
            }
            if ("session-config".equals(str)) {
                initSessionConfig(node);
                return;
            }
            if ("mime-mapping".equals(str)) {
                initMimeConfig(node);
                return;
            }
            if ("welcome-file-list".equals(str)) {
                initWelcomeFileList(node);
                return;
            }
            if ("locale-encoding-mapping-list".equals(str)) {
                initLocaleEncodingList(node);
                return;
            }
            if ("error-page".equals(str)) {
                initErrorPage(node);
                return;
            }
            if ("taglib".equals(str)) {
                initTagLib(node);
                return;
            }
            if ("jsp-config".equals(str)) {
                initJspConfig(node);
                return;
            }
            if ("resource-ref".equals(str)) {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("No implementation: ").append(node).toString());
                    return;
                }
                return;
            }
            if ("security-constraint".equals(str)) {
                initSecurityConstraint(node);
                return;
            }
            if ("login-config".equals(str)) {
                initLoginConfig(node);
                return;
            }
            if ("security-role".equals(str)) {
                initSecurityRole(node);
                return;
            }
            if ("filter".equals(str)) {
                initFilter(node);
                return;
            }
            if ("filter-mapping".equals(str)) {
                initFilterMapping(node);
                return;
            }
            if ("listener".equals(str)) {
                initListener(node);
                return;
            }
            if ("distributable".equals(str)) {
                initDistributable(node);
            } else if (Log.isDebugEnabled()) {
                Log.debug("Element {} not handled in {}", str, this);
                Log.debug(node.toString());
            }
        }
    }

    protected void initDisplayName(XmlParser.Node node) {
        getWebAppContext().setDisplayName(node.toString(false, true));
    }

    protected void initContextParam(XmlParser.Node node) {
        String string = node.getString("param-name", false, true);
        String string2 = node.getString("param-value", false, true);
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("ContextParam: ").append(string).append(Engagement.Comparison.EQ).append(string2).toString());
        }
        getWebAppContext().getInitParams().put(string, string2);
    }

    protected void initFilter(XmlParser.Node node) {
        String string = node.getString("filter-name", false, true);
        FilterHolder filter = this._servletHandler.getFilter(string);
        if (filter == null) {
            filter = this._servletHandler.newFilterHolder();
            filter.setName(string);
            this._filters = LazyList.add(this._filters, filter);
        }
        FilterHolder filterHolder = filter;
        String string2 = node.getString("filter-class", false, true);
        if (string2 != null) {
            filterHolder.setClassName(string2);
        }
        Iterator it = node.iterator("init-param");
        while (it.hasNext()) {
            XmlParser.Node node2 = (XmlParser.Node) it.next();
            filterHolder.setInitParameter(node2.getString("param-name", false, true), node2.getString("param-value", false, true));
        }
    }

    protected void initFilterMapping(XmlParser.Node node) {
        String string = node.getString("filter-name", false, true);
        FilterMapping filterMapping = new FilterMapping();
        filterMapping.setFilterName(string);
        ArrayList arrayList = new ArrayList();
        Iterator it = node.iterator("url-pattern");
        while (it.hasNext()) {
            arrayList.add(normalizePattern(((XmlParser.Node) it.next()).toString(false, true)));
        }
        filterMapping.setPathSpecs((String[]) arrayList.toArray(new String[arrayList.size()]));
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = node.iterator("servlet-name");
        while (it2.hasNext()) {
            arrayList2.add(((XmlParser.Node) it2.next()).toString(false, true));
        }
        filterMapping.setServletNames((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        Iterator it3 = node.iterator("dispatcher");
        int iType = 0;
        while (it3.hasNext()) {
            iType = Dispatcher.type(((XmlParser.Node) it3.next()).toString(false, true)) | iType;
        }
        filterMapping.setDispatches(iType);
        this._filterMappings = LazyList.add(this._filterMappings, filterMapping);
    }

    protected String normalizePattern(String str) {
        if (str != null && str.length() > 0 && !str.startsWith(URIUtil.SLASH) && !str.startsWith("*")) {
            return new StringBuffer().append(URIUtil.SLASH).append(str).toString();
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x01c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void initServlet(org.mortbay.xml.XmlParser.Node r10) {
        /*
            Method dump skipped, instruction units count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.webapp.WebXmlConfiguration.initServlet(org.mortbay.xml.XmlParser$Node):void");
    }

    protected void initServletMapping(XmlParser.Node node) {
        String string = node.getString("servlet-name", false, true);
        ServletMapping servletMapping = new ServletMapping();
        servletMapping.setServletName(string);
        ArrayList arrayList = new ArrayList();
        Iterator it = node.iterator("url-pattern");
        while (it.hasNext()) {
            arrayList.add(normalizePattern(((XmlParser.Node) it.next()).toString(false, true)));
        }
        servletMapping.setPathSpecs((String[]) arrayList.toArray(new String[arrayList.size()]));
        this._servletMappings = LazyList.add(this._servletMappings, servletMapping);
    }

    protected void initListener(XmlParser.Node node) {
        String string = node.getString("listener-class", false, true);
        try {
            Object objNewListenerInstance = newListenerInstance(getWebAppContext().loadClass(string));
            if (!(objNewListenerInstance instanceof EventListener)) {
                Log.warn(new StringBuffer().append("Not an EventListener: ").append(objNewListenerInstance).toString());
            } else {
                this._listeners = LazyList.add(this._listeners, objNewListenerInstance);
            }
        } catch (Exception e2) {
            Log.warn(new StringBuffer().append("Could not instantiate listener ").append(string).toString(), (Throwable) e2);
        }
    }

    protected Object newListenerInstance(Class cls) throws IllegalAccessException, InstantiationException {
        return cls.newInstance();
    }

    protected void initDistributable(XmlParser.Node node) {
        WebAppContext webAppContext = getWebAppContext();
        if (!webAppContext.isDistributable()) {
            webAppContext.setDistributable(true);
        }
    }

    protected void initSessionConfig(XmlParser.Node node) {
        XmlParser.Node node2 = node.get("session-timeout");
        if (node2 != null) {
            getWebAppContext().getSessionHandler().getSessionManager().setMaxInactiveInterval(Integer.parseInt(node2.toString(false, true)) * 60);
        }
    }

    protected void initMimeConfig(XmlParser.Node node) {
        String string = node.getString("extension", false, true);
        if (string != null && string.startsWith(".")) {
            string = string.substring(1);
        }
        getWebAppContext().getMimeTypes().addMimeMapping(string, node.getString("mime-type", false, true));
    }

    protected void initWelcomeFileList(XmlParser.Node node) {
        if (this._defaultWelcomeFileList) {
            this._welcomeFiles = null;
        }
        this._defaultWelcomeFileList = false;
        Iterator it = node.iterator("welcome-file");
        while (it.hasNext()) {
            this._welcomeFiles = LazyList.add(this._welcomeFiles, ((XmlParser.Node) it.next()).toString(false, true));
        }
    }

    protected void initLocaleEncodingList(XmlParser.Node node) {
        Iterator it = node.iterator("locale-encoding-mapping");
        while (it.hasNext()) {
            XmlParser.Node node2 = (XmlParser.Node) it.next();
            getWebAppContext().addLocaleEncoding(node2.getString("locale", false, true), node2.getString(Rfc822Msg.ATTRIBUTE_ENCODING, false, true));
        }
    }

    protected void initErrorPage(XmlParser.Node node) {
        String string = node.getString("error-code", false, true);
        if (string == null || string.length() == 0) {
            string = node.getString("exception-type", false, true);
        }
        String string2 = node.getString("location", false, true);
        if (this._errorPages == null) {
            this._errorPages = new HashMap();
        }
        this._errorPages.put(string, string2);
    }

    protected void initTagLib(XmlParser.Node node) {
        getWebAppContext().setResourceAlias(node.getString("taglib-uri", false, true), node.getString("taglib-location", false, true));
    }

    protected void initJspConfig(XmlParser.Node node) {
        String jSPServletName;
        for (int i = 0; i < node.size(); i++) {
            Object obj = node.get(i);
            if ((obj instanceof XmlParser.Node) && "taglib".equals(((XmlParser.Node) obj).getTag())) {
                initTagLib((XmlParser.Node) obj);
            }
        }
        Iterator it = node.iterator("jsp-property-group");
        Object objAdd = null;
        while (it.hasNext()) {
            Iterator it2 = ((XmlParser.Node) it.next()).iterator("url-pattern");
            while (it2.hasNext()) {
                objAdd = LazyList.add(objAdd, normalizePattern(((XmlParser.Node) it2.next()).toString(false, true)));
            }
        }
        if (LazyList.size(objAdd) > 0 && (jSPServletName = getJSPServletName()) != null) {
            ServletMapping servletMapping = new ServletMapping();
            servletMapping.setServletName(jSPServletName);
            servletMapping.setPathSpecs(LazyList.toStringArray(objAdd));
            this._servletMappings = LazyList.add(this._servletMappings, servletMapping);
        }
    }

    protected void initSecurityConstraint(XmlParser.Node node) {
        Constraint constraint = new Constraint();
        try {
            XmlParser.Node node2 = node.get("auth-constraint");
            if (node2 != null) {
                constraint.setAuthenticate(true);
                Iterator it = node2.iterator("role-name");
                Object objAdd = null;
                while (it.hasNext()) {
                    objAdd = LazyList.add(objAdd, ((XmlParser.Node) it.next()).toString(false, true));
                }
                constraint.setRoles(LazyList.toStringArray(objAdd));
            }
            XmlParser.Node node3 = node.get("user-data-constraint");
            if (node3 != null) {
                String upperCase = node3.get("transport-guarantee").toString(false, true).toUpperCase();
                if (upperCase == null || upperCase.length() == 0 || Constraint.NONE.equals(upperCase)) {
                    constraint.setDataConstraint(0);
                } else if ("INTEGRAL".equals(upperCase)) {
                    constraint.setDataConstraint(1);
                } else if ("CONFIDENTIAL".equals(upperCase)) {
                    constraint.setDataConstraint(2);
                } else {
                    Log.warn(new StringBuffer().append("Unknown user-data-constraint:").append(upperCase).toString());
                    constraint.setDataConstraint(2);
                }
            }
            Iterator it2 = node.iterator("web-resource-collection");
            while (it2.hasNext()) {
                XmlParser.Node node4 = (XmlParser.Node) it2.next();
                String string = node4.getString("web-resource-name", false, true);
                Constraint constraint2 = (Constraint) constraint.clone();
                constraint2.setName(string);
                Iterator it3 = node4.iterator("url-pattern");
                while (it3.hasNext()) {
                    String strNormalizePattern = normalizePattern(((XmlParser.Node) it3.next()).toString(false, true));
                    Iterator it4 = node4.iterator("http-method");
                    if (it4.hasNext()) {
                        while (it4.hasNext()) {
                            String string2 = ((XmlParser.Node) it4.next()).toString(false, true);
                            ConstraintMapping constraintMapping = new ConstraintMapping();
                            constraintMapping.setMethod(string2);
                            constraintMapping.setPathSpec(strNormalizePattern);
                            constraintMapping.setConstraint(constraint2);
                            this._constraintMappings = LazyList.add(this._constraintMappings, constraintMapping);
                        }
                    } else {
                        ConstraintMapping constraintMapping2 = new ConstraintMapping();
                        constraintMapping2.setPathSpec(strNormalizePattern);
                        constraintMapping2.setConstraint(constraint2);
                        this._constraintMappings = LazyList.add(this._constraintMappings, constraintMapping2);
                    }
                }
            }
        } catch (CloneNotSupportedException e2) {
            Log.warn(e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void initLoginConfig(XmlParser.Node node) {
        Authenticator clientCertAuthenticator;
        FormAuthenticator formAuthenticator = 0;
        authenticator = null;
        authenticator = null;
        authenticator = null;
        authenticator = null;
        Authenticator authenticator = null;
        XmlParser.Node node2 = node.get("auth-method");
        if (node2 != null) {
            String string = node2.toString(false, true);
            if ("FORM".equals(string)) {
                clientCertAuthenticator = new FormAuthenticator();
                authenticator = clientCertAuthenticator;
            } else if ("BASIC".equals(string)) {
                clientCertAuthenticator = new BasicAuthenticator();
            } else if ("DIGEST".equals(string)) {
                clientCertAuthenticator = new DigestAuthenticator();
            } else if ("CLIENT_CERT".equals(string) || Constraint.__CERT_AUTH2.equals(string)) {
                clientCertAuthenticator = new ClientCertAuthenticator();
            } else {
                Log.warn(new StringBuffer().append("UNKNOWN AUTH METHOD: ").append(string).toString());
                clientCertAuthenticator = null;
            }
            getWebAppContext().getSecurityHandler().setAuthenticator(clientCertAuthenticator);
            formAuthenticator = authenticator;
        }
        XmlParser.Node node3 = node.get("realm-name");
        UserRealm[] userRealms = ContextHandler.getCurrentContext().getContextHandler().getServer().getUserRealms();
        String string2 = node3 == null ? ServletHandler.__DEFAULT_SERVLET : node3.toString(false, true);
        UserRealm userRealm = getWebAppContext().getSecurityHandler().getUserRealm();
        for (int i = 0; userRealm == null && userRealms != null && i < userRealms.length; i++) {
            if (userRealms[i] != null && string2.equals(userRealms[i].getName())) {
                userRealm = userRealms[i];
            }
        }
        if (userRealm == null) {
            Log.warn(new StringBuffer().append("Unknown realm: ").append(string2).toString());
        } else {
            getWebAppContext().getSecurityHandler().setUserRealm(userRealm);
        }
        XmlParser.Node node4 = node.get("form-login-config");
        if (node4 != null) {
            if (formAuthenticator == 0) {
                Log.warn("FORM Authentication miss-configured");
                return;
            }
            XmlParser.Node node5 = node4.get("form-login-page");
            if (node5 != null) {
                formAuthenticator.setLoginPage(node5.toString(false, true));
            }
            XmlParser.Node node6 = node4.get("form-error-page");
            if (node6 != null) {
                formAuthenticator.setErrorPage(node6.toString(false, true));
            }
        }
    }

    protected void initSecurityRole(XmlParser.Node node) {
    }

    protected String getJSPServletName() {
        PathMap.Entry holderEntry;
        if (this._jspServletName == null && (holderEntry = this._context.getServletHandler().getHolderEntry("test.jsp")) != null) {
            this._jspServletName = ((ServletHolder) holderEntry.getValue()).getName();
        }
        return this._jspServletName;
    }
}
