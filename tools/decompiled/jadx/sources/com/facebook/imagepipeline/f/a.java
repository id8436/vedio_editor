package com.facebook.imagepipeline.f;

import com.facebook.d.d.k;
import com.facebook.imagepipeline.k.cl;
import com.facebook.imagepipeline.k.ct;
import com.facebook.imagepipeline.k.o;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: AbstractProducerToDataSourceAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public abstract class a<T> extends com.facebook.e.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ct f2555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.i.b f2556b;

    protected a(cl<T> clVar, ct ctVar, com.facebook.imagepipeline.i.b bVar) {
        this.f2555a = ctVar;
        this.f2556b = bVar;
        this.f2556b.a(ctVar.a(), this.f2555a.d(), this.f2555a.b(), this.f2555a.f());
        clVar.a(j(), ctVar);
    }

    private o<T> j() {
        return new b(this);
    }

    protected void b(@Nullable T t, boolean z) {
        if (super.a(t, z) && z) {
            this.f2556b.a(this.f2555a.a(), this.f2555a.b(), this.f2555a.f());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Throwable th) {
        if (super.a(th)) {
            this.f2556b.a(this.f2555a.a(), this.f2555a.b(), th, this.f2555a.f());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k() {
        k.b(a());
    }

    @Override // com.facebook.e.a, com.facebook.e.f
    public boolean h() {
        if (!super.h()) {
            return false;
        }
        if (!super.b()) {
            this.f2556b.a(this.f2555a.b());
            this.f2555a.i();
        }
        return true;
    }
}
