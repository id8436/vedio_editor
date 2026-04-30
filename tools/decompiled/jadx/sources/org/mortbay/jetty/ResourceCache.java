package org.mortbay.jetty;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.View;
import org.mortbay.resource.Resource;
import org.mortbay.resource.ResourceFactory;

/* JADX INFO: loaded from: classes3.dex */
public class ResourceCache extends AbstractLifeCycle implements Serializable {
    protected transient Map _cache;
    protected transient int _cachedFiles;
    protected transient int _cachedSize;
    protected transient Content _leastRecentlyUsed;
    private MimeTypes _mimeTypes;
    protected transient Content _mostRecentlyUsed;
    private int _maxCachedFileSize = 1048576;
    private int _maxCachedFiles = 2048;
    private int _maxCacheSize = 16777216;

    public ResourceCache(MimeTypes mimeTypes) {
        this._mimeTypes = mimeTypes;
    }

    public int getCachedSize() {
        return this._cachedSize;
    }

    public int getCachedFiles() {
        return this._cachedFiles;
    }

    public int getMaxCachedFileSize() {
        return this._maxCachedFileSize;
    }

    public void setMaxCachedFileSize(int i) {
        this._maxCachedFileSize = i;
        flushCache();
    }

    public int getMaxCacheSize() {
        return this._maxCacheSize;
    }

    public void setMaxCacheSize(int i) {
        this._maxCacheSize = i;
        flushCache();
    }

    public int getMaxCachedFiles() {
        return this._maxCachedFiles;
    }

    public void setMaxCachedFiles(int i) {
        this._maxCachedFiles = i;
    }

    public void flushCache() {
        if (this._cache != null) {
            synchronized (this) {
                Iterator it = new ArrayList(this._cache.values()).iterator();
                while (it.hasNext()) {
                    ((Content) it.next()).invalidate();
                }
                this._cache.clear();
                this._cachedSize = 0;
                this._cachedFiles = 0;
                this._mostRecentlyUsed = null;
                this._leastRecentlyUsed = null;
            }
        }
    }

    public Content lookup(String str, ResourceFactory resourceFactory) throws IOException {
        synchronized (this._cache) {
            Content content = (Content) this._cache.get(str);
            return (content == null || !content.isValid()) ? load(str, resourceFactory.getResource(str)) : content;
        }
    }

    public Content lookup(String str, Resource resource) throws IOException {
        synchronized (this._cache) {
            Content content = (Content) this._cache.get(str);
            return (content == null || !content.isValid()) ? load(str, resource) : content;
        }
    }

    private Content load(String str, Resource resource) throws IOException {
        if (resource != null && resource.exists() && !resource.isDirectory()) {
            long length = resource.length();
            if (length > 0 && length < this._maxCachedFileSize && length < this._maxCacheSize) {
                Content content = new Content(this, resource);
                fill(content);
                synchronized (this._cache) {
                    Content content2 = (Content) this._cache.get(str);
                    if (content2 != null) {
                        content.release();
                        return content2;
                    }
                    int i = this._maxCacheSize - ((int) length);
                    while (true) {
                        if (this._cachedSize <= i && (this._maxCachedFiles <= 0 || this._cachedFiles < this._maxCachedFiles)) {
                            break;
                        }
                        this._leastRecentlyUsed.invalidate();
                    }
                    content.cache(str);
                    return content;
                }
            }
        }
        return null;
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public synchronized void doStart() throws Exception {
        this._cache = new HashMap();
        this._cachedSize = 0;
        this._cachedFiles = 0;
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws InterruptedException {
        flushCache();
    }

    protected void fill(Content content) throws IOException {
        try {
            InputStream inputStream = content.getResource().getInputStream();
            int length = (int) content.getResource().length();
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(length);
            byteArrayBuffer.readFrom(inputStream, length);
            inputStream.close();
            content.setBuffer(byteArrayBuffer);
        } finally {
            content.getResource().release();
        }
    }

    public class Content implements HttpContent {
        Buffer _buffer;
        Buffer _contentType;
        String _key;
        long _lastModified;
        Buffer _lastModifiedBytes;
        Content _next = this;
        Content _prev = this;
        Resource _resource;
        private final ResourceCache this$0;

        Content(ResourceCache resourceCache, Resource resource) {
            this.this$0 = resourceCache;
            this._resource = resource;
            this._contentType = resourceCache._mimeTypes.getMimeByExtension(this._resource.toString());
            this._lastModified = resource.lastModified();
        }

        void cache(String str) {
            this._key = str;
            this._next = this.this$0._mostRecentlyUsed;
            this.this$0._mostRecentlyUsed = this;
            if (this._next != null) {
                this._next._prev = this;
            }
            this._prev = null;
            if (this.this$0._leastRecentlyUsed == null) {
                this.this$0._leastRecentlyUsed = this;
            }
            this.this$0._cache.put(this._key, this);
            this.this$0._cachedSize += this._buffer.length();
            this.this$0._cachedFiles++;
            if (this._lastModified != -1) {
                this._lastModifiedBytes = new ByteArrayBuffer(HttpFields.formatDate(this._lastModified, false));
            }
        }

        public String getKey() {
            return this._key;
        }

        public boolean isCached() {
            return this._key != null;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Resource getResource() {
            return this._resource;
        }

        boolean isValid() {
            if (this._lastModified == this._resource.lastModified()) {
                if (this.this$0._mostRecentlyUsed != this) {
                    Content content = this._prev;
                    Content content2 = this._next;
                    this._next = this.this$0._mostRecentlyUsed;
                    this.this$0._mostRecentlyUsed = this;
                    if (this._next != null) {
                        this._next._prev = this;
                    }
                    this._prev = null;
                    if (content != null) {
                        content._next = content2;
                    }
                    if (content2 != null) {
                        content2._prev = content;
                    }
                    if (this.this$0._leastRecentlyUsed == this && content != null) {
                        this.this$0._leastRecentlyUsed = content;
                    }
                }
                return true;
            }
            invalidate();
            return false;
        }

        public void invalidate() {
            synchronized (this) {
                this.this$0._cache.remove(this._key);
                this._key = null;
                this.this$0._cachedSize -= this._buffer.length();
                ResourceCache resourceCache = this.this$0;
                resourceCache._cachedFiles--;
                if (this.this$0._mostRecentlyUsed == this) {
                    this.this$0._mostRecentlyUsed = this._next;
                } else {
                    this._prev._next = this._next;
                }
                if (this.this$0._leastRecentlyUsed == this) {
                    this.this$0._leastRecentlyUsed = this._prev;
                } else {
                    this._next._prev = this._prev;
                }
                this._prev = null;
                this._next = null;
                if (this._resource != null) {
                    this._resource.release();
                }
                this._resource = null;
            }
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getLastModified() {
            return this._lastModifiedBytes;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getContentType() {
            return this._contentType;
        }

        public void setContentType(Buffer buffer) {
            this._contentType = buffer;
        }

        @Override // org.mortbay.jetty.HttpContent
        public void release() {
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getBuffer() {
            if (this._buffer == null) {
                return null;
            }
            return new View(this._buffer);
        }

        public void setBuffer(Buffer buffer) {
            this._buffer = buffer;
        }

        @Override // org.mortbay.jetty.HttpContent
        public long getContentLength() {
            if (this._buffer == null) {
                if (this._resource != null) {
                    return this._resource.length();
                }
                return -1L;
            }
            return this._buffer.length();
        }

        @Override // org.mortbay.jetty.HttpContent
        public InputStream getInputStream() throws IOException {
            return this._resource.getInputStream();
        }
    }
}
