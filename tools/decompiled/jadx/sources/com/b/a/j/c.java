package com.b.a.j;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* JADX INFO: compiled from: ExceptionCatchingInputStream.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Queue<c> f1223a = h.a(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InputStream f1224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private IOException f1225c;

    public static c a(InputStream inputStream) {
        c cVarPoll;
        synchronized (f1223a) {
            cVarPoll = f1223a.poll();
        }
        if (cVarPoll == null) {
            cVarPoll = new c();
        }
        cVarPoll.b(inputStream);
        return cVarPoll;
    }

    c() {
    }

    void b(InputStream inputStream) {
        this.f1224b = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f1224b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f1224b.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f1224b.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f1224b.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            return this.f1224b.read(bArr);
        } catch (IOException e2) {
            this.f1225c = e2;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return this.f1224b.read(bArr, i, i2);
        } catch (IOException e2) {
            this.f1225c = e2;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f1224b.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            return this.f1224b.skip(j);
        } catch (IOException e2) {
            this.f1225c = e2;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            return this.f1224b.read();
        } catch (IOException e2) {
            this.f1225c = e2;
            return -1;
        }
    }

    public IOException a() {
        return this.f1225c;
    }

    public void b() {
        this.f1225c = null;
        this.f1224b = null;
        synchronized (f1223a) {
            f1223a.offer(this);
        }
    }
}
