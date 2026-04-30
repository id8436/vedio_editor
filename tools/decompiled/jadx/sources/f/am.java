package f;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class am<T> extends z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<T, String> f4792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4793b;

    am(k<T, String> kVar, boolean z) {
        this.f4792a = kVar;
        this.f4793b = z;
    }

    @Override // f.z
    void a(at atVar, @Nullable T t) throws IOException {
        if (t != null) {
            atVar.b(this.f4792a.a(t), null, this.f4793b);
        }
    }
}
