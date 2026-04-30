package f;

import d.bf;
import java.io.IOException;

/* JADX INFO: compiled from: BuiltInConverters.java */
/* JADX INFO: loaded from: classes3.dex */
final class b implements k<bf, bf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final b f4833a = new b();

    b() {
    }

    @Override // f.k
    public bf a(bf bfVar) throws IOException {
        try {
            return bb.a(bfVar);
        } finally {
            bfVar.close();
        }
    }
}
