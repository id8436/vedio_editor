package f;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class z<T> {
    abstract void a(at atVar, @Nullable T t) throws IOException;

    z() {
    }

    final z<Iterable<T>> a() {
        return new aa(this);
    }

    final z<Object> b() {
        return new ab(this);
    }
}
