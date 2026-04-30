package com.a.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: CancelHandler.java */
/* JADX INFO: loaded from: classes.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Set<String> f465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ah f466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Collection<s> f468d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Collection<s> f469e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i f470f;

    g(ah ahVar, String[] strArr, i iVar) {
        this.f466b = ahVar;
        this.f467c = strArr;
        this.f470f = iVar;
    }

    void a(x xVar, k kVar) {
        this.f465a = kVar.a(this.f466b, this.f467c);
        j jVar = xVar.f636e;
        jVar.i();
        jVar.a(xVar.f632a.a());
        jVar.a(this.f466b);
        jVar.b(this.f465a);
        jVar.a(this.f467c);
        jVar.a(true);
        jVar.a(2);
        Set<s> setD = xVar.f634c.d(jVar);
        Set<s> setD2 = xVar.f633b.d(jVar);
        for (s sVar : setD) {
            sVar.m();
            this.f468d.add(sVar);
            xVar.f634c.d(sVar);
        }
        for (s sVar2 : setD2) {
            sVar2.m();
            this.f468d.add(sVar2);
            xVar.f633b.d(sVar2);
        }
    }

    void a(x xVar) {
        for (s sVar : this.f468d) {
            try {
                sVar.c(3);
            } catch (Throwable th) {
                com.a.a.a.f.b.a(th, "job's on cancel has thrown an exception. Ignoring...", new Object[0]);
            }
            if (sVar.j().isPersistent()) {
                xVar.f633b.c(sVar);
            }
        }
        if (this.f470f != null) {
            ArrayList arrayList = new ArrayList(this.f468d.size());
            ArrayList arrayList2 = new ArrayList(this.f469e.size());
            Iterator<s> it = this.f468d.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().j());
            }
            Iterator<s> it2 = this.f469e.iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().j());
            }
            xVar.f637f.a(new h(arrayList, arrayList2), this.f470f);
        }
        for (s sVar2 : this.f468d) {
            xVar.f637f.a(sVar2.j(), true, sVar2.u());
        }
    }

    void a(s sVar, int i) {
        if (this.f465a.remove(sVar.a())) {
            if (i == 3) {
                this.f468d.add(sVar);
            } else {
                this.f469e.add(sVar);
            }
        }
    }

    boolean a() {
        return this.f465a.isEmpty();
    }
}
