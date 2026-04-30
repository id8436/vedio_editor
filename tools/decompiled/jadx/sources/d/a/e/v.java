package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class v extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f4439a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ u f4440c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    v(u uVar, String str, Object[] objArr, ab abVar) {
        super(str, objArr);
        this.f4440c = uVar;
        this.f4439a = abVar;
    }

    @Override // d.a.b
    public void b() {
        try {
            this.f4440c.f4438c.f4398c.a(this.f4439a);
        } catch (IOException e2) {
            d.a.g.i.b().a(4, "Http2Connection.Listener failure for " + this.f4440c.f4438c.f4400e, e2);
            try {
                this.f4439a.a(b.PROTOCOL_ERROR);
            } catch (IOException e3) {
            }
        }
    }
}
