package com.b.a.e;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ActivityFragmentLifecycle.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<j> f1115a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1117c;

    a() {
    }

    @Override // com.b.a.e.i
    public void a(j jVar) {
        this.f1115a.add(jVar);
        if (this.f1117c) {
            jVar.onDestroy();
        } else if (this.f1116b) {
            jVar.onStart();
        } else {
            jVar.onStop();
        }
    }

    void a() {
        this.f1116b = true;
        Iterator it = com.b.a.j.h.a(this.f1115a).iterator();
        while (it.hasNext()) {
            ((j) it.next()).onStart();
        }
    }

    void b() {
        this.f1116b = false;
        Iterator it = com.b.a.j.h.a(this.f1115a).iterator();
        while (it.hasNext()) {
            ((j) it.next()).onStop();
        }
    }

    void c() {
        this.f1117c = true;
        Iterator it = com.b.a.j.h.a(this.f1115a).iterator();
        while (it.hasNext()) {
            ((j) it.next()).onDestroy();
        }
    }
}
