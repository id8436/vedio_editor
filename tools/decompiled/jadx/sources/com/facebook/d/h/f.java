package com.facebook.d.h;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: CloseableReference.java */
/* JADX INFO: loaded from: classes2.dex */
class f extends PhantomReference<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("Destructor.class")
    private static f f1958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f1959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("Destructor.class")
    private f f1960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("Destructor.class")
    private f f1961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f1962e;

    public f(a aVar, ReferenceQueue<? super a> referenceQueue) {
        super(aVar, referenceQueue);
        this.f1959b = aVar.f1955c;
        if (f1958a != null) {
            f1958a.f1960c = this;
            this.f1961d = f1958a;
        }
        f1958a = this;
    }

    public void a(boolean z) {
        synchronized (this) {
            if (!this.f1962e) {
                this.f1962e = true;
                synchronized (f.class) {
                    if (this.f1961d != null) {
                        this.f1961d.f1960c = this.f1960c;
                    }
                    if (this.f1960c != null) {
                        this.f1960c.f1961d = this.f1961d;
                    } else {
                        f1958a = this.f1961d;
                    }
                }
                if (!z) {
                    com.facebook.d.e.a.b((Class<?>) a.f1949d, "GCed without closing: %x %x (type = %s)", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f1959b)), this.f1959b.a().getClass().getSimpleName());
                }
                this.f1959b.d();
            }
        }
    }
}
