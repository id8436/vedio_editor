package d.a.e;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class o extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f4417a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ List f4418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ boolean f4419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ j f4420e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    o(j jVar, String str, Object[] objArr, int i, List list, boolean z) {
        super(str, objArr);
        this.f4420e = jVar;
        this.f4417a = i;
        this.f4418c = list;
        this.f4419d = z;
    }

    @Override // d.a.b
    public void b() {
        boolean zA = this.f4420e.i.a(this.f4417a, this.f4418c, this.f4419d);
        if (zA) {
            try {
                this.f4420e.p.a(this.f4417a, b.CANCEL);
            } catch (IOException e2) {
                return;
            }
        }
        if (zA || this.f4419d) {
            synchronized (this.f4420e) {
                this.f4420e.r.remove(Integer.valueOf(this.f4417a));
            }
        }
    }
}
