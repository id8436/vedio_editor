package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class x extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ al f4442a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ u f4443c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    x(u uVar, String str, Object[] objArr, al alVar) {
        super(str, objArr);
        this.f4443c = uVar;
        this.f4442a = alVar;
    }

    @Override // d.a.b
    public void b() {
        try {
            this.f4443c.f4438c.p.a(this.f4442a);
        } catch (IOException e2) {
        }
    }
}
