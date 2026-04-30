package f;

import java.lang.reflect.Type;

/* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
class p implements h<Object, g<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Type f4856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f4857b;

    p(o oVar, Type type) {
        this.f4857b = oVar;
        this.f4856a = type;
    }

    @Override // f.h
    public Type a() {
        return this.f4856a;
    }

    @Override // f.h
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public g<Object> a(g<Object> gVar) {
        return new q(this.f4857b.f4855a, gVar);
    }
}
