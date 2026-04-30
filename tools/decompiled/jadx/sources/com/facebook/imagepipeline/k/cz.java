package com.facebook.imagepipeline.k;

import android.util.Pair;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: ThrottlingProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class cz<T> implements cl<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cl<T> f2769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2770b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f2773e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private final ConcurrentLinkedQueue<Pair<o<T>, cm>> f2772d = new ConcurrentLinkedQueue<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f2771c = 0;

    static /* synthetic */ int b(cz czVar) {
        int i = czVar.f2771c;
        czVar.f2771c = i - 1;
        return i;
    }

    public cz(int i, Executor executor, cl<T> clVar) {
        this.f2770b = i;
        this.f2773e = (Executor) com.facebook.d.d.k.a(executor);
        this.f2769a = (cl) com.facebook.d.d.k.a(clVar);
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<T> oVar, cm cmVar) {
        boolean z;
        cmVar.c().a(cmVar.b(), "ThrottlingProducer");
        synchronized (this) {
            if (this.f2771c >= this.f2770b) {
                this.f2772d.add(Pair.create(oVar, cmVar));
                z = true;
            } else {
                this.f2771c++;
                z = false;
            }
        }
        if (!z) {
            b(oVar, cmVar);
        }
    }

    void b(o<T> oVar, cm cmVar) {
        cmVar.c().a(cmVar.b(), "ThrottlingProducer", (Map<String, String>) null);
        this.f2769a.a(new db(this, oVar), cmVar);
    }
}
