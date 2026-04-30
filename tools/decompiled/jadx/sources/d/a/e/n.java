package d.a.e;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class n extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f4414a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ List f4415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ j f4416d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    n(j jVar, String str, Object[] objArr, int i, List list) {
        super(str, objArr);
        this.f4416d = jVar;
        this.f4414a = i;
        this.f4415c = list;
    }

    @Override // d.a.b
    public void b() {
        if (this.f4416d.i.a(this.f4414a, this.f4415c)) {
            try {
                this.f4416d.p.a(this.f4414a, b.CANCEL);
                synchronized (this.f4416d) {
                    this.f4416d.r.remove(Integer.valueOf(this.f4414a));
                }
            } catch (IOException e2) {
            }
        }
    }
}
