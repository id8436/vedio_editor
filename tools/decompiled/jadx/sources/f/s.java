package f;

import java.io.IOException;

/* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
class s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ av f4862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ r f4863b;

    s(r rVar, av avVar) {
        this.f4863b = rVar;
        this.f4862a = avVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4863b.f4861b.f4859b.b()) {
            this.f4863b.f4860a.onFailure(this.f4863b.f4861b, new IOException("Canceled"));
        } else {
            this.f4863b.f4860a.onResponse(this.f4863b.f4861b, this.f4862a);
        }
    }
}
