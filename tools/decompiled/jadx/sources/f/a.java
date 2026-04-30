package f;

import d.bf;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: BuiltInConverters.java */
/* JADX INFO: loaded from: classes3.dex */
final class a extends l {
    a() {
    }

    @Override // f.l
    public k<bf, ?> a(Type type, Annotation[] annotationArr, aw awVar) {
        if (type == bf.class) {
            if (bb.a(annotationArr, (Class<? extends Annotation>) f.b.w.class)) {
                return d.f4849a;
            }
            return b.f4833a;
        }
        if (type == Void.class) {
            return f.f4851a;
        }
        return null;
    }

    @Override // f.l
    public k<?, d.az> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, aw awVar) {
        if (d.az.class.isAssignableFrom(bb.a(type))) {
            return c.f4848a;
        }
        return null;
    }
}
