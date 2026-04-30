package com.f.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f1644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean[] f1645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1647e;

    /* synthetic */ d(a aVar, f fVar, b bVar) {
        this(aVar, fVar);
    }

    private d(a aVar, f fVar) {
        this.f1643a = aVar;
        this.f1644b = fVar;
        this.f1645c = fVar.f1652d ? null : new boolean[aVar.i];
    }

    public OutputStream a(int i) throws IOException {
        OutputStream eVar;
        FileOutputStream fileOutputStream;
        synchronized (this.f1643a) {
            if (this.f1644b.f1653e != this) {
                throw new IllegalStateException();
            }
            if (!this.f1644b.f1652d) {
                this.f1645c[i] = true;
            }
            File fileB = this.f1644b.b(i);
            try {
                fileOutputStream = new FileOutputStream(fileB);
            } catch (FileNotFoundException e2) {
                this.f1643a.f1637c.mkdirs();
                try {
                    fileOutputStream = new FileOutputStream(fileB);
                } catch (FileNotFoundException e3) {
                    eVar = a.p;
                }
            }
            eVar = new e(this, fileOutputStream, null);
        }
        return eVar;
    }

    public void a() throws IOException {
        if (this.f1646d) {
            this.f1643a.a(this, false);
            this.f1643a.c(this.f1644b.f1650b);
        } else {
            this.f1643a.a(this, true);
        }
        this.f1647e = true;
    }

    public void b() throws IOException {
        this.f1643a.a(this, false);
    }
}
