package org.mortbay.resource;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;
import org.mortbay.log.Log;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class FileResource extends URLResource {
    private static boolean __checkAliases = "true".equalsIgnoreCase(System.getProperty("org.mortbay.util.FileResource.checkAliases", "true"));
    private transient URL _alias;
    private transient boolean _aliasChecked;
    private File _file;

    static {
        if (__checkAliases) {
            Log.debug("Checking Resource aliases");
        } else {
            Log.warn("Resource alias checking is disabled");
        }
    }

    public static void setCheckAliases(boolean z) {
        __checkAliases = z;
    }

    public static boolean getCheckAliases() {
        return __checkAliases;
    }

    public FileResource(URL url) throws URISyntaxException, IOException {
        super(url, null);
        this._alias = null;
        this._aliasChecked = false;
        try {
            this._file = new File(new URI(url.toString()));
        } catch (Exception e2) {
            Log.ignore(e2);
            try {
                URI uri = new URI(new StringBuffer().append("file:").append(URIUtil.encodePath(url.toString().substring(5))).toString());
                if (uri.getAuthority() == null) {
                    this._file = new File(uri);
                } else {
                    this._file = new File(new StringBuffer().append("//").append(uri.getAuthority()).append(URIUtil.decodePath(url.getFile())).toString());
                }
            } catch (Exception e3) {
                Log.ignore(e3);
                checkConnection();
                Permission permission = this._connection.getPermission();
                this._file = new File(permission == null ? url.getFile() : permission.getName());
            }
        }
        if (this._file.isDirectory()) {
            if (!this._urlString.endsWith(URIUtil.SLASH)) {
                this._urlString = new StringBuffer().append(this._urlString).append(URIUtil.SLASH).toString();
            }
        } else if (this._urlString.endsWith(URIUtil.SLASH)) {
            this._urlString = this._urlString.substring(0, this._urlString.length() - 1);
        }
    }

    FileResource(URL url, URLConnection uRLConnection, File file) {
        super(url, uRLConnection);
        this._alias = null;
        this._aliasChecked = false;
        this._file = file;
        if (this._file.isDirectory() && !this._urlString.endsWith(URIUtil.SLASH)) {
            this._urlString = new StringBuffer().append(this._urlString).append(URIUtil.SLASH).toString();
        }
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public Resource addPath(String str) throws IOException {
        String str2;
        URLResource uRLResource;
        String strCanonicalPath = URIUtil.canonicalPath(str);
        if (!isDirectory()) {
            FileResource fileResource = (FileResource) super.addPath(strCanonicalPath);
            str2 = fileResource._urlString;
            uRLResource = fileResource;
        } else {
            if (strCanonicalPath == null) {
                throw new MalformedURLException();
            }
            String strAddPaths = URIUtil.addPaths(this._urlString, URIUtil.encodePath(strCanonicalPath.startsWith(URIUtil.SLASH) ? strCanonicalPath.substring(1) : strCanonicalPath));
            str2 = strAddPaths;
            uRLResource = (URLResource) Resource.newResource(strAddPaths);
        }
        String strEncodePath = URIUtil.encodePath(strCanonicalPath);
        int length = uRLResource.toString().length() - strEncodePath.length();
        int iLastIndexOf = uRLResource._urlString.lastIndexOf(strEncodePath, length);
        if (length != iLastIndexOf && ((length - 1 != iLastIndexOf || strCanonicalPath.endsWith(URIUtil.SLASH) || !uRLResource.isDirectory()) && !(uRLResource instanceof BadResource))) {
            ((FileResource) uRLResource)._alias = new URL(str2);
            ((FileResource) uRLResource)._aliasChecked = true;
        }
        return uRLResource;
    }

    @Override // org.mortbay.resource.Resource
    public URL getAlias() {
        if (__checkAliases && !this._aliasChecked) {
            try {
                String absolutePath = this._file.getAbsolutePath();
                String canonicalPath = this._file.getCanonicalPath();
                if (absolutePath.length() != canonicalPath.length() || !absolutePath.equals(canonicalPath)) {
                    this._alias = new File(canonicalPath).toURI().toURL();
                }
                this._aliasChecked = true;
                if (this._alias != null && Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("ALIAS abs=").append(absolutePath).toString());
                    Log.debug(new StringBuffer().append("ALIAS can=").append(canonicalPath).toString());
                }
            } catch (Exception e2) {
                Log.warn(Log.EXCEPTION, (Throwable) e2);
                return getURL();
            }
        }
        return this._alias;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public boolean exists() {
        return this._file.exists();
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public long lastModified() {
        return this._file.lastModified();
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public boolean isDirectory() {
        return this._file.isDirectory();
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public long length() {
        return this._file.length();
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public String getName() {
        return this._file.getAbsolutePath();
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public File getFile() {
        return this._file;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public InputStream getInputStream() throws IOException {
        return new FileInputStream(this._file);
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public OutputStream getOutputStream() throws IOException, SecurityException {
        return new FileOutputStream(this._file);
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public boolean delete() throws SecurityException {
        return this._file.delete();
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public boolean renameTo(Resource resource) throws SecurityException {
        if (resource instanceof FileResource) {
            return this._file.renameTo(((FileResource) resource)._file);
        }
        return false;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public String[] list() {
        String[] list = this._file.list();
        if (list == null) {
            return null;
        }
        int length = list.length;
        while (true) {
            int i = length - 1;
            if (length > 0) {
                if (!new File(this._file, list[i]).isDirectory() || list[i].endsWith(URIUtil.SLASH)) {
                    length = i;
                } else {
                    list[i] = new StringBuffer().append(list[i]).append(URIUtil.SLASH).toString();
                    length = i;
                }
            } else {
                return list;
            }
        }
    }

    @Override // org.mortbay.resource.Resource
    public String encode(String str) {
        return str;
    }

    @Override // org.mortbay.resource.URLResource
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof FileResource)) {
            return false;
        }
        FileResource fileResource = (FileResource) obj;
        return fileResource._file == this._file || (this._file != null && this._file.equals(fileResource._file));
    }

    @Override // org.mortbay.resource.URLResource
    public int hashCode() {
        return this._file == null ? super.hashCode() : this._file.hashCode();
    }
}
