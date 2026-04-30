package f;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
final class o extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f4855a;

    o(Executor executor) {
        this.f4855a = executor;
    }

    @Override // f.i
    public h<?, ?> a(Type type, Annotation[] annotationArr, aw awVar) {
        if (a(type) != g.class) {
            return null;
        }
        return new p(this, bb.e(type));
    }
}
