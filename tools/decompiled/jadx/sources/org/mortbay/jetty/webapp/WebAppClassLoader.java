package org.mortbay.jetty.webapp;

import com.behance.sdk.util.BehanceSDKConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.CodeSource;
import java.security.PermissionCollection;
import java.util.HashSet;
import java.util.StringTokenizer;
import org.apache.commons.io.IOUtils;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.IO;
import org.mortbay.util.LazyList;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class WebAppClassLoader extends URLClassLoader {
    static Class class$org$mortbay$jetty$webapp$WebAppClassLoader;
    private WebAppContext _context;
    private HashSet _extensions;
    private String _name;
    private ClassLoader _parent;

    public WebAppClassLoader(WebAppContext webAppContext) throws IOException {
        this(null, webAppContext);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public WebAppClassLoader(ClassLoader classLoader, WebAppContext webAppContext) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        Class clsClass$3;
        URL[] urlArr = new URL[0];
        if (classLoader == null) {
            if (Thread.currentThread().getContextClassLoader() != null) {
                classLoader = Thread.currentThread().getContextClassLoader();
            } else {
                if (class$org$mortbay$jetty$webapp$WebAppClassLoader == null) {
                    clsClass$ = class$("org.mortbay.jetty.webapp.WebAppClassLoader");
                    class$org$mortbay$jetty$webapp$WebAppClassLoader = clsClass$;
                } else {
                    clsClass$ = class$org$mortbay$jetty$webapp$WebAppClassLoader;
                }
                if (clsClass$.getClassLoader() != null) {
                    if (class$org$mortbay$jetty$webapp$WebAppClassLoader == null) {
                        clsClass$2 = class$("org.mortbay.jetty.webapp.WebAppClassLoader");
                        class$org$mortbay$jetty$webapp$WebAppClassLoader = clsClass$2;
                    } else {
                        clsClass$2 = class$org$mortbay$jetty$webapp$WebAppClassLoader;
                    }
                    classLoader = clsClass$2.getClassLoader();
                } else {
                    classLoader = ClassLoader.getSystemClassLoader();
                }
            }
        }
        super(urlArr, classLoader);
        this._parent = getParent();
        this._context = webAppContext;
        if (this._parent == null) {
            throw new IllegalArgumentException("no parent classloader!");
        }
        this._extensions = new HashSet();
        this._extensions.add(".jar");
        this._extensions.add(".zip");
        StringBuffer stringBuffer = new StringBuffer();
        if (class$org$mortbay$jetty$webapp$WebAppClassLoader == null) {
            clsClass$3 = class$("org.mortbay.jetty.webapp.WebAppClassLoader");
            class$org$mortbay$jetty$webapp$WebAppClassLoader = clsClass$3;
        } else {
            clsClass$3 = class$org$mortbay$jetty$webapp$WebAppClassLoader;
        }
        String property = System.getProperty(stringBuffer.append(clsClass$3.getName()).append(".extensions").toString());
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, ",;");
            while (stringTokenizer.hasMoreTokens()) {
                this._extensions.add(stringTokenizer.nextToken().trim());
            }
        }
        if (webAppContext.getExtraClasspath() != null) {
            addClassPath(webAppContext.getExtraClasspath());
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public String getName() {
        return this._name;
    }

    public void setName(String str) {
        this._name = str;
    }

    public ContextHandler getContext() {
        return this._context;
    }

    public void addClassPath(String str) throws Throwable {
        FileOutputStream fileOutputStream;
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",;");
            while (stringTokenizer.hasMoreTokens()) {
                Resource resourceNewResource = Resource.newResource(stringTokenizer.nextToken());
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("Path resource=").append(resourceNewResource).toString());
                }
                File file = resourceNewResource.getFile();
                if (file != null) {
                    addURL(resourceNewResource.getURL());
                } else if (!resourceNewResource.isDirectory() && file == null) {
                    InputStream inputStream = resourceNewResource.getInputStream();
                    File tempDirectory = this._context.getTempDirectory();
                    if (tempDirectory == null) {
                        tempDirectory = File.createTempFile("jetty.cl.lib", null);
                        tempDirectory.mkdir();
                        tempDirectory.deleteOnExit();
                    }
                    File file2 = new File(tempDirectory, "lib");
                    if (!file2.exists()) {
                        file2.mkdir();
                        file2.deleteOnExit();
                    }
                    File fileCreateTempFile = File.createTempFile("Jetty-", ".jar", file2);
                    fileCreateTempFile.deleteOnExit();
                    if (Log.isDebugEnabled()) {
                        Log.debug(new StringBuffer().append("Extract ").append(resourceNewResource).append(" to ").append(fileCreateTempFile).toString());
                    }
                    try {
                        fileOutputStream = new FileOutputStream(fileCreateTempFile);
                        try {
                            IO.copy(inputStream, fileOutputStream);
                            IO.close(fileOutputStream);
                            addURL(fileCreateTempFile.toURL());
                        } catch (Throwable th) {
                            th = th;
                            IO.close(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = null;
                    }
                } else {
                    addURL(resourceNewResource.getURL());
                }
            }
        }
    }

    private boolean isFileSupported(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf != -1 && this._extensions.contains(str.substring(iLastIndexOf));
    }

    public void addJars(Resource resource) throws Throwable {
        if (resource.exists() && resource.isDirectory()) {
            String[] list = resource.list();
            for (int i = 0; list != null && i < list.length; i++) {
                try {
                    Resource resourceAddPath = resource.addPath(list[i]);
                    if (isFileSupported(resourceAddPath.getName().toLowerCase())) {
                        addClassPath(StringUtil.replace(StringUtil.replace(resourceAddPath.toString(), BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, "%2C"), ";", "%3B"));
                    }
                } catch (Exception e2) {
                    Log.warn(Log.EXCEPTION, (Throwable) e2);
                }
            }
        }
    }

    public void destroy() {
        this._parent = null;
    }

    @Override // java.net.URLClassLoader, java.security.SecureClassLoader
    public PermissionCollection getPermissions(CodeSource codeSource) {
        PermissionCollection permissions = this._context.getPermissions();
        return permissions == null ? super.getPermissions(codeSource) : permissions;
    }

    @Override // java.lang.ClassLoader
    public URL getResource(String str) {
        URL resource;
        boolean z;
        if (!this._context.isParentLoaderPriority() && !isSystemPath(str)) {
            resource = null;
            z = false;
        } else if (this._parent == null) {
            resource = null;
            z = true;
        } else {
            resource = this._parent.getResource(str);
            z = true;
        }
        if (resource == null && (resource = findResource(str)) == null && str.startsWith(URIUtil.SLASH)) {
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("HACK leading / off ").append(str).toString());
            }
            resource = findResource(str.substring(1));
        }
        if (resource == null && !z && this._parent != null) {
            resource = this._parent.getResource(str);
        }
        if (resource != null && Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("getResource(").append(str).append(")=").append(resource).toString());
        }
        return resource;
    }

    public boolean isServerPath(String str) {
        boolean z;
        String strReplace = str.replace(IOUtils.DIR_SEPARATOR_UNIX, '.');
        while (strReplace.startsWith(".")) {
            strReplace = strReplace.substring(1);
        }
        String[] serverClasses = this._context.getServerClasses();
        if (serverClasses != null) {
            for (int i = 0; i < serverClasses.length; i++) {
                String strSubstring = serverClasses[i];
                if (strSubstring.startsWith("-")) {
                    strSubstring = strSubstring.substring(1);
                    z = false;
                } else {
                    z = true;
                }
                if (strSubstring.endsWith(".")) {
                    if (strReplace.startsWith(strSubstring)) {
                        return z;
                    }
                } else if (strReplace.equals(strSubstring)) {
                    return z;
                }
            }
        }
        return false;
    }

    public boolean isSystemPath(String str) {
        boolean z;
        String strReplace = str.replace(IOUtils.DIR_SEPARATOR_UNIX, '.');
        while (strReplace.startsWith(".")) {
            strReplace = strReplace.substring(1);
        }
        String[] systemClasses = this._context.getSystemClasses();
        if (systemClasses != null) {
            for (int i = 0; i < systemClasses.length; i++) {
                String strSubstring = systemClasses[i];
                if (strSubstring.startsWith("-")) {
                    strSubstring = strSubstring.substring(1);
                    z = false;
                } else {
                    z = true;
                }
                if (strSubstring.endsWith(".")) {
                    if (strReplace.startsWith(strSubstring)) {
                        return z;
                    }
                } else if (strReplace.equals(strSubstring)) {
                    return z;
                }
            }
        }
        return false;
    }

    @Override // java.lang.ClassLoader
    public Class loadClass(String str) throws ClassNotFoundException {
        return loadClass(str, false);
    }

    @Override // java.lang.ClassLoader
    protected synchronized Class loadClass(String str, boolean z) throws ClassNotFoundException {
        boolean z2;
        ClassNotFoundException e2;
        Class<?> clsFindClass;
        ClassNotFoundException classNotFoundException;
        Class<?> clsFindLoadedClass = findLoadedClass(str);
        if (clsFindLoadedClass != null || this._parent == null || (!this._context.isParentLoaderPriority() && !isSystemPath(str))) {
            z2 = false;
            e2 = null;
        } else {
            z2 = true;
            try {
                clsFindLoadedClass = this._parent.loadClass(str);
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("loaded ").append(clsFindLoadedClass).toString());
                }
                e2 = null;
            } catch (ClassNotFoundException e3) {
                e2 = e3;
            }
        }
        if (clsFindLoadedClass == null) {
            try {
                ClassNotFoundException classNotFoundException2 = e2;
                clsFindClass = findClass(str);
                classNotFoundException = classNotFoundException2;
            } catch (ClassNotFoundException e4) {
                clsFindClass = clsFindLoadedClass;
                classNotFoundException = e4;
            }
        } else {
            ClassNotFoundException classNotFoundException3 = e2;
            clsFindClass = clsFindLoadedClass;
            classNotFoundException = classNotFoundException3;
        }
        if (clsFindClass == null && this._parent != null && !z2 && !isServerPath(str)) {
            clsFindClass = this._parent.loadClass(str);
        }
        if (clsFindClass == null) {
            throw classNotFoundException;
        }
        if (z) {
            resolveClass(clsFindClass);
        }
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("loaded ").append(clsFindClass).append(" from ").append(clsFindClass.getClassLoader()).toString());
        }
        return clsFindClass;
    }

    public String toString() {
        return Log.isDebugEnabled() ? new StringBuffer().append("ContextLoader@").append(this._name).append("(").append(LazyList.array2List(getURLs())).append(") / ").append(this._parent).toString() : new StringBuffer().append("ContextLoader@").append(this._name).toString();
    }
}
