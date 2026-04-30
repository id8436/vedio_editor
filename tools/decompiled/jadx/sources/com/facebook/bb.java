package com.facebook;

import android.os.Handler;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: ProgressOutputStream.java */
/* JADX INFO: loaded from: classes2.dex */
class bb extends FilterOutputStream implements bi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<GraphRequest, bj> f1812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ap f1813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f1814c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1815d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1816e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1817f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private bj f1818g;

    bb(OutputStream outputStream, ap apVar, Map<GraphRequest, bj> map, long j) {
        super(outputStream);
        this.f1813b = apVar;
        this.f1812a = map;
        this.f1817f = j;
        this.f1814c = w.h();
    }

    private void a(long j) {
        if (this.f1818g != null) {
            this.f1818g.a(j);
        }
        this.f1815d += j;
        if (this.f1815d >= this.f1816e + this.f1814c || this.f1815d >= this.f1817f) {
            a();
        }
    }

    private void a() {
        if (this.f1815d > this.f1816e) {
            for (aq aqVar : this.f1813b.e()) {
                if (aqVar instanceof ar) {
                    Handler handlerC = this.f1813b.c();
                    ar arVar = (ar) aqVar;
                    if (handlerC == null) {
                        arVar.a(this.f1813b, this.f1815d, this.f1817f);
                    } else {
                        handlerC.post(new bc(this, arVar));
                    }
                }
            }
            this.f1816e = this.f1815d;
        }
    }

    @Override // com.facebook.bi
    public void a(GraphRequest graphRequest) {
        this.f1818g = graphRequest != null ? this.f1812a.get(graphRequest) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.out.write(bArr);
        a(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
        a(i2);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        this.out.write(i);
        a(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        Iterator<bj> it = this.f1812a.values().iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        a();
    }
}
