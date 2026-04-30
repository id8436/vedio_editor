package org.mortbay.resource;

import java.io.File;
import java.io.IOException;
import java.net.JarURLConnection;
import java.net.URL;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import org.apache.commons.io.IOUtils;
import org.mortbay.log.Log;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
class JarFileResource extends JarResource {
    transient boolean _directory;
    transient JarEntry _entry;
    transient boolean _exists;
    transient File _file;
    transient JarFile _jarFile;
    transient String _jarUrl;
    transient String[] _list;
    transient String _path;

    JarFileResource(URL url) {
        super(url);
    }

    JarFileResource(URL url, boolean z) {
        super(url, z);
    }

    @Override // org.mortbay.resource.JarResource, org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public synchronized void release() {
        this._list = null;
        this._entry = null;
        this._file = null;
        this._jarFile = null;
        super.release();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.mortbay.resource.JarResource, org.mortbay.resource.URLResource
    protected boolean checkConnection() {
        try {
            super.checkConnection();
            return this._jarFile != null;
        } finally {
            if (this._jarConnection == null) {
                this._entry = null;
                this._file = null;
                this._jarFile = null;
                this._list = null;
            }
        }
    }

    @Override // org.mortbay.resource.JarResource
    protected void newConnection() throws IOException {
        super.newConnection();
        this._entry = null;
        this._file = null;
        this._jarFile = null;
        this._list = null;
        int iIndexOf = this._urlString.indexOf("!/");
        this._jarUrl = this._urlString.substring(0, iIndexOf + 2);
        this._path = this._urlString.substring(iIndexOf + 2);
        if (this._path.length() == 0) {
            this._path = null;
        }
        this._jarFile = this._jarConnection.getJarFile();
        this._file = new File(this._jarFile.getName());
    }

    @Override // org.mortbay.resource.JarResource, org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public boolean exists() {
        JarFile jarFile;
        if (this._exists) {
            return true;
        }
        if (this._urlString.endsWith("!/")) {
            try {
                return newResource(this._urlString.substring(4, this._urlString.length() - 2)).exists();
            } catch (Exception e2) {
                Log.ignore(e2);
                return false;
            }
        }
        boolean zCheckConnection = checkConnection();
        if (this._jarUrl != null && this._path == null) {
            this._directory = zCheckConnection;
            return true;
        }
        if (zCheckConnection) {
            jarFile = this._jarFile;
        } else {
            try {
                JarURLConnection jarURLConnection = (JarURLConnection) new URL(this._jarUrl).openConnection();
                jarURLConnection.setUseCaches(getUseCaches());
                jarFile = jarURLConnection.getJarFile();
            } catch (Exception e3) {
                Log.ignore(e3);
                jarFile = null;
            }
        }
        if (jarFile != null && this._entry == null && !this._directory) {
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (true) {
                if (!enumerationEntries.hasMoreElements()) {
                    break;
                }
                JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                String strReplace = jarEntryNextElement.getName().replace(IOUtils.DIR_SEPARATOR_WINDOWS, IOUtils.DIR_SEPARATOR_UNIX);
                if (strReplace.equals(this._path)) {
                    this._entry = jarEntryNextElement;
                    this._directory = this._path.endsWith(URIUtil.SLASH);
                    break;
                }
                if (this._path.endsWith(URIUtil.SLASH)) {
                    if (strReplace.startsWith(this._path)) {
                        this._directory = true;
                        break;
                    }
                } else if (strReplace.startsWith(this._path) && strReplace.length() > this._path.length() && strReplace.charAt(this._path.length()) == '/') {
                    this._directory = true;
                    break;
                }
            }
        }
        this._exists = this._directory || this._entry != null;
        return this._exists;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public boolean isDirectory() {
        return this._urlString.endsWith(URIUtil.SLASH) || (exists() && this._directory);
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public long lastModified() {
        if (!checkConnection() || this._file == null) {
            return -1L;
        }
        return this._file.lastModified();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004e A[Catch: all -> 0x009f, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x000b, B:9:0x0019, B:10:0x0033, B:11:0x0048, B:13:0x004e, B:15:0x0066, B:17:0x0070, B:20:0x0082, B:23:0x008b, B:24:0x0095, B:34:0x00a8, B:26:0x009b, B:35:0x00b0, B:32:0x00a3, B:36:0x00bd), top: B:41:0x0001, inners: #0 }] */
    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.lang.String[] list() {
        /*
            r7 = this;
            monitor-enter(r7)
            boolean r0 = r7.isDirectory()     // Catch: java.lang.Throwable -> L9f
            if (r0 == 0) goto Lbd
            java.lang.String[] r0 = r7._list     // Catch: java.lang.Throwable -> L9f
            if (r0 != 0) goto Lbd
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9f
            r0 = 32
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L9f
            r7.checkConnection()     // Catch: java.lang.Throwable -> L9f
            java.util.jar.JarFile r1 = r7._jarFile     // Catch: java.lang.Throwable -> L9f
            if (r1 != 0) goto La6
            java.net.URL r0 = new java.net.URL     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
            java.lang.String r3 = r7._jarUrl     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
            java.net.JarURLConnection r0 = (java.net.JarURLConnection) r0     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
            java.net.JarURLConnection r0 = (java.net.JarURLConnection) r0     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
            boolean r3 = r7.getUseCaches()     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
            r0.setUseCaches(r3)     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
            java.util.jar.JarFile r0 = r0.getJarFile()     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La2
        L33:
            java.util.Enumeration r1 = r0.entries()     // Catch: java.lang.Throwable -> L9f
            java.lang.String r0 = r7._urlString     // Catch: java.lang.Throwable -> L9f
            java.lang.String r3 = r7._urlString     // Catch: java.lang.Throwable -> L9f
            java.lang.String r4 = "!/"
            int r3 = r3.indexOf(r4)     // Catch: java.lang.Throwable -> L9f
            int r3 = r3 + 2
            java.lang.String r3 = r0.substring(r3)     // Catch: java.lang.Throwable -> L9f
        L48:
            boolean r0 = r1.hasMoreElements()     // Catch: java.lang.Throwable -> L9f
            if (r0 == 0) goto Lb0
            java.lang.Object r0 = r1.nextElement()     // Catch: java.lang.Throwable -> L9f
            java.util.jar.JarEntry r0 = (java.util.jar.JarEntry) r0     // Catch: java.lang.Throwable -> L9f
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Throwable -> L9f
            r4 = 92
            r5 = 47
            java.lang.String r0 = r0.replace(r4, r5)     // Catch: java.lang.Throwable -> L9f
            boolean r4 = r0.startsWith(r3)     // Catch: java.lang.Throwable -> L9f
            if (r4 == 0) goto L48
            int r4 = r0.length()     // Catch: java.lang.Throwable -> L9f
            int r5 = r3.length()     // Catch: java.lang.Throwable -> L9f
            if (r4 == r5) goto L48
            int r4 = r3.length()     // Catch: java.lang.Throwable -> L9f
            java.lang.String r0 = r0.substring(r4)     // Catch: java.lang.Throwable -> L9f
            r4 = 47
            int r4 = r0.indexOf(r4)     // Catch: java.lang.Throwable -> L9f
            if (r4 < 0) goto L9b
            if (r4 != 0) goto L89
            int r5 = r0.length()     // Catch: java.lang.Throwable -> L9f
            r6 = 1
            if (r5 == r6) goto L48
        L89:
            if (r4 != 0) goto La8
            int r4 = r4 + 1
            int r5 = r0.length()     // Catch: java.lang.Throwable -> L9f
            java.lang.String r0 = r0.substring(r4, r5)     // Catch: java.lang.Throwable -> L9f
        L95:
            boolean r4 = r2.contains(r0)     // Catch: java.lang.Throwable -> L9f
            if (r4 != 0) goto L48
        L9b:
            r2.add(r0)     // Catch: java.lang.Throwable -> L9f
            goto L48
        L9f:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        La2:
            r0 = move-exception
            org.mortbay.log.Log.ignore(r0)     // Catch: java.lang.Throwable -> L9f
        La6:
            r0 = r1
            goto L33
        La8:
            r5 = 0
            int r4 = r4 + 1
            java.lang.String r0 = r0.substring(r5, r4)     // Catch: java.lang.Throwable -> L9f
            goto L95
        Lb0:
            int r0 = r2.size()     // Catch: java.lang.Throwable -> L9f
            java.lang.String[] r0 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L9f
            r7._list = r0     // Catch: java.lang.Throwable -> L9f
            java.lang.String[] r0 = r7._list     // Catch: java.lang.Throwable -> L9f
            r2.toArray(r0)     // Catch: java.lang.Throwable -> L9f
        Lbd:
            java.lang.String[] r0 = r7._list     // Catch: java.lang.Throwable -> L9f
            monitor-exit(r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.resource.JarFileResource.list():java.lang.String[]");
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public long length() {
        if (isDirectory() || this._entry == null) {
            return -1L;
        }
        return this._entry.getSize();
    }

    @Override // org.mortbay.resource.Resource
    public String encode(String str) {
        return str;
    }

    public static Resource getNonCachingResource(Resource resource) {
        if (resource instanceof JarFileResource) {
            return new JarFileResource(((JarFileResource) resource).getURL(), false);
        }
        return resource;
    }
}
