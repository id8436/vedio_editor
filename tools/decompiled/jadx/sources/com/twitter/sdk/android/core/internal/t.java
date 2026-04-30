package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.t;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: SessionMonitor.java */
/* JADX INFO: loaded from: classes3.dex */
public class t<T extends com.twitter.sdk.android.core.t> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final w f4090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y f4091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.twitter.sdk.android.core.u<T> f4092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f4093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x f4094e;

    public t(com.twitter.sdk.android.core.u<T> uVar, ExecutorService executorService, x<T> xVar) {
        this(uVar, new y(), executorService, new w(), xVar);
    }

    t(com.twitter.sdk.android.core.u<T> uVar, y yVar, ExecutorService executorService, w wVar, x xVar) {
        this.f4091b = yVar;
        this.f4092c = uVar;
        this.f4093d = executorService;
        this.f4090a = wVar;
        this.f4094e = xVar;
    }

    public void a(a aVar) {
        aVar.a(new u(this));
    }

    public void a() {
        if (this.f4092c.b() != null && this.f4090a.a(this.f4091b.a())) {
            this.f4093d.submit(new v(this));
        }
    }

    protected void b() {
        Iterator<T> it = this.f4092c.d().values().iterator();
        while (it.hasNext()) {
            this.f4094e.a(it.next());
        }
        this.f4090a.b(this.f4091b.a());
    }
}
