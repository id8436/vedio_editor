package a;

import java.util.concurrent.Executor;

/* JADX INFO: Add missing generic type declarations: [TResult] */
/* JADX INFO: compiled from: Task.java */
/* JADX INFO: loaded from: classes.dex */
class m<TResult> implements j<TResult, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ t f27a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ j f28b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Executor f29c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ g f30d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ l f31e;

    m(l lVar, t tVar, j jVar, Executor executor, g gVar) {
        this.f31e = lVar;
        this.f27a = tVar;
        this.f28b = jVar;
        this.f29c = executor;
        this.f30d = gVar;
    }

    @Override // a.j
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Void a(l<TResult> lVar) {
        l.c(this.f27a, this.f28b, lVar, this.f29c, this.f30d);
        return null;
    }
}
