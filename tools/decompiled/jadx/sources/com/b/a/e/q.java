package com.b.a.e;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: RequestTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<com.b.a.h.c> f1135a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<com.b.a.h.c> f1136b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1137c;

    public void a(com.b.a.h.c cVar) {
        this.f1135a.add(cVar);
        if (!this.f1137c) {
            cVar.b();
        } else {
            this.f1136b.add(cVar);
        }
    }

    public void b(com.b.a.h.c cVar) {
        this.f1135a.remove(cVar);
        this.f1136b.remove(cVar);
    }

    public void a() {
        this.f1137c = true;
        for (com.b.a.h.c cVar : com.b.a.j.h.a(this.f1135a)) {
            if (cVar.f()) {
                cVar.e();
                this.f1136b.add(cVar);
            }
        }
    }

    public void b() {
        this.f1137c = false;
        for (com.b.a.h.c cVar : com.b.a.j.h.a(this.f1135a)) {
            if (!cVar.g() && !cVar.i() && !cVar.f()) {
                cVar.b();
            }
        }
        this.f1136b.clear();
    }

    public void c() {
        Iterator it = com.b.a.j.h.a(this.f1135a).iterator();
        while (it.hasNext()) {
            ((com.b.a.h.c) it.next()).d();
        }
        this.f1136b.clear();
    }

    public void d() {
        for (com.b.a.h.c cVar : com.b.a.j.h.a(this.f1135a)) {
            if (!cVar.g() && !cVar.i()) {
                cVar.e();
                if (!this.f1137c) {
                    cVar.b();
                } else {
                    this.f1136b.add(cVar);
                }
            }
        }
    }
}
