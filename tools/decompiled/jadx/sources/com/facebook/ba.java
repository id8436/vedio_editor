package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: ProgressNoopOutputStream.java */
/* JADX INFO: loaded from: classes2.dex */
class ba extends OutputStream implements bi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<GraphRequest, bj> f1807a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f1808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GraphRequest f1809c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private bj f1810d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1811e;

    ba(Handler handler) {
        this.f1808b = handler;
    }

    @Override // com.facebook.bi
    public void a(GraphRequest graphRequest) {
        this.f1809c = graphRequest;
        this.f1810d = graphRequest != null ? this.f1807a.get(graphRequest) : null;
    }

    int a() {
        return this.f1811e;
    }

    Map<GraphRequest, bj> b() {
        return this.f1807a;
    }

    void a(long j) {
        if (this.f1810d == null) {
            this.f1810d = new bj(this.f1808b, this.f1809c);
            this.f1807a.put(this.f1809c, this.f1810d);
        }
        this.f1810d.b(j);
        this.f1811e = (int) (((long) this.f1811e) + j);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        a(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        a(i2);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        a(1L);
    }
}
