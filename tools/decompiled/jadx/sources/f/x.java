package f;

import java.io.IOException;

/* JADX INFO: compiled from: OkHttpCall.java */
/* JADX INFO: loaded from: classes3.dex */
class x extends e.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f4876a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    x(w wVar, e.ab abVar) {
        super(abVar);
        this.f4876a = wVar;
    }

    @Override // e.m, e.ab
    public long a(e.f fVar, long j) throws IOException {
        try {
            return super.a(fVar, j);
        } catch (IOException e2) {
            this.f4876a.f4874a = e2;
            throw e2;
        }
    }
}
