package com.k.a;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: LruCache.java */
/* JADX INFO: loaded from: classes3.dex */
public class ab implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final LinkedHashMap<String, Bitmap> f3420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3424f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3425g;
    private int h;

    public ab(Context context) {
        this(bm.c(context));
    }

    public ab(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Max size must be positive.");
        }
        this.f3421c = i;
        this.f3420b = new LinkedHashMap<>(0, 0.75f, true);
    }

    @Override // com.k.a.k
    public Bitmap a(String str) {
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            Bitmap bitmap = this.f3420b.get(str);
            if (bitmap != null) {
                this.f3425g++;
                return bitmap;
            }
            this.h++;
            return null;
        }
    }

    @Override // com.k.a.k
    public void a(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        synchronized (this) {
            this.f3423e++;
            this.f3422d += bm.a(bitmap);
            Bitmap bitmapPut = this.f3420b.put(str, bitmap);
            if (bitmapPut != null) {
                this.f3422d -= bm.a(bitmapPut);
            }
        }
        a(this.f3421c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(int r4) {
        /*
            r3 = this;
        L0:
            monitor-enter(r3)
            int r0 = r3.f3422d     // Catch: java.lang.Throwable -> L33
            if (r0 < 0) goto L11
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f3420b     // Catch: java.lang.Throwable -> L33
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L36
            int r0 = r3.f3422d     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L36
        L11:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L33
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L33
            r1.<init>()     // Catch: java.lang.Throwable -> L33
            java.lang.Class r2 = r3.getClass()     // Catch: java.lang.Throwable -> L33
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L33
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L33
            java.lang.String r2 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L33
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L33
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L33
            throw r0     // Catch: java.lang.Throwable -> L33
        L33:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L33
            throw r0
        L36:
            int r0 = r3.f3422d     // Catch: java.lang.Throwable -> L33
            if (r0 <= r4) goto L42
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f3420b     // Catch: java.lang.Throwable -> L33
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L44
        L42:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L33
            return
        L44:
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f3420b     // Catch: java.lang.Throwable -> L33
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L33
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L33
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L33
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L33
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L33
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L33
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L33
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Throwable -> L33
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r2 = r3.f3420b     // Catch: java.lang.Throwable -> L33
            r2.remove(r1)     // Catch: java.lang.Throwable -> L33
            int r1 = r3.f3422d     // Catch: java.lang.Throwable -> L33
            int r0 = com.k.a.bm.a(r0)     // Catch: java.lang.Throwable -> L33
            int r0 = r1 - r0
            r3.f3422d = r0     // Catch: java.lang.Throwable -> L33
            int r0 = r3.f3424f     // Catch: java.lang.Throwable -> L33
            int r0 = r0 + 1
            r3.f3424f = r0     // Catch: java.lang.Throwable -> L33
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L33
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.k.a.ab.a(int):void");
    }

    @Override // com.k.a.k
    public final synchronized int a() {
        return this.f3422d;
    }

    @Override // com.k.a.k
    public final synchronized int b() {
        return this.f3421c;
    }
}
