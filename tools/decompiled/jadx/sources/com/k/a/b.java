package com.k.a;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: Action.java */
/* JADX INFO: loaded from: classes3.dex */
class b<M> extends WeakReference<M> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f3501a;

    public b(a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
        super(m, referenceQueue);
        this.f3501a = aVar;
    }
}
