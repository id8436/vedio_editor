package a;

import java.util.concurrent.Executor;

/* JADX INFO: Add missing generic type declarations: [TResult] */
/* JADX INFO: compiled from: Task.java */
/* JADX INFO: loaded from: classes.dex */
class n<TResult> implements j<TResult, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ t f32a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ j f33b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Executor f34c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ g f35d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ l f36e;

    n(l lVar, t tVar, j jVar, Executor executor, g gVar) {
        this.f36e = lVar;
        this.f32a = tVar;
        this.f33b = jVar;
        this.f34c = executor;
        this.f35d = gVar;
    }

    @Override // a.j
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Void a(l<TResult> lVar) {
        l.d(this.f32a, this.f33b, lVar, this.f34c, this.f35d);
        return null;
    }
}
