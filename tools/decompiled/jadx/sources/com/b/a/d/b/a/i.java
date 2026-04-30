package com.b.a.d.b.a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: LruBitmapPool.java */
/* JADX INFO: loaded from: classes2.dex */
public class i implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Bitmap.Config f800a = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<Bitmap.Config> f802c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f805f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f806g;
    private int h;
    private int i;
    private int j;
    private int k;

    i(int i, m mVar, Set<Bitmap.Config> set) {
        this.f803d = i;
        this.f805f = i;
        this.f801b = mVar;
        this.f802c = set;
        this.f804e = new l();
    }

    public i(int i) {
        this(i, e(), f());
    }

    @Override // com.b.a.d.b.a.e
    public synchronized boolean a(Bitmap bitmap) {
        boolean z;
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        if (!bitmap.isMutable() || this.f801b.c(bitmap) > this.f805f || !this.f802c.contains(bitmap.getConfig())) {
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f801b.b(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f802c.contains(bitmap.getConfig()));
            }
            z = false;
        } else {
            int iC = this.f801b.c(bitmap);
            this.f801b.a(bitmap);
            this.f804e.a(bitmap);
            this.j++;
            this.f806g = iC + this.f806g;
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f801b.b(bitmap));
            }
            c();
            b();
            z = true;
        }
        return z;
    }

    private void b() {
        b(this.f805f);
    }

    @Override // com.b.a.d.b.a.e
    public synchronized Bitmap a(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapB;
        bitmapB = b(i, i2, config);
        if (bitmapB != null) {
            bitmapB.eraseColor(0);
        }
        return bitmapB;
    }

    @Override // com.b.a.d.b.a.e
    @TargetApi(12)
    public synchronized Bitmap b(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapA;
        bitmapA = this.f801b.a(i, i2, config != null ? config : f800a);
        if (bitmapA == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Missing bitmap=" + this.f801b.b(i, i2, config));
            }
            this.i++;
        } else {
            this.h++;
            this.f806g -= this.f801b.c(bitmapA);
            this.f804e.b(bitmapA);
            if (Build.VERSION.SDK_INT >= 12) {
                bitmapA.setHasAlpha(true);
            }
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Log.v("LruBitmapPool", "Get bitmap=" + this.f801b.b(i, i2, config));
        }
        c();
        return bitmapA;
    }

    @Override // com.b.a.d.b.a.e
    public void a() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        b(0);
    }

    @Override // com.b.a.d.b.a.e
    @SuppressLint({"InlinedApi"})
    public void a(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i);
        }
        if (i >= 60) {
            a();
        } else if (i >= 40) {
            b(this.f805f / 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
    
        r4.f806g = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
    
        if (android.util.Log.isLoggable("LruBitmapPool", 5) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
    
        android.util.Log.w("LruBitmapPool", "Size mismatch, resetting");
        d();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void b(int r5) {
        /*
            r4 = this;
            monitor-enter(r4)
        L1:
            int r0 = r4.f806g     // Catch: java.lang.Throwable -> L6f
            if (r0 <= r5) goto L26
            com.b.a.d.b.a.m r0 = r4.f801b     // Catch: java.lang.Throwable -> L6f
            android.graphics.Bitmap r0 = r0.a()     // Catch: java.lang.Throwable -> L6f
            if (r0 != 0) goto L28
            java.lang.String r0 = "LruBitmapPool"
            r1 = 5
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto L23
            java.lang.String r0 = "LruBitmapPool"
            java.lang.String r1 = "Size mismatch, resetting"
            android.util.Log.w(r0, r1)     // Catch: java.lang.Throwable -> L6f
            r4.d()     // Catch: java.lang.Throwable -> L6f
        L23:
            r0 = 0
            r4.f806g = r0     // Catch: java.lang.Throwable -> L6f
        L26:
            monitor-exit(r4)
            return
        L28:
            com.b.a.d.b.a.k r1 = r4.f804e     // Catch: java.lang.Throwable -> L6f
            r1.b(r0)     // Catch: java.lang.Throwable -> L6f
            int r1 = r4.f806g     // Catch: java.lang.Throwable -> L6f
            com.b.a.d.b.a.m r2 = r4.f801b     // Catch: java.lang.Throwable -> L6f
            int r2 = r2.c(r0)     // Catch: java.lang.Throwable -> L6f
            int r1 = r1 - r2
            r4.f806g = r1     // Catch: java.lang.Throwable -> L6f
            r0.recycle()     // Catch: java.lang.Throwable -> L6f
            int r1 = r4.k     // Catch: java.lang.Throwable -> L6f
            int r1 = r1 + 1
            r4.k = r1     // Catch: java.lang.Throwable -> L6f
            java.lang.String r1 = "LruBitmapPool"
            r2 = 3
            boolean r1 = android.util.Log.isLoggable(r1, r2)     // Catch: java.lang.Throwable -> L6f
            if (r1 == 0) goto L6b
            java.lang.String r1 = "LruBitmapPool"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6f
            r2.<init>()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r3 = "Evicting bitmap="
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L6f
            com.b.a.d.b.a.m r3 = r4.f801b     // Catch: java.lang.Throwable -> L6f
            java.lang.String r0 = r3.b(r0)     // Catch: java.lang.Throwable -> L6f
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L6f
            android.util.Log.d(r1, r0)     // Catch: java.lang.Throwable -> L6f
        L6b:
            r4.c()     // Catch: java.lang.Throwable -> L6f
            goto L1
        L6f:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.d.b.a.i.b(int):void");
    }

    private void c() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            d();
        }
    }

    private void d() {
        Log.v("LruBitmapPool", "Hits=" + this.h + ", misses=" + this.i + ", puts=" + this.j + ", evictions=" + this.k + ", currentSize=" + this.f806g + ", maxSize=" + this.f805f + "\nStrategy=" + this.f801b);
    }

    private static m e() {
        if (Build.VERSION.SDK_INT >= 19) {
            return new o();
        }
        return new a();
    }

    private static Set<Bitmap.Config> f() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
