package d;

import java.io.IOException;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: FormBody.java */
/* JADX INFO: loaded from: classes3.dex */
public final class ad extends az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final an f4502a = an.a("application/x-www-form-urlencoded");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f4503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<String> f4504c;

    ad(List<String> list, List<String> list2) {
        this.f4503b = d.a.c.a(list);
        this.f4504c = d.a.c.a(list2);
    }

    public int a() {
        return this.f4503b.size();
    }

    public String a(int i) {
        return this.f4503b.get(i);
    }

    public String b(int i) {
        return this.f4504c.get(i);
    }

    public String c(int i) {
        return ai.a(b(i), true);
    }

    @Override // d.az
    public an contentType() {
        return f4502a;
    }

    @Override // d.az
    public long contentLength() {
        return a(null, true);
    }

    @Override // d.az
    public void writeTo(e.i iVar) throws IOException {
        a(iVar, false);
    }

    private long a(@Nullable e.i iVar, boolean z) {
        e.f fVarC;
        long jB = 0;
        if (z) {
            fVarC = new e.f();
        } else {
            fVarC = iVar.c();
        }
        int size = this.f4503b.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                fVarC.i(38);
            }
            fVarC.b(this.f4503b.get(i));
            fVarC.i(61);
            fVarC.b(this.f4504c.get(i));
        }
        if (z) {
            jB = fVarC.b();
            fVarC.s();
        }
        return jB;
    }
}
