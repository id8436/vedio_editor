package f;

import java.lang.reflect.Type;

/* JADX INFO: compiled from: DefaultCallAdapterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
class n implements h<Object, g<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Type f4853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ m f4854b;

    n(m mVar, Type type) {
        this.f4854b = mVar;
        this.f4853a = type;
    }

    @Override // f.h
    public Type a() {
        return this.f4853a;
    }

    @Override // f.h
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public g<Object> a(g<Object> gVar) {
        return gVar;
    }
}
