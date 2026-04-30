package org.mortbay.resource;

import com.google.gdata.data.analytics.Engagement;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import org.mortbay.log.Log;
import org.mortbay.util.IO;
import org.mortbay.util.Loader;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Resource implements Serializable {
    public static boolean __defaultUseCaches = true;
    static Class class$org$mortbay$resource$Resource;
    Object _associate;

    public abstract Resource addPath(String str) throws IOException;

    public abstract boolean delete() throws SecurityException;

    public abstract boolean exists();

    public abstract File getFile() throws IOException;

    public abstract InputStream getInputStream() throws IOException;

    public abstract String getName();

    public abstract OutputStream getOutputStream() throws IOException, SecurityException;

    public abstract URL getURL();

    public abstract boolean isDirectory();

    public abstract long lastModified();

    public abstract long length();

    public abstract String[] list();

    public abstract void release();

    public abstract boolean renameTo(Resource resource) throws SecurityException;

    public static void setDefaultUseCaches(boolean z) {
        __defaultUseCaches = z;
    }

    public static boolean getDefaultUseCaches() {
        return __defaultUseCaches;
    }

    public static Resource newResource(URL url) throws IOException {
        return newResource(url, __defaultUseCaches);
    }

    public static Resource newResource(URL url, boolean z) {
        if (url == null) {
            return null;
        }
        String externalForm = url.toExternalForm();
        if (externalForm.startsWith("file:")) {
            try {
                return new FileResource(url);
            } catch (Exception e2) {
                Log.debug(Log.EXCEPTION, e2);
                return new BadResource(url, e2.toString());
            }
        }
        if (externalForm.startsWith("jar:file:")) {
            return new JarFileResource(url, z);
        }
        if (externalForm.startsWith("jar:")) {
            return new JarResource(url, z);
        }
        return new URLResource(url, null, z);
    }

    public static Resource newResource(String str) throws IOException {
        return newResource(str, __defaultUseCaches);
    }

    public static Resource newResource(String str, boolean z) throws IOException {
        try {
            URL url = new URL(str);
            String string = url.toString();
            if (string.length() > 0 && string.charAt(string.length() - 1) != str.charAt(str.length() - 1) && ((string.charAt(string.length() - 1) != '/' || string.charAt(string.length() - 2) != str.charAt(str.length() - 1)) && (str.charAt(str.length() - 1) != '/' || str.charAt(str.length() - 2) != string.charAt(string.length() - 1)))) {
                return new BadResource(url, new StringBuffer().append("Trailing special characters stripped by URL in ").append(str).toString());
            }
            return newResource(url);
        } catch (MalformedURLException e2) {
            if (!str.startsWith("ftp:") && !str.startsWith("file:") && !str.startsWith("jar:")) {
                try {
                    if (str.startsWith("./")) {
                        str = str.substring(2);
                    }
                    File canonicalFile = new File(str).getCanonicalFile();
                    URL url2 = new URL(URIUtil.encodePath(canonicalFile.toURL().toString()));
                    URLConnection uRLConnectionOpenConnection = url2.openConnection();
                    uRLConnectionOpenConnection.setUseCaches(z);
                    return new FileResource(url2, uRLConnectionOpenConnection, canonicalFile);
                } catch (Exception e3) {
                    Log.debug(Log.EXCEPTION, e3);
                    throw e2;
                }
            }
            Log.warn(new StringBuffer().append("Bad Resource: ").append(str).toString());
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0077 A[PHI: r0 r2
  0x0077: PHI (r0v2 java.lang.ClassLoader) = 
  (r0v1 java.lang.ClassLoader)
  (r0v14 java.lang.ClassLoader)
  (r0v14 java.lang.ClassLoader)
  (r0v14 java.lang.ClassLoader)
 binds: [B:9:0x0023, B:14:0x0036, B:16:0x003c, B:18:0x0045] A[DONT_GENERATE, DONT_INLINE]
  0x0077: PHI (r2v2 java.net.URL) = (r2v1 java.net.URL), (r2v1 java.net.URL), (r2v5 java.net.URL), (r2v5 java.net.URL) binds: [B:9:0x0023, B:14:0x0036, B:16:0x003c, B:18:0x0045] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.mortbay.resource.Resource newSystemResource(java.lang.String r6) throws java.lang.Throwable {
        /*
            r1 = 0
            r4 = 1
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r0 = r0.getContextClassLoader()
            if (r0 == 0) goto L7b
            java.net.URL r2 = r0.getResource(r6)
            if (r2 != 0) goto L23
            java.lang.String r3 = "/"
            boolean r3 = r6.startsWith(r3)
            if (r3 == 0) goto L23
            java.lang.String r2 = r6.substring(r4)
            java.net.URL r2 = r0.getResource(r2)
        L23:
            if (r2 != 0) goto L77
            java.lang.Class r0 = org.mortbay.resource.Resource.class$org$mortbay$resource$Resource
            if (r0 != 0) goto L6f
            java.lang.String r0 = "org.mortbay.resource.Resource"
            java.lang.Class r0 = class$(r0)
            org.mortbay.resource.Resource.class$org$mortbay$resource$Resource = r0
        L32:
            java.lang.ClassLoader r0 = r0.getClassLoader()
            if (r0 == 0) goto L77
            java.net.URL r2 = r0.getResource(r6)
            if (r2 != 0) goto L77
            java.lang.String r3 = "/"
            boolean r3 = r6.startsWith(r3)
            if (r3 == 0) goto L77
            java.lang.String r2 = r6.substring(r4)
            java.net.URL r2 = r0.getResource(r2)
            r5 = r0
            r0 = r2
            r2 = r5
        L52:
            if (r0 != 0) goto L6b
            java.net.URL r0 = java.lang.ClassLoader.getSystemResource(r6)
            if (r0 != 0) goto L6b
            java.lang.String r3 = "/"
            boolean r3 = r6.startsWith(r3)
            if (r3 == 0) goto L6b
            java.lang.String r0 = r6.substring(r4)
            java.net.URL r0 = r2.getResource(r0)
        L6b:
            if (r0 != 0) goto L72
            r0 = r1
        L6e:
            return r0
        L6f:
            java.lang.Class r0 = org.mortbay.resource.Resource.class$org$mortbay$resource$Resource
            goto L32
        L72:
            org.mortbay.resource.Resource r0 = newResource(r0)
            goto L6e
        L77:
            r5 = r0
            r0 = r2
            r2 = r5
            goto L52
        L7b:
            r2 = r1
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.resource.Resource.newSystemResource(java.lang.String):org.mortbay.resource.Resource");
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static Resource newClassPathResource(String str) {
        return newClassPathResource(str, true, false);
    }

    public static Resource newClassPathResource(String str, boolean z, boolean z2) throws Throwable {
        Class clsClass$;
        Class clsClass$2;
        if (class$org$mortbay$resource$Resource == null) {
            clsClass$ = class$("org.mortbay.resource.Resource");
            class$org$mortbay$resource$Resource = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$resource$Resource;
        }
        URL resource = clsClass$.getResource(str);
        if (resource == null) {
            try {
                if (class$org$mortbay$resource$Resource == null) {
                    clsClass$2 = class$("org.mortbay.resource.Resource");
                    class$org$mortbay$resource$Resource = clsClass$2;
                } else {
                    clsClass$2 = class$org$mortbay$resource$Resource;
                }
                resource = Loader.getResource(clsClass$2, str, z2);
            } catch (ClassNotFoundException e2) {
                resource = ClassLoader.getSystemResource(str);
            }
        }
        if (resource == null) {
            return null;
        }
        return newResource(resource, z);
    }

    protected void finalize() {
        release();
    }

    public String encode(String str) {
        return URIUtil.encodePath(str);
    }

    public Object getAssociate() {
        return this._associate;
    }

    public void setAssociate(Object obj) {
        this._associate = obj;
    }

    public URL getAlias() {
        return null;
    }

    public String getListHTML(String str, boolean z) throws IOException {
        String[] list;
        String strCanonicalPath = URIUtil.canonicalPath(str);
        if (strCanonicalPath == null || !isDirectory() || (list = list()) == null) {
            return null;
        }
        Arrays.sort(list);
        String string = new StringBuffer().append("Directory: ").append(deTag(URIUtil.decodePath(strCanonicalPath))).toString();
        StringBuffer stringBuffer = new StringBuffer(4096);
        stringBuffer.append("<HTML><HEAD><TITLE>");
        stringBuffer.append(string);
        stringBuffer.append("</TITLE></HEAD><BODY>\n<H1>");
        stringBuffer.append(string);
        stringBuffer.append("</H1>\n<TABLE BORDER=0>\n");
        if (z) {
            stringBuffer.append("<TR><TD><A HREF=\"");
            stringBuffer.append(URIUtil.addPaths(strCanonicalPath, "../"));
            stringBuffer.append("\">Parent Directory</A></TD><TD></TD><TD></TD></TR>\n");
        }
        String strDefangURI = defangURI(strCanonicalPath);
        DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(2, 2);
        for (int i = 0; i < list.length; i++) {
            Resource resourceAddPath = addPath(list[i]);
            stringBuffer.append("\n<TR><TD><A HREF=\"");
            String strAddPaths = URIUtil.addPaths(strDefangURI, URIUtil.encodePath(list[i]));
            stringBuffer.append(strAddPaths);
            if (resourceAddPath.isDirectory() && !strAddPaths.endsWith(URIUtil.SLASH)) {
                stringBuffer.append(URIUtil.SLASH);
            }
            stringBuffer.append("\">");
            stringBuffer.append(deTag(list[i]));
            stringBuffer.append("&nbsp;");
            stringBuffer.append("</TD><TD ALIGN=right>");
            stringBuffer.append(resourceAddPath.length());
            stringBuffer.append(" bytes&nbsp;</TD><TD>");
            stringBuffer.append(dateTimeInstance.format(new Date(resourceAddPath.lastModified())));
            stringBuffer.append("</TD></TR>");
        }
        stringBuffer.append("</TABLE>\n");
        stringBuffer.append("</BODY></HTML>\n");
        return stringBuffer.toString();
    }

    private static String defangURI(String str) {
        StringBuffer stringBuffer = null;
        if (0 == 0) {
            for (int i = 0; i < str.length(); i++) {
                switch (str.charAt(i)) {
                    case '\"':
                    case '\'':
                    case '<':
                    case '>':
                        stringBuffer = new StringBuffer(str.length() << 1);
                        break;
                }
            }
            if (stringBuffer == null) {
                return str;
            }
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            switch (cCharAt) {
                case '\"':
                    stringBuffer.append("%22");
                    break;
                case '\'':
                    stringBuffer.append("%27");
                    break;
                case '<':
                    stringBuffer.append("%3C");
                    break;
                case '>':
                    stringBuffer.append("%3E");
                    break;
                default:
                    stringBuffer.append(cCharAt);
                    break;
            }
        }
        return stringBuffer.toString();
    }

    private static String deTag(String str) {
        return StringUtil.replace(StringUtil.replace(str, Engagement.Comparison.LT, "&lt;"), Engagement.Comparison.GT, "&gt;");
    }

    public void writeTo(OutputStream outputStream, long j, long j2) throws IOException {
        InputStream inputStream = getInputStream();
        try {
            inputStream.skip(j);
            if (j2 < 0) {
                IO.copy(inputStream, outputStream);
            } else {
                IO.copy(inputStream, outputStream, j2);
            }
        } finally {
            inputStream.close();
        }
    }
}
