package com.b.a.d.b;

import android.os.MessageQueue;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: compiled from: Engine.java */
/* JADX INFO: loaded from: classes2.dex */
class j implements MessageQueue.IdleHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<com.b.a.d.c, WeakReference<s<?>>> f879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<s<?>> f880b;

    public j(Map<com.b.a.d.c, WeakReference<s<?>>> map, ReferenceQueue<s<?>> referenceQueue) {
        this.f879a = map;
        this.f880b = referenceQueue;
    }

    @Override // android.os.MessageQueue.IdleHandler
    public boolean queueIdle() {
        k kVar = (k) this.f880b.poll();
        if (kVar != null) {
            this.f879a.remove(kVar.f881a);
            return true;
        }
        return true;
    }
}
