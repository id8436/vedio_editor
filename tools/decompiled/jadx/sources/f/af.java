package f;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class af<T> extends z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k<T, String> f4778b;

    af(String str, k<T, String> kVar) {
        this.f4777a = (String) bb.a(str, "name == null");
        this.f4778b = kVar;
    }

    @Override // f.z
    void a(at atVar, @Nullable T t) throws IOException {
        String strA;
        if (t != null && (strA = this.f4778b.a(t)) != null) {
            atVar.a(this.f4777a, strA);
        }
    }
}
