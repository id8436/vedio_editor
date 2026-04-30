package f;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: CallAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    @Nullable
    public abstract h<?, ?> a(Type type, Annotation[] annotationArr, aw awVar);

    protected static Class<?> a(Type type) {
        return bb.a(type);
    }
}
