package org.mortbay.resource;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.StringTokenizer;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ResourceCollection extends Resource {
    private Resource[] _resources;

    public ResourceCollection() {
    }

    public ResourceCollection(Resource[] resourceArr) {
        setResources(resourceArr);
    }

    public ResourceCollection(String[] strArr) {
        setResources(strArr);
    }

    public ResourceCollection(String str) {
        setResources(str);
    }

    public void setResources(Resource[] resourceArr) {
        if (this._resources != null) {
            throw new IllegalStateException("*resources* already set.");
        }
        if (resourceArr == null) {
            throw new IllegalArgumentException("*resources* must not be null.");
        }
        if (resourceArr.length == 0) {
            throw new IllegalArgumentException("arg *resources* must be one or more resources.");
        }
        this._resources = resourceArr;
        for (int i = 0; i < this._resources.length; i++) {
            Resource resource = this._resources[i];
            if (!resource.exists() || !resource.isDirectory()) {
                throw new IllegalArgumentException(new StringBuffer().append(resource).append(" is not an existing directory.").toString());
            }
        }
    }

    public void setResources(String[] strArr) {
        if (this._resources != null) {
            throw new IllegalStateException("*resources* already set.");
        }
        if (strArr == null) {
            throw new IllegalArgumentException("*resources* must not be null.");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("arg *resources* must be one or more resources.");
        }
        this._resources = new Resource[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            try {
                this._resources[i] = Resource.newResource(strArr[i]);
                if (!this._resources[i].exists() || !this._resources[i].isDirectory()) {
                    throw new IllegalArgumentException(new StringBuffer().append(this._resources[i]).append(" is not an existing directory.").toString());
                }
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public void setResources(String str) {
        if (this._resources != null) {
            throw new IllegalStateException("*resources* already set.");
        }
        if (str == null) {
            throw new IllegalArgumentException("*csvResources* must not be null.");
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",;");
        int iCountTokens = stringTokenizer.countTokens();
        if (iCountTokens == 0) {
            throw new IllegalArgumentException("arg *resources* must be one or more resources.");
        }
        this._resources = new Resource[iCountTokens];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            try {
                this._resources[i] = Resource.newResource(stringTokenizer.nextToken().trim());
                if (this._resources[i].exists() && this._resources[i].isDirectory()) {
                    i++;
                } else {
                    throw new IllegalArgumentException(new StringBuffer().append(this._resources[i]).append(" is not an existing directory.").toString());
                }
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public void setResourcesAsCSV(String str) {
        setResources(str);
    }

    public Resource[] getResources() {
        return this._resources;
    }

    @Override // org.mortbay.resource.Resource
    public Resource addPath(String str) throws IOException {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        if (str == null) {
            throw new MalformedURLException();
        }
        if (str.length() == 0 || URIUtil.SLASH.equals(str)) {
            return this;
        }
        int i = 0;
        Resource resourceAddPath = null;
        while (true) {
            if (i >= this._resources.length) {
                break;
            }
            resourceAddPath = this._resources[i].addPath(str);
            if (!resourceAddPath.exists()) {
                i++;
            } else if (!resourceAddPath.isDirectory()) {
                return resourceAddPath;
            }
        }
        ArrayList arrayList = null;
        for (int i2 = i + 1; i2 < this._resources.length; i2++) {
            Resource resourceAddPath2 = this._resources[i2].addPath(str);
            if (resourceAddPath2.exists() && resourceAddPath2.isDirectory()) {
                if (resourceAddPath != null) {
                    arrayList = new ArrayList();
                    arrayList.add(resourceAddPath);
                    resourceAddPath = null;
                }
                arrayList.add(resourceAddPath2);
            }
        }
        if (resourceAddPath == null) {
            if (arrayList != null) {
                return new ResourceCollection((Resource[]) arrayList.toArray(new Resource[arrayList.size()]));
            }
            return null;
        }
        return resourceAddPath;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (r3 >= r6._resources.length) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
    
        r4 = r6._resources[r3].addPath(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        if (r4.exists() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
    
        if (r4.isDirectory() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r1 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
    
        r0 = new java.util.ArrayList();
        r0.add(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
    
        r0.add(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        if (r1 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
    
        if (r0 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        r3 = r0 + 1;
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object findResource(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            r2 = 0
            r0 = 0
            r1 = r2
        L3:
            org.mortbay.resource.Resource[] r3 = r6._resources
            int r3 = r3.length
            if (r0 >= r3) goto L1c
            org.mortbay.resource.Resource[] r1 = r6._resources
            r1 = r1[r0]
            org.mortbay.resource.Resource r1 = r1.addPath(r7)
            boolean r3 = r1.exists()
            if (r3 == 0) goto L49
            boolean r3 = r1.isDirectory()
            if (r3 == 0) goto L4e
        L1c:
            int r0 = r0 + 1
            r3 = r0
            r0 = r2
        L20:
            org.mortbay.resource.Resource[] r4 = r6._resources
            int r4 = r4.length
            if (r3 >= r4) goto L4c
            org.mortbay.resource.Resource[] r4 = r6._resources
            r4 = r4[r3]
            org.mortbay.resource.Resource r4 = r4.addPath(r7)
            boolean r5 = r4.exists()
            if (r5 == 0) goto L46
            boolean r5 = r4.isDirectory()
            if (r5 == 0) goto L46
            if (r1 == 0) goto L43
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r0.add(r1)
        L43:
            r0.add(r4)
        L46:
            int r3 = r3 + 1
            goto L20
        L49:
            int r0 = r0 + 1
            goto L3
        L4c:
            if (r1 == 0) goto L4f
        L4e:
            return r1
        L4f:
            if (r0 == 0) goto L53
            r1 = r0
            goto L4e
        L53:
            r1 = r2
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.resource.ResourceCollection.findResource(java.lang.String):java.lang.Object");
    }

    @Override // org.mortbay.resource.Resource
    public boolean delete() throws SecurityException {
        throw new UnsupportedOperationException();
    }

    @Override // org.mortbay.resource.Resource
    public boolean exists() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        return true;
    }

    @Override // org.mortbay.resource.Resource
    public File getFile() throws IOException {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (int i = 0; i < this._resources.length; i++) {
            File file = this._resources[i].getFile();
            if (file != null) {
                return file;
            }
        }
        return null;
    }

    @Override // org.mortbay.resource.Resource
    public InputStream getInputStream() throws IOException {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (int i = 0; i < this._resources.length; i++) {
            InputStream inputStream = this._resources[i].getInputStream();
            if (inputStream != null) {
                return inputStream;
            }
        }
        return null;
    }

    @Override // org.mortbay.resource.Resource
    public String getName() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (int i = 0; i < this._resources.length; i++) {
            String name = this._resources[i].getName();
            if (name != null) {
                return name;
            }
        }
        return null;
    }

    @Override // org.mortbay.resource.Resource
    public OutputStream getOutputStream() throws IOException, SecurityException {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (int i = 0; i < this._resources.length; i++) {
            OutputStream outputStream = this._resources[i].getOutputStream();
            if (outputStream != null) {
                return outputStream;
            }
        }
        return null;
    }

    @Override // org.mortbay.resource.Resource
    public URL getURL() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (int i = 0; i < this._resources.length; i++) {
            URL url = this._resources[i].getURL();
            if (url != null) {
                return url;
            }
        }
        return null;
    }

    @Override // org.mortbay.resource.Resource
    public boolean isDirectory() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        return true;
    }

    @Override // org.mortbay.resource.Resource
    public long lastModified() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (int i = 0; i < this._resources.length; i++) {
            long jLastModified = this._resources[i].lastModified();
            if (jLastModified != -1) {
                return jLastModified;
            }
        }
        return -1L;
    }

    @Override // org.mortbay.resource.Resource
    public long length() {
        return -1L;
    }

    @Override // org.mortbay.resource.Resource
    public String[] list() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this._resources.length; i++) {
            for (String str : this._resources[i].list()) {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    @Override // org.mortbay.resource.Resource
    public void release() {
        if (this._resources == null) {
            throw new IllegalStateException("*resources* not set.");
        }
        for (int i = 0; i < this._resources.length; i++) {
            this._resources[i].release();
        }
    }

    @Override // org.mortbay.resource.Resource
    public boolean renameTo(Resource resource) throws SecurityException {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        if (this._resources == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this._resources.length; i++) {
            stringBuffer.append(this._resources[i].toString()).append(';');
        }
        return stringBuffer.toString();
    }
}
