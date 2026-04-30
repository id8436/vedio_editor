package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class m extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f4409a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ int f4410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ int f4411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ ai f4412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ j f4413f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    m(j jVar, String str, Object[] objArr, boolean z, int i, int i2, ai aiVar) {
        super(str, objArr);
        this.f4413f = jVar;
        this.f4409a = z;
        this.f4410c = i;
        this.f4411d = i2;
        this.f4412e = aiVar;
    }

    @Override // d.a.b
    public void b() {
        try {
            this.f4413f.b(this.f4409a, this.f4410c, this.f4411d, this.f4412e);
        } catch (IOException e2) {
        }
    }
}
