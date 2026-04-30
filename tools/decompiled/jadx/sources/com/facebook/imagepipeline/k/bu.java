package com.facebook.imagepipeline.k;

import android.util.Pair;
import com.facebook.imagepipeline.k.br;
import java.util.List;

/* JADX INFO: compiled from: MultiplexProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class bu extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Pair f2706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ br.bt f2707b;

    bu(br.bt btVar, Pair pair) {
        this.f2707b = btVar;
        this.f2706a = pair;
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void a() {
        boolean zRemove;
        List listF;
        List list;
        f fVar;
        List listD = null;
        synchronized (this.f2707b) {
            zRemove = this.f2707b.f2701c.remove(this.f2706a);
            if (!zRemove) {
                listF = null;
                list = null;
                fVar = null;
            } else if (this.f2707b.f2701c.isEmpty()) {
                list = null;
                fVar = this.f2707b.f2704f;
                listF = null;
            } else {
                List listB = this.f2707b.b();
                listF = this.f2707b.f();
                list = listB;
                fVar = null;
                listD = this.f2707b.d();
            }
        }
        f.b((List<cn>) list);
        f.d(listF);
        f.c(listD);
        if (fVar != null) {
            fVar.i();
        }
        if (zRemove) {
            ((o) this.f2706a.first).b();
        }
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void b() {
        f.b((List<cn>) this.f2707b.b());
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void c() {
        f.c(this.f2707b.d());
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void d() {
        f.d(this.f2707b.f());
    }
}
