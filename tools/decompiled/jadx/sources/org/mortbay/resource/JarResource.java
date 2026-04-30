package org.mortbay.resource;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import java.util.jar.Manifest;
import org.apache.commons.io.IOUtils;
import org.mortbay.log.Log;
import org.mortbay.util.IO;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class JarResource extends URLResource {
    protected transient JarURLConnection _jarConnection;

    JarResource(URL url) {
        super(url, null);
    }

    JarResource(URL url, boolean z) {
        super(url, null, z);
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public synchronized void release() {
        this._jarConnection = null;
        super.release();
    }

    @Override // org.mortbay.resource.URLResource
    protected boolean checkConnection() {
        super.checkConnection();
        try {
            if (this._jarConnection != this._connection) {
                newConnection();
            }
        } catch (IOException e2) {
            Log.ignore(e2);
            this._jarConnection = null;
        }
        return this._jarConnection != null;
    }

    protected void newConnection() throws IOException {
        this._jarConnection = (JarURLConnection) this._connection;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public boolean exists() {
        return this._urlString.endsWith("!/") ? checkConnection() : super.exists();
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public File getFile() throws IOException {
        return null;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public InputStream getInputStream() throws IOException {
        checkConnection();
        if (!this._urlString.endsWith("!/")) {
            return new FilterInputStream(this, super.getInputStream()) { // from class: org.mortbay.resource.JarResource.1
                private final JarResource this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.in = IO.getClosedStream();
                }
            };
        }
        return new URL(this._urlString.substring(4, this._urlString.length() - 2)).openStream();
    }

    public static void extract(Resource resource, File file, boolean z) throws Throwable {
        Manifest manifest;
        boolean z2;
        FileOutputStream fileOutputStream;
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("Extract ").append(resource).append(" to ").append(file).toString());
        }
        String strTrim = resource.getURL().toExternalForm().trim();
        int iIndexOf = strTrim.indexOf("!/");
        int i = iIndexOf >= 0 ? 4 : 0;
        if (iIndexOf < 0) {
            throw new IOException(new StringBuffer().append("Not a valid jar url: ").append(strTrim).toString());
        }
        URL url = new URL(strTrim.substring(i, iIndexOf));
        String strSubstring = iIndexOf + 2 < strTrim.length() ? strTrim.substring(iIndexOf + 2) : null;
        boolean z3 = strSubstring != null && strSubstring.endsWith(URIUtil.SLASH);
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("Extracting entry = ").append(strSubstring).append(" from jar ").append(url).toString());
        }
        JarInputStream jarInputStream = new JarInputStream(url.openConnection().getInputStream());
        new StringBuffer().append(file.getCanonicalPath()).append(URIUtil.SLASH).toString();
        while (true) {
            JarEntry nextJarEntry = jarInputStream.getNextJarEntry();
            if (nextJarEntry == null) {
                break;
            }
            String name = nextJarEntry.getName();
            if (strSubstring != null && name.startsWith(strSubstring)) {
                if (z3) {
                    name = name.substring(strSubstring.length());
                    if (!name.equals("")) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = true;
                }
            } else if (strSubstring != null && !name.startsWith(strSubstring)) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (!z2) {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("Skipping entry: ").append(name).toString());
                }
            } else if (URIUtil.canonicalPath(name.replace(IOUtils.DIR_SEPARATOR_WINDOWS, IOUtils.DIR_SEPARATOR_UNIX)) == null) {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("Invalid entry: ").append(name).toString());
                }
            } else {
                File file2 = new File(file, name);
                if (nextJarEntry.isDirectory()) {
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                } else {
                    File file3 = new File(file2.getParent());
                    if (!file3.exists()) {
                        file3.mkdirs();
                    }
                    try {
                        fileOutputStream = new FileOutputStream(file2);
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = null;
                    }
                    try {
                        IO.copy(jarInputStream, fileOutputStream);
                        IO.close(fileOutputStream);
                        if (nextJarEntry.getTime() >= 0) {
                            file2.setLastModified(nextJarEntry.getTime());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        IO.close(fileOutputStream);
                        throw th;
                    }
                }
                if (z) {
                    file2.deleteOnExit();
                }
            }
        }
        if ((strSubstring == null || (strSubstring != null && strSubstring.equalsIgnoreCase("META-INF/MANIFEST.MF"))) && (manifest = jarInputStream.getManifest()) != null) {
            File file4 = new File(file, "META-INF");
            file4.mkdir();
            FileOutputStream fileOutputStream2 = new FileOutputStream(new File(file4, "MANIFEST.MF"));
            manifest.write(fileOutputStream2);
            fileOutputStream2.close();
        }
        IO.close(jarInputStream);
    }

    public void extract(File file, boolean z) throws Throwable {
        extract(this, file, z);
    }
}
