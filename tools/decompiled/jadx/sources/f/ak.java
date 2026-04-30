package f;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class ak<T> extends z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k<T, String> f4788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f4789c;

    ak(String str, k<T, String> kVar, boolean z) {
        this.f4787a = (String) bb.a(str, "name == null");
        this.f4788b = kVar;
        this.f4789c = z;
    }

    @Override // f.z
    void a(at atVar, @Nullable T t) throws IOException {
        String strA;
        if (t != null && (strA = this.f4788b.a(t)) != null) {
            atVar.b(this.f4787a, strA, this.f4789c);
        }
    }
}
