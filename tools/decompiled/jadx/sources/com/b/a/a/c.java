package com.b.a.a;

import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean[] f690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f691d;

    /* synthetic */ c(a aVar, d dVar, b bVar) {
        this(aVar, dVar);
    }

    private c(a aVar, d dVar) {
        this.f688a = aVar;
        this.f689b = dVar;
        this.f690c = dVar.f697f ? null : new boolean[aVar.h];
    }

    public File a(int i) throws IOException {
        File fileB;
        synchronized (this.f688a) {
            if (this.f689b.f698g != this) {
                throw new IllegalStateException();
            }
            if (!this.f689b.f697f) {
                this.f690c[i] = true;
            }
            fileB = this.f689b.b(i);
            if (!this.f688a.f681b.exists()) {
                this.f688a.f681b.mkdirs();
            }
        }
        return fileB;
    }

    public void a() throws IOException {
        this.f688a.a(this, true);
        this.f691d = true;
    }

    public void b() throws IOException {
        this.f688a.a(this, false);
    }

    public void c() {
        if (!this.f691d) {
            try {
                b();
            } catch (IOException e2) {
            }
        }
    }
}
