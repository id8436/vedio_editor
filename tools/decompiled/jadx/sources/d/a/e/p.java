package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class p extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f4421a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ e.f f4422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ int f4423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ boolean f4424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ j f4425f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    p(j jVar, String str, Object[] objArr, int i, e.f fVar, int i2, boolean z) {
        super(str, objArr);
        this.f4425f = jVar;
        this.f4421a = i;
        this.f4422c = fVar;
        this.f4423d = i2;
        this.f4424e = z;
    }

    @Override // d.a.b
    public void b() {
        try {
            boolean zA = this.f4425f.i.a(this.f4421a, this.f4422c, this.f4423d, this.f4424e);
            if (zA) {
                this.f4425f.p.a(this.f4421a, b.CANCEL);
            }
            if (zA || this.f4424e) {
                synchronized (this.f4425f) {
                    this.f4425f.r.remove(Integer.valueOf(this.f4421a));
                }
            }
        } catch (IOException e2) {
        }
    }
}
