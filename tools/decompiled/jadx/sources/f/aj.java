package f;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class aj<T> extends z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k<T, String> f4785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f4786c;

    aj(String str, k<T, String> kVar, boolean z) {
        this.f4784a = (String) bb.a(str, "name == null");
        this.f4785b = kVar;
        this.f4786c = z;
    }

    @Override // f.z
    void a(at atVar, @Nullable T t) throws IOException {
        if (t == null) {
            throw new IllegalArgumentException("Path parameter \"" + this.f4784a + "\" value must not be null.");
        }
        atVar.a(this.f4784a, this.f4785b.a(t), this.f4786c);
    }
}
