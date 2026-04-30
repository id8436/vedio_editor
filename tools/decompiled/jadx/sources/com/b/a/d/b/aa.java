package com.b.a.d.b;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: ResourceRecycler.java */
/* JADX INFO: loaded from: classes2.dex */
class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f819b = new Handler(Looper.getMainLooper(), new ac());

    aa() {
    }

    public void a(z<?> zVar) {
        com.b.a.j.h.a();
        if (this.f818a) {
            this.f819b.obtainMessage(1, zVar).sendToTarget();
            return;
        }
        this.f818a = true;
        zVar.d();
        this.f818a = false;
    }
}
