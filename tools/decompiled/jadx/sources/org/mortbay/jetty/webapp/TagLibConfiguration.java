package org.mortbay.jetty.webapp;

import java.io.File;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashSet;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.regex.Pattern;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.Loader;
import org.mortbay.util.URIUtil;
import org.mortbay.xml.XmlParser;

/* JADX INFO: loaded from: classes3.dex */
public class TagLibConfiguration implements Configuration {
    static Class class$org$mortbay$jetty$webapp$TagLibConfiguration;
    WebAppContext _context;

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
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureWebApp() throws Exception {
        Class clsClass$;
        Class clsClass$2;
        Class clsClass$3;
        Class clsClass$4;
        Class clsClass$5;
        Class clsClass$6;
        XmlParser.Node node;
        URL[] uRLs;
        JarFile jarFile;
        HashSet<Resource> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        if (this._context.getResourceAliases() != null && this._context.getBaseResource() != null && this._context.getBaseResource().exists()) {
            for (String string : this._context.getResourceAliases().values()) {
                if (string != null && string.toLowerCase().endsWith(".tld")) {
                    if (!string.startsWith(URIUtil.SLASH)) {
                        string = new StringBuffer().append("/WEB-INF/").append(string).toString();
                    }
                    hashSet.add(this._context.getBaseResource().addPath(string));
                }
            }
        }
        Resource webInf = this._context.getWebInf();
        if (webInf != null) {
            String[] list = webInf.list();
            for (int i = 0; list != null && i < list.length; i++) {
                if (list[i] != null && list[i].toLowerCase().endsWith(".tld")) {
                    hashSet.add(this._context.getWebInf().addPath(list[i]));
                }
            }
        }
        String initParameter = this._context.getInitParameter("org.mortbay.jetty.webapp.NoTLDJarPattern");
        Pattern patternCompile = initParameter == null ? null : Pattern.compile(initParameter);
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        boolean z = false;
        while (contextClassLoader != null) {
            if ((contextClassLoader instanceof URLClassLoader) && (uRLs = ((URLClassLoader) contextClassLoader).getURLs()) != null) {
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < uRLs.length) {
                        if (uRLs[i3].toString().toLowerCase().endsWith(".jar")) {
                            String string2 = uRLs[i3].toString();
                            String strSubstring = string2.substring(string2.lastIndexOf(47) + 1);
                            if (!z || ((this._context.isParentLoaderPriority() || !hashSet2.contains(strSubstring)) && (patternCompile == null || !patternCompile.matcher(strSubstring).matches()))) {
                                hashSet2.add(strSubstring);
                                Log.debug("TLD search of {}", uRLs[i3]);
                                File file = Resource.newResource(uRLs[i3]).getFile();
                                if (file != null && file.exists() && file.canRead()) {
                                    try {
                                        jarFile = new JarFile(file);
                                        try {
                                            try {
                                                Enumeration<JarEntry> enumerationEntries = jarFile.entries();
                                                while (enumerationEntries.hasMoreElements()) {
                                                    String name = enumerationEntries.nextElement().getName();
                                                    if (name.startsWith("META-INF/") && name.toLowerCase().endsWith(".tld")) {
                                                        Resource resourceNewResource = Resource.newResource(new StringBuffer().append("jar:").append(uRLs[i3]).append("!/").append(name).toString());
                                                        hashSet.add(resourceNewResource);
                                                        Log.debug("TLD found {}", resourceNewResource);
                                                    }
                                                }
                                                if (jarFile != null) {
                                                    jarFile.close();
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                if (jarFile != null) {
                                                    jarFile.close();
                                                }
                                                throw th;
                                            }
                                        } catch (Exception e2) {
                                            e = e2;
                                            Log.warn(new StringBuffer().append("Failed to read file: ").append(file).toString(), (Throwable) e);
                                            if (jarFile != null) {
                                                jarFile.close();
                                            }
                                        }
                                    } catch (Exception e3) {
                                        e = e3;
                                        jarFile = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        jarFile = null;
                                    }
                                }
                            }
                        }
                        i2 = i3 + 1;
                    }
                }
            }
            contextClassLoader = contextClassLoader.getParent();
            z = true;
        }
        XmlParser xmlParser = new XmlParser(false);
        if (class$org$mortbay$jetty$webapp$TagLibConfiguration == null) {
            clsClass$ = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        }
        xmlParser.redirectEntity("web-jsptaglib_1_1.dtd", Loader.getResource(clsClass$, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd", false));
        if (class$org$mortbay$jetty$webapp$TagLibConfiguration == null) {
            clsClass$2 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = clsClass$2;
        } else {
            clsClass$2 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        }
        xmlParser.redirectEntity("web-jsptaglib_1_2.dtd", Loader.getResource(clsClass$2, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd", false));
        if (class$org$mortbay$jetty$webapp$TagLibConfiguration == null) {
            clsClass$3 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = clsClass$3;
        } else {
            clsClass$3 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        }
        xmlParser.redirectEntity("web-jsptaglib_2_0.xsd", Loader.getResource(clsClass$3, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd", false));
        if (class$org$mortbay$jetty$webapp$TagLibConfiguration == null) {
            clsClass$4 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = clsClass$4;
        } else {
            clsClass$4 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        }
        xmlParser.redirectEntity("web-jsptaglibrary_1_1.dtd", Loader.getResource(clsClass$4, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd", false));
        if (class$org$mortbay$jetty$webapp$TagLibConfiguration == null) {
            clsClass$5 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = clsClass$5;
        } else {
            clsClass$5 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        }
        xmlParser.redirectEntity("web-jsptaglibrary_1_2.dtd", Loader.getResource(clsClass$5, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd", false));
        if (class$org$mortbay$jetty$webapp$TagLibConfiguration == null) {
            clsClass$6 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = clsClass$6;
        } else {
            clsClass$6 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        }
        xmlParser.redirectEntity("web-jsptaglibrary_2_0.xsd", Loader.getResource(clsClass$6, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd", false));
        xmlParser.setXpath("/taglib/listener/listener-class");
        for (Resource resource : hashSet) {
            try {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("TLD=").append(resource).toString());
                }
                try {
                    node = xmlParser.parse(resource.getInputStream());
                } catch (Exception e4) {
                    node = xmlParser.parse(resource.getURL().toString());
                }
                if (node == null) {
                    Log.warn("No TLD root in {}", resource);
                } else {
                    int i4 = 0;
                    while (true) {
                        int i5 = i4;
                        if (i5 < node.size()) {
                            Object obj = node.get(i5);
                            if (obj instanceof XmlParser.Node) {
                                XmlParser.Node node2 = (XmlParser.Node) obj;
                                if ("listener".equals(node2.getTag())) {
                                    String string3 = node2.getString("listener-class", false, true);
                                    if (Log.isDebugEnabled()) {
                                        Log.debug(new StringBuffer().append("listener=").append(string3).toString());
                                    }
                                    try {
                                        try {
                                            this._context.addEventListener((EventListener) getWebAppContext().loadClass(string3).newInstance());
                                        } catch (Error e5) {
                                            Log.warn(new StringBuffer().append("Could not instantiate listener ").append(string3).append(": ").append(e5).toString());
                                            Log.debug(e5);
                                        }
                                    } catch (Exception e6) {
                                        Log.warn(new StringBuffer().append("Could not instantiate listener ").append(string3).append(": ").append(e6).toString());
                                        Log.debug(e6);
                                    }
                                }
                            }
                            i4 = i5 + 1;
                        }
                    }
                }
            } catch (Exception e7) {
                Log.warn(e7);
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

    @Override // org.mortbay.jetty.webapp.Configuration
    public void deconfigureWebApp() throws Exception {
    }
}
