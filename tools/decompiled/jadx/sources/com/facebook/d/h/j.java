package com.facebook.d.h;

import java.util.IdentityHashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: SharedReference.java */
/* JADX INFO: loaded from: classes2.dex */
public class j<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("itself")
    private static final Map<Object, Integer> f1966a = new IdentityHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private T f1967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f1968c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i<T> f1969d;

    public j(T t, i<T> iVar) {
        this.f1967b = (T) com.facebook.d.d.k.a(t);
        this.f1969d = (i) com.facebook.d.d.k.a(iVar);
        a(t);
    }

    private static void a(Object obj) {
        synchronized (f1966a) {
            Integer num = f1966a.get(obj);
            if (num == null) {
                f1966a.put(obj, 1);
            } else {
                f1966a.put(obj, Integer.valueOf(num.intValue() + 1));
            }
        }
    }

    private static void b(Object obj) {
        synchronized (f1966a) {
            Integer num = f1966a.get(obj);
            if (num == null) {
                com.facebook.d.e.a.c("SharedReference", "No entry in sLiveObjects for value of type %s", obj.getClass());
            } else if (num.intValue() == 1) {
                f1966a.remove(obj);
            } else {
                f1966a.put(obj, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public synchronized T a() {
        return this.f1967b;
    }

    public synchronized boolean b() {
        return this.f1968c > 0;
    }

    public static boolean a(j<?> jVar) {
        return jVar != null && jVar.b();
    }

    public synchronized void c() {
        f();
        this.f1968c++;
    }

    public void d() {
        T t;
        if (e() == 0) {
            synchronized (this) {
                t = this.f1967b;
                this.f1967b = null;
            }
            this.f1969d.a(t);
            b(t);
        }
    }

    private synchronized int e() {
        f();
        com.facebook.d.d.k.a(this.f1968c > 0);
        this.f1968c--;
        return this.f1968c;
    }

    private void f() {
        if (!a((j<?>) this)) {
            throw new k();
        }
    }
}
