package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: BitmapCounter.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private int f2921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private long f2922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.facebook.d.h.i<Bitmap> f2925e;

    public e(int i, int i2) {
        com.facebook.d.d.k.a(i > 0);
        com.facebook.d.d.k.a(i2 > 0);
        this.f2923c = i;
        this.f2924d = i2;
        this.f2925e = new f(this);
    }

    public synchronized boolean a(Bitmap bitmap) {
        boolean z;
        int iA = com.facebook.h.a.a(bitmap);
        if (this.f2921a >= this.f2923c || this.f2922b + ((long) iA) > this.f2924d) {
            z = false;
        } else {
            this.f2921a++;
            this.f2922b = ((long) iA) + this.f2922b;
            z = true;
        }
        return z;
    }

    public synchronized void b(Bitmap bitmap) {
        synchronized (this) {
            int iA = com.facebook.h.a.a(bitmap);
            com.facebook.d.d.k.a(this.f2921a > 0, "No bitmaps registered.");
            com.facebook.d.d.k.a(((long) iA) <= this.f2922b, "Bitmap size bigger than the total registered size: %d, %d", Integer.valueOf(iA), Long.valueOf(this.f2922b));
            this.f2922b -= (long) iA;
            this.f2921a--;
        }
    }

    public com.facebook.d.h.i<Bitmap> a() {
        return this.f2925e;
    }
}
