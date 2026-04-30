package com.i.a.a.b.a;

import android.graphics.Bitmap;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: LruMemoryCache.java */
/* JADX INFO: loaded from: classes3.dex */
public class b implements com.i.a.a.b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<String, Bitmap> f3237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3239c;

    public b(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f3238b = i;
        this.f3237a = new LinkedHashMap<>(0, 0.75f, true);
    }

    @Override // com.i.a.a.b.b
    public final Bitmap a(String str) {
        Bitmap bitmap;
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            bitmap = this.f3237a.get(str);
        }
        return bitmap;
    }

    @Override // com.i.a.a.b.b
    public final boolean a(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f3239c += b(str, bitmap);
            Bitmap bitmapPut = this.f3237a.put(str, bitmap);
            if (bitmapPut != null) {
                this.f3239c -= b(str, bitmapPut);
            }
        }
        a(this.f3238b);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        return;
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
            int r0 = r3.f3239c     // Catch: java.lang.Throwable -> L33
            if (r0 < 0) goto L11
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f3237a     // Catch: java.lang.Throwable -> L33
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L36
            int r0 = r3.f3239c     // Catch: java.lang.Throwable -> L33
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
            int r0 = r3.f3239c     // Catch: java.lang.Throwable -> L33
            if (r0 <= r4) goto L42
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f3237a     // Catch: java.lang.Throwable -> L33
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L44
        L42:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L33
        L43:
            return
        L44:
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f3237a     // Catch: java.lang.Throwable -> L33
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L33
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L33
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L33
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L33
            if (r0 != 0) goto L58
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L33
            goto L43
        L58:
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L33
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L33
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L33
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Throwable -> L33
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r2 = r3.f3237a     // Catch: java.lang.Throwable -> L33
            r2.remove(r1)     // Catch: java.lang.Throwable -> L33
            int r2 = r3.f3239c     // Catch: java.lang.Throwable -> L33
            int r0 = r3.b(r1, r0)     // Catch: java.lang.Throwable -> L33
            int r0 = r2 - r0
            r3.f3239c = r0     // Catch: java.lang.Throwable -> L33
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L33
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.i.a.a.b.a.b.a(int):void");
    }

    @Override // com.i.a.a.b.b
    public final void b(String str) {
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            Bitmap bitmapRemove = this.f3237a.remove(str);
            if (bitmapRemove != null) {
                this.f3239c -= b(str, bitmapRemove);
            }
        }
    }

    @Override // com.i.a.a.b.b
    public Collection<String> a() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f3237a.keySet());
        }
        return hashSet;
    }

    private int b(String str, Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxSize=%d]", Integer.valueOf(this.f3238b));
    }
}
