package com.google.android.gms.internal;

import com.google.gdata.data.analytics.Engagement;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class zzhp<K, V> {
    private int size;
    private final LinkedHashMap<K, V> zzUj;
    private int zzUk;
    private int zzUl;
    private int zzUm;
    private int zzUn;
    private int zzUo;
    private int zzUp;

    public zzhp(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.zzUk = i;
        this.zzUj = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int zzc(K k, V v) {
        int iSizeOf = sizeOf(k, v);
        if (iSizeOf < 0) {
            throw new IllegalStateException("Negative size: " + k + Engagement.Comparison.EQ + v);
        }
        return iSizeOf;
    }

    protected V create(K k) {
        return null;
    }

    protected void entryRemoved(boolean z, K k, V v, V v2) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final V get(K k) {
        V vPut;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v = this.zzUj.get(k);
            if (v != null) {
                this.zzUo++;
                return v;
            }
            this.zzUp++;
            V vCreate = create(k);
            if (vCreate == null) {
                return null;
            }
            synchronized (this) {
                this.zzUm++;
                vPut = this.zzUj.put(k, vCreate);
                if (vPut != null) {
                    this.zzUj.put(k, vPut);
                } else {
                    this.size += zzc(k, vCreate);
                }
            }
            if (vPut != null) {
                entryRemoved(false, k, vCreate, vPut);
                return vPut;
            }
            trimToSize(this.zzUk);
            return vCreate;
        }
    }

    public final V put(K k, V v) {
        V vPut;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.zzUl++;
            this.size += zzc(k, v);
            vPut = this.zzUj.put(k, v);
            if (vPut != null) {
                this.size -= zzc(k, vPut);
            }
        }
        if (vPut != null) {
            entryRemoved(false, k, vPut, v);
        }
        trimToSize(this.zzUk);
        return vPut;
    }

    public final synchronized int size() {
        return this.size;
    }

    protected int sizeOf(K k, V v) {
        return 1;
    }

    public final synchronized String toString() {
        String str;
        synchronized (this) {
            int i = this.zzUo + this.zzUp;
            str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.zzUk), Integer.valueOf(this.zzUo), Integer.valueOf(this.zzUp), Integer.valueOf(i != 0 ? (this.zzUo * 100) / i : 0));
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.size     // Catch: java.lang.Throwable -> L33
            if (r0 < 0) goto L11
            java.util.LinkedHashMap<K, V> r0 = r4.zzUj     // Catch: java.lang.Throwable -> L33
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L36
            int r0 = r4.size     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L36
        L11:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L33
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L33
            r1.<init>()     // Catch: java.lang.Throwable -> L33
            java.lang.Class r2 = r4.getClass()     // Catch: java.lang.Throwable -> L33
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L33
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L33
            java.lang.String r2 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L33
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L33
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L33
            throw r0     // Catch: java.lang.Throwable -> L33
        L33:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L33
            throw r0
        L36:
            int r0 = r4.size     // Catch: java.lang.Throwable -> L33
            if (r0 <= r5) goto L42
            java.util.LinkedHashMap<K, V> r0 = r4.zzUj     // Catch: java.lang.Throwable -> L33
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L44
        L42:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L33
            return
        L44:
            java.util.LinkedHashMap<K, V> r0 = r4.zzUj     // Catch: java.lang.Throwable -> L33
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L33
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L33
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L33
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L33
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L33
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L33
            java.util.LinkedHashMap<K, V> r2 = r4.zzUj     // Catch: java.lang.Throwable -> L33
            r2.remove(r1)     // Catch: java.lang.Throwable -> L33
            int r2 = r4.size     // Catch: java.lang.Throwable -> L33
            int r3 = r4.zzc(r1, r0)     // Catch: java.lang.Throwable -> L33
            int r2 = r2 - r3
            r4.size = r2     // Catch: java.lang.Throwable -> L33
            int r2 = r4.zzUn     // Catch: java.lang.Throwable -> L33
            int r2 = r2 + 1
            r4.zzUn = r2     // Catch: java.lang.Throwable -> L33
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L33
            r2 = 1
            r3 = 0
            r4.entryRemoved(r2, r1, r0, r3)
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzhp.trimToSize(int):void");
    }
}
