package com.i.a.a.a.a.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f3202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f3203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean[] f3204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3206e;

    /* synthetic */ d(a aVar, f fVar, b bVar) {
        this(aVar, fVar);
    }

    private d(a aVar, f fVar) {
        this.f3202a = aVar;
        this.f3203b = fVar;
        this.f3204c = fVar.f3211d ? null : new boolean[aVar.j];
    }

    public OutputStream a(int i) throws IOException {
        OutputStream eVar;
        FileOutputStream fileOutputStream;
        synchronized (this.f3202a) {
            if (this.f3203b.f3212e != this) {
                throw new IllegalStateException();
            }
            if (!this.f3203b.f3211d) {
                this.f3204c[i] = true;
            }
            File fileB = this.f3203b.b(i);
            try {
                fileOutputStream = new FileOutputStream(fileB);
            } catch (FileNotFoundException e2) {
                this.f3202a.f3196c.mkdirs();
                try {
                    fileOutputStream = new FileOutputStream(fileB);
                } catch (FileNotFoundException e3) {
                    eVar = a.r;
                }
            }
            eVar = new e(this, fileOutputStream, null);
        }
        return eVar;
    }

    public void a() throws IOException {
        if (this.f3205d) {
            this.f3202a.a(this, false);
            this.f3202a.c(this.f3203b.f3209b);
        } else {
            this.f3202a.a(this, true);
        }
        this.f3206e = true;
    }

    public void b() throws IOException {
        this.f3202a.a(this, false);
    }
}
