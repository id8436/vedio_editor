package f;

import java.io.IOException;

/* JADX INFO: compiled from: OkHttpCall.java */
/* JADX INFO: loaded from: classes3.dex */
class v implements d.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f4872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ u f4873b;

    v(u uVar, j jVar) {
        this.f4873b = uVar;
        this.f4872a = jVar;
    }

    @Override // d.i
    public void onResponse(d.g gVar, d.bd bdVar) throws IOException {
        try {
            a(this.f4873b.a(bdVar));
        } catch (Throwable th) {
            a(th);
        }
    }

    @Override // d.i
    public void onFailure(d.g gVar, IOException iOException) {
        try {
            this.f4872a.onFailure(this.f4873b, iOException);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(Throwable th) {
        try {
            this.f4872a.onFailure(this.f4873b, th);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private void a(av<T> avVar) {
        try {
            this.f4872a.onResponse(this.f4873b, avVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
