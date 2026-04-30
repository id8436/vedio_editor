package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class k extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f4403a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ b f4404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ j f4405d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    k(j jVar, String str, Object[] objArr, int i, b bVar) {
        super(str, objArr);
        this.f4405d = jVar;
        this.f4403a = i;
        this.f4404c = bVar;
    }

    @Override // d.a.b
    public void b() {
        try {
            this.f4405d.b(this.f4403a, this.f4404c);
        } catch (IOException e2) {
        }
    }
}
