package f;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class ac<T> extends z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<T, d.az> f4771a;

    ac(k<T, d.az> kVar) {
        this.f4771a = kVar;
    }

    @Override // f.z
    void a(at atVar, @Nullable T t) {
        if (t == null) {
            throw new IllegalArgumentException("Body parameter value must not be null.");
        }
        try {
            atVar.a(this.f4771a.a(t));
        } catch (IOException e2) {
            throw new RuntimeException("Unable to convert " + t + " to RequestBody", e2);
        }
    }
}
