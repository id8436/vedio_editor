package com.e.a.a.a.a.a;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: BaseItemAnimationManager.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ b f1550b;

    c(b bVar, List list) {
        this.f1550b = bVar;
        this.f1549a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f1549a.iterator();
        while (it.hasNext()) {
            this.f1550b.b((g) it.next());
        }
        this.f1549a.clear();
        this.f1550b.f1547c.remove(this.f1549a);
    }
}
