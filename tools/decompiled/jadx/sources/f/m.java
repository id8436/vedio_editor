package f;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: DefaultCallAdapterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
final class m extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final i f4852a = new m();

    m() {
    }

    @Override // f.i
    public h<?, ?> a(Type type, Annotation[] annotationArr, aw awVar) {
        if (a(type) != g.class) {
            return null;
        }
        return new n(this, bb.e(type));
    }
}
