package com.adobe.premiereclip.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.f.a.a;
import com.f.a.d;
import com.f.a.g;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleDiskCache {
    private static final int METADATA_IDX = 1;
    private static final int VALUE_IDX = 0;
    private static final List<File> usedDirs = new ArrayList();
    private a diskLruCache;
    private int mAppVersion;

    private SimpleDiskCache(File file, int i, long j) throws IOException {
        this.mAppVersion = i;
        this.diskLruCache = a.a(file, i, 2, j);
    }

    public synchronized void close() throws IOException {
        this.diskLruCache.close();
    }

    protected void finalize() throws Throwable {
        Log.d("FINALIZE", "finalize called");
        this.diskLruCache.close();
        super.finalize();
    }

    public static synchronized SimpleDiskCache open(File file, int i, long j) throws IOException {
        if (usedDirs.contains(file)) {
            throw new IllegalStateException("Cache dir " + file.getAbsolutePath() + " was used before.");
        }
        usedDirs.add(file);
        return new SimpleDiskCache(file, i, j);
    }

    public void clear() throws IOException {
        File fileA = this.diskLruCache.a();
        long jB = this.diskLruCache.b();
        this.diskLruCache.d();
        this.diskLruCache = a.a(fileA, this.mAppVersion, 2, jB);
    }

    public a getCache() {
        return this.diskLruCache;
    }

    public InputStreamEntry getInputStream(String str) throws IOException {
        g gVarA = this.diskLruCache.a(toInternalKey(str));
        if (gVarA == null) {
            return null;
        }
        return new InputStreamEntry(gVarA, readMetadata(gVarA));
    }

    public BitmapEntry getBitmap(String str) throws IOException {
        g gVarA = this.diskLruCache.a(toInternalKey(str));
        if (gVarA == null) {
            return null;
        }
        try {
            return new BitmapEntry(BitmapFactory.decodeStream(gVarA.a(0)), readMetadata(gVarA));
        } finally {
            gVarA.close();
        }
    }

    public boolean removeBitmap(String str) throws IOException {
        return this.diskLruCache.c(toInternalKey(str));
    }

    public StringEntry getString(String str) throws IOException {
        g gVarA = this.diskLruCache.a(toInternalKey(str));
        if (gVarA == null) {
            return null;
        }
        try {
            return new StringEntry(gVarA.b(0), readMetadata(gVarA));
        } finally {
            gVarA.close();
        }
    }

    public boolean contains(String str) throws IOException {
        g gVarA = this.diskLruCache.a(toInternalKey(str));
        if (gVarA == null) {
            return false;
        }
        gVarA.close();
        return true;
    }

    public OutputStream openStream(String str) throws IOException {
        return openStream(str, new HashMap());
    }

    public OutputStream openStream(String str, Map<String, ? extends Serializable> map) throws Throwable {
        d dVarB = this.diskLruCache.b(toInternalKey(str));
        if (dVarB == null) {
            return null;
        }
        try {
            writeMetadata(map, dVarB);
            return new CacheOutputStream(new BufferedOutputStream(dVarB.a(0)), dVarB);
        } catch (IOException e2) {
            dVarB.b();
            throw e2;
        }
    }

    public void put(String str, InputStream inputStream) throws IOException {
        put(str, inputStream, new HashMap());
    }

    public void put(String str, InputStream inputStream, Map<String, Serializable> map) throws IOException {
        OutputStream outputStreamOpenStream = null;
        try {
            outputStreamOpenStream = openStream(str, map);
            if (outputStreamOpenStream != null) {
                IOUtils.copy(inputStream, outputStreamOpenStream);
            }
        } finally {
            if (outputStreamOpenStream != null) {
                outputStreamOpenStream.close();
            }
        }
    }

    public void put(String str, String str2) throws IOException {
        put(str, str2, new HashMap());
    }

    public void put(String str, String str2, Map<String, ? extends Serializable> map) throws IOException {
        OutputStream outputStreamOpenStream = null;
        try {
            outputStreamOpenStream = openStream(str, map);
            if (outputStreamOpenStream != null) {
                outputStreamOpenStream.write(str2.getBytes());
            }
        } finally {
            if (outputStreamOpenStream != null) {
                outputStreamOpenStream.close();
            }
        }
    }

    private void writeMetadata(Map<String, ? extends Serializable> map, d dVar) throws Throwable {
        ObjectOutputStream objectOutputStream;
        try {
            objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(dVar.a(1)));
        } catch (Throwable th) {
            th = th;
            objectOutputStream = null;
        }
        try {
            objectOutputStream.writeObject(map);
            IOUtils.closeQuietly((OutputStream) objectOutputStream);
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly((OutputStream) objectOutputStream);
            throw th;
        }
    }

    private Map<String, Serializable> readMetadata(g gVar) throws Throwable {
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(new BufferedInputStream(gVar.a(1)));
                try {
                    Map<String, Serializable> map = (Map) objectInputStream.readObject();
                    IOUtils.closeQuietly((InputStream) objectInputStream);
                    return map;
                } catch (ClassNotFoundException e2) {
                    e = e2;
                    throw new RuntimeException(e);
                }
            } catch (Throwable th) {
                th = th;
                IOUtils.closeQuietly((InputStream) null);
                throw th;
            }
        } catch (ClassNotFoundException e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly((InputStream) null);
            throw th;
        }
    }

    private String toInternalKey(String str) {
        return md5(str);
    }

    private String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError();
        } catch (NoSuchAlgorithmException e3) {
            throw new AssertionError();
        }
    }

    class CacheOutputStream extends FilterOutputStream {
        private final d editor;
        private boolean failed;

        private CacheOutputStream(OutputStream outputStream, d dVar) {
            super(outputStream);
            this.failed = false;
            this.editor = dVar;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            IOException e2 = null;
            try {
                super.close();
            } catch (IOException e3) {
                e2 = e3;
            }
            if (this.failed) {
                this.editor.b();
            } else {
                this.editor.a();
            }
            if (e2 != null) {
                throw e2;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e2) {
                this.failed = true;
                throw e2;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            try {
                super.write(i);
            } catch (IOException e2) {
                this.failed = true;
                throw e2;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            try {
                super.write(bArr);
            } catch (IOException e2) {
                this.failed = true;
                throw e2;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                super.write(bArr, i, i2);
            } catch (IOException e2) {
                this.failed = true;
                throw e2;
            }
        }
    }

    public class InputStreamEntry {
        private final Map<String, Serializable> metadata;
        private final g snapshot;

        public InputStreamEntry(g gVar, Map<String, Serializable> map) {
            this.metadata = map;
            this.snapshot = gVar;
        }

        public InputStream getInputStream() {
            return this.snapshot.a(0);
        }

        public Map<String, Serializable> getMetadata() {
            return this.metadata;
        }

        public void close() {
            this.snapshot.close();
        }
    }

    public class BitmapEntry {
        private final Bitmap bitmap;
        private final Map<String, Serializable> metadata;

        public BitmapEntry(Bitmap bitmap, Map<String, Serializable> map) {
            this.bitmap = bitmap;
            this.metadata = map;
        }

        public Bitmap getBitmap() {
            return this.bitmap;
        }

        public Map<String, Serializable> getMetadata() {
            return this.metadata;
        }
    }

    public class StringEntry {
        private final Map<String, Serializable> metadata;
        private final String string;

        public StringEntry(String str, Map<String, Serializable> map) {
            this.string = str;
            this.metadata = map;
        }

        public String getString() {
            return this.string;
        }

        public Map<String, Serializable> getMetadata() {
            return this.metadata;
        }
    }
}
