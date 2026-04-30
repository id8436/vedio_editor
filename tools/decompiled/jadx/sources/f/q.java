package f;

import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
final class q<T> implements g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f4858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final g<T> f4859b;

    q(Executor executor, g<T> gVar) {
        this.f4858a = executor;
        this.f4859b = gVar;
    }

    @Override // f.g
    public void a(j<T> jVar) {
        bb.a(jVar, "callback == null");
        this.f4859b.a(new r(this, jVar));
    }

    @Override // f.g
    public av<T> a() throws IOException {
        return this.f4859b.a();
    }

    @Override // f.g
    public boolean b() {
        return this.f4859b.b();
    }

    @Override // f.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public g<T> clone() {
        return new q(this.f4858a, this.f4859b.clone());
    }
}
