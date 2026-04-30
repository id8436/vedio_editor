package org.mortbay.resource;

import java.io.File;
import java.io.FilePermission;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;
import org.mortbay.log.Log;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class URLResource extends Resource {
    protected transient URLConnection _connection;
    protected transient InputStream _in;
    protected URL _url;
    protected String _urlString;
    transient boolean _useCaches;

    protected URLResource(URL url, URLConnection uRLConnection) {
        this._in = null;
        this._useCaches = Resource.__defaultUseCaches;
        this._url = url;
        this._urlString = this._url.toString();
        this._connection = uRLConnection;
    }

    protected URLResource(URL url, URLConnection uRLConnection, boolean z) {
        this(url, uRLConnection);
        this._useCaches = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected synchronized boolean checkConnection() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.net.URLConnection r0 = r2._connection     // Catch: java.lang.Throwable -> L20
            if (r0 != 0) goto L14
            java.net.URL r0 = r2._url     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L20
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L20
            r2._connection = r0     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L20
            java.net.URLConnection r0 = r2._connection     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L20
            boolean r1 = r2._useCaches     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L20
            r0.setUseCaches(r1)     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L20
        L14:
            java.net.URLConnection r0 = r2._connection     // Catch: java.lang.Throwable -> L20
            if (r0 == 0) goto L23
            r0 = 1
        L19:
            monitor-exit(r2)
            return r0
        L1b:
            r0 = move-exception
            org.mortbay.log.Log.ignore(r0)     // Catch: java.lang.Throwable -> L20
            goto L14
        L20:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L23:
            r0 = 0
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.resource.URLResource.checkConnection():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0011 A[Catch: all -> 0x001b, TRY_LEAVE, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0005, B:7:0x000b, B:8:0x000d, B:10:0x0011, B:14:0x0017), top: B:21:0x0001, inners: #0 }] */
    @Override // org.mortbay.resource.Resource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void release() {
        /*
            r1 = this;
            monitor-enter(r1)
            java.io.InputStream r0 = r1._in     // Catch: java.lang.Throwable -> L1b
            if (r0 == 0) goto Ld
            java.io.InputStream r0 = r1._in     // Catch: java.io.IOException -> L16 java.lang.Throwable -> L1b
            r0.close()     // Catch: java.io.IOException -> L16 java.lang.Throwable -> L1b
        La:
            r0 = 0
            r1._in = r0     // Catch: java.lang.Throwable -> L1b
        Ld:
            java.net.URLConnection r0 = r1._connection     // Catch: java.lang.Throwable -> L1b
            if (r0 == 0) goto L14
            r0 = 0
            r1._connection = r0     // Catch: java.lang.Throwable -> L1b
        L14:
            monitor-exit(r1)
            return
        L16:
            r0 = move-exception
            org.mortbay.log.Log.ignore(r0)     // Catch: java.lang.Throwable -> L1b
            goto La
        L1b:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.resource.URLResource.release():void");
    }

    @Override // org.mortbay.resource.Resource
    public boolean exists() {
        try {
            synchronized (this) {
                if (checkConnection() && this._in == null) {
                    this._in = this._connection.getInputStream();
                }
            }
        } catch (IOException e2) {
            Log.ignore(e2);
        }
        return this._in != null;
    }

    @Override // org.mortbay.resource.Resource
    public boolean isDirectory() {
        return exists() && this._url.toString().endsWith(URIUtil.SLASH);
    }

    @Override // org.mortbay.resource.Resource
    public long lastModified() {
        if (checkConnection()) {
            return this._connection.getLastModified();
        }
        return -1L;
    }

    @Override // org.mortbay.resource.Resource
    public long length() {
        if (checkConnection()) {
            return this._connection.getContentLength();
        }
        return -1L;
    }

    @Override // org.mortbay.resource.Resource
    public URL getURL() {
        return this._url;
    }

    @Override // org.mortbay.resource.Resource
    public File getFile() throws IOException {
        if (checkConnection()) {
            Permission permission = this._connection.getPermission();
            if (permission instanceof FilePermission) {
                return new File(permission.getName());
            }
        }
        try {
            return new File(this._url.getFile());
        } catch (Exception e2) {
            Log.ignore(e2);
            return null;
        }
    }

    @Override // org.mortbay.resource.Resource
    public String getName() {
        return this._url.toExternalForm();
    }

    @Override // org.mortbay.resource.Resource
    public synchronized InputStream getInputStream() throws IOException {
        InputStream inputStream;
        if (!checkConnection()) {
            throw new IOException("Invalid resource");
        }
        try {
            if (this._in != null) {
                inputStream = this._in;
                this._in = null;
                this._connection = null;
            } else {
                inputStream = this._connection.getInputStream();
                this._connection = null;
            }
        } catch (Throwable th) {
            this._connection = null;
            throw th;
        }
        return inputStream;
    }

    @Override // org.mortbay.resource.Resource
    public OutputStream getOutputStream() throws IOException, SecurityException {
        throw new IOException("Output not supported");
    }

    @Override // org.mortbay.resource.Resource
    public boolean delete() throws SecurityException {
        throw new SecurityException("Delete not supported");
    }

    @Override // org.mortbay.resource.Resource
    public boolean renameTo(Resource resource) throws SecurityException {
        throw new SecurityException("RenameTo not supported");
    }

    @Override // org.mortbay.resource.Resource
    public String[] list() {
        return null;
    }

    @Override // org.mortbay.resource.Resource
    public Resource addPath(String str) throws IOException {
        if (str == null) {
            return null;
        }
        return newResource(URIUtil.addPaths(this._url.toExternalForm(), URIUtil.canonicalPath(str)));
    }

    public String toString() {
        return this._urlString;
    }

    public int hashCode() {
        return this._url.hashCode();
    }

    public boolean equals(Object obj) {
        return (obj instanceof URLResource) && this._url.equals(((URLResource) obj)._url);
    }

    public boolean getUseCaches() {
        return this._useCaches;
    }
}
