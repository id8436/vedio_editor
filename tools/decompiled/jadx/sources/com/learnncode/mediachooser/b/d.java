package com.learnncode.mediachooser.b;

import android.os.Process;

/* JADX INFO: Add missing generic type declarations: [Params, Result] */
/* JADX INFO: compiled from: MediaAsync.java */
/* JADX INFO: loaded from: classes3.dex */
class d<Params, Result> extends l<Params, Result> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f3689a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(b bVar) {
        super(null);
        this.f3689a = bVar;
    }

    @Override // java.util.concurrent.Callable
    public Result call() throws Exception {
        this.f3689a.k.set(true);
        Process.setThreadPriority(10);
        return (Result) this.f3689a.d(this.f3689a.a((Object[]) this.f3702b));
    }
}
