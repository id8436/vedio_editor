package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class l extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f4406a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ long f4407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ j f4408d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    l(j jVar, String str, Object[] objArr, int i, long j) {
        super(str, objArr);
        this.f4408d = jVar;
        this.f4406a = i;
        this.f4407c = j;
    }

    @Override // d.a.b
    public void b() {
        try {
            this.f4408d.p.a(this.f4406a, this.f4407c);
        } catch (IOException e2) {
        }
    }
}
