package com.facebook.imagepipeline.h;

import android.graphics.Bitmap;
import com.facebook.d.d.k;
import com.facebook.d.h.i;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: CloseableStaticBitmap.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private com.facebook.d.h.a<Bitmap> f2574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Bitmap f2575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f2576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2577d;

    public c(Bitmap bitmap, i<Bitmap> iVar, g gVar, int i) {
        this.f2575b = (Bitmap) k.a(bitmap);
        this.f2574a = com.facebook.d.h.a.a(this.f2575b, (i) k.a(iVar));
        this.f2576c = gVar;
        this.f2577d = i;
    }

    public c(com.facebook.d.h.a<Bitmap> aVar, g gVar, int i) {
        this.f2574a = (com.facebook.d.h.a) k.a(aVar.c());
        this.f2575b = this.f2574a.a();
        this.f2576c = gVar;
        this.f2577d = i;
    }

    @Override // com.facebook.imagepipeline.h.b, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.d.h.a<Bitmap> aVarI = i();
        if (aVarI != null) {
            aVarI.close();
        }
    }

    private synchronized com.facebook.d.h.a<Bitmap> i() {
        com.facebook.d.h.a<Bitmap> aVar;
        aVar = this.f2574a;
        this.f2574a = null;
        this.f2575b = null;
        return aVar;
    }

    @Override // com.facebook.imagepipeline.h.b
    public synchronized boolean b() {
        return this.f2574a == null;
    }

    public Bitmap e() {
        return this.f2575b;
    }

    @Override // com.facebook.imagepipeline.h.b
    public int a() {
        return com.facebook.h.a.a(this.f2575b);
    }

    @Override // com.facebook.imagepipeline.h.e
    public int f() {
        return (this.f2577d == 90 || this.f2577d == 270) ? b(this.f2575b) : a(this.f2575b);
    }

    @Override // com.facebook.imagepipeline.h.e
    public int g() {
        return (this.f2577d == 90 || this.f2577d == 270) ? a(this.f2575b) : b(this.f2575b);
    }

    private static int a(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth();
    }

    private static int b(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getHeight();
    }

    public int h() {
        return this.f2577d;
    }

    @Override // com.facebook.imagepipeline.h.b
    public g c() {
        return this.f2576c;
    }
}
