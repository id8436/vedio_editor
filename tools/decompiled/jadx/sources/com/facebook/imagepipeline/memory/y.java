package com.facebook.imagepipeline.memory;

import java.util.LinkedList;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: OOMSoftReferenceBucket.java */
/* JADX INFO: loaded from: classes2.dex */
@NotThreadSafe
class y<V> extends i<V> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedList<com.facebook.d.h.h<V>> f2948d;

    public y(int i, int i2, int i3) {
        super(i, i2, i3);
        this.f2948d = new LinkedList<>();
    }

    @Override // com.facebook.imagepipeline.memory.i
    public V d() {
        com.facebook.d.h.h<V> hVar = (com.facebook.d.h.h) this.f2931c.poll();
        V vA = hVar.a();
        hVar.b();
        this.f2948d.add(hVar);
        return vA;
    }

    @Override // com.facebook.imagepipeline.memory.i
    void b(V v) {
        com.facebook.d.h.h<V> hVarPoll = this.f2948d.poll();
        if (hVarPoll == null) {
            hVarPoll = new com.facebook.d.h.h<>();
        }
        hVarPoll.a(v);
        this.f2931c.add(hVarPoll);
    }
}
