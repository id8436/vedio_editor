package com.facebook.imagepipeline.k;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: BaseProducerContext.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements cm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.l.a f2791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final co f2793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f2794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.facebook.imagepipeline.l.c f2795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f2796f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private com.facebook.imagepipeline.d.c f2797g;

    @GuardedBy("this")
    private boolean h;

    @GuardedBy("this")
    private boolean i = false;

    @GuardedBy("this")
    private final List<cn> j = new ArrayList();

    public f(com.facebook.imagepipeline.l.a aVar, String str, co coVar, Object obj, com.facebook.imagepipeline.l.c cVar, boolean z, boolean z2, com.facebook.imagepipeline.d.c cVar2) {
        this.f2791a = aVar;
        this.f2792b = str;
        this.f2793c = coVar;
        this.f2794d = obj;
        this.f2795e = cVar;
        this.f2796f = z;
        this.f2797g = cVar2;
        this.h = z2;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public com.facebook.imagepipeline.l.a a() {
        return this.f2791a;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public String b() {
        return this.f2792b;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public co c() {
        return this.f2793c;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public Object d() {
        return this.f2794d;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public com.facebook.imagepipeline.l.c e() {
        return this.f2795e;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public synchronized boolean f() {
        return this.f2796f;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public synchronized com.facebook.imagepipeline.d.c g() {
        return this.f2797g;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public synchronized boolean h() {
        return this.h;
    }

    @Override // com.facebook.imagepipeline.k.cm
    public void a(cn cnVar) {
        boolean z = false;
        synchronized (this) {
            this.j.add(cnVar);
            if (this.i) {
                z = true;
            }
        }
        if (z) {
            cnVar.a();
        }
    }

    public void i() {
        a(j());
    }

    @Nullable
    public synchronized List<cn> a(boolean z) {
        ArrayList arrayList;
        if (z == this.f2796f) {
            arrayList = null;
        } else {
            this.f2796f = z;
            arrayList = new ArrayList(this.j);
        }
        return arrayList;
    }

    @Nullable
    public synchronized List<cn> a(com.facebook.imagepipeline.d.c cVar) {
        ArrayList arrayList;
        if (cVar == this.f2797g) {
            arrayList = null;
        } else {
            this.f2797g = cVar;
            arrayList = new ArrayList(this.j);
        }
        return arrayList;
    }

    @Nullable
    public synchronized List<cn> b(boolean z) {
        ArrayList arrayList;
        if (z == this.h) {
            arrayList = null;
        } else {
            this.h = z;
            arrayList = new ArrayList(this.j);
        }
        return arrayList;
    }

    @Nullable
    public synchronized List<cn> j() {
        ArrayList arrayList;
        if (this.i) {
            arrayList = null;
        } else {
            this.i = true;
            arrayList = new ArrayList(this.j);
        }
        return arrayList;
    }

    public static void a(@Nullable List<cn> list) {
        if (list != null) {
            Iterator<cn> it = list.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    public static void b(@Nullable List<cn> list) {
        if (list != null) {
            Iterator<cn> it = list.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    public static void c(@Nullable List<cn> list) {
        if (list != null) {
            Iterator<cn> it = list.iterator();
            while (it.hasNext()) {
                it.next().c();
            }
        }
    }

    public static void d(@Nullable List<cn> list) {
        if (list != null) {
            Iterator<cn> it = list.iterator();
            while (it.hasNext()) {
                it.next().d();
            }
        }
    }
}
