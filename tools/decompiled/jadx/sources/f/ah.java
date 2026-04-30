package f;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class ah<T> extends z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.ag f4780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k<T, d.az> f4781b;

    ah(d.ag agVar, k<T, d.az> kVar) {
        this.f4780a = agVar;
        this.f4781b = kVar;
    }

    @Override // f.z
    void a(at atVar, @Nullable T t) {
        if (t != null) {
            try {
                atVar.a(this.f4780a, this.f4781b.a(t));
            } catch (IOException e2) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e2);
            }
        }
    }
}
