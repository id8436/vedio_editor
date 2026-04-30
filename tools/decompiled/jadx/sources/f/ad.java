package f;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class ad<T> extends z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k<T, String> f4773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f4774c;

    ad(String str, k<T, String> kVar, boolean z) {
        this.f4772a = (String) bb.a(str, "name == null");
        this.f4773b = kVar;
        this.f4774c = z;
    }

    @Override // f.z
    void a(at atVar, @Nullable T t) throws IOException {
        String strA;
        if (t != null && (strA = this.f4773b.a(t)) != null) {
            atVar.c(this.f4772a, strA, this.f4774c);
        }
    }
}
