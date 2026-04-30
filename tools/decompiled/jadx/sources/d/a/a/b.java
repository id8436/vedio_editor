package d.a.a;

import e.ab;
import e.ac;
import e.j;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: CacheInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
class b implements ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ j f4190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ c f4191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ e.i f4192d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ a f4193e;

    b(a aVar, j jVar, c cVar, e.i iVar) {
        this.f4193e = aVar;
        this.f4190b = jVar;
        this.f4191c = cVar;
        this.f4192d = iVar;
    }

    @Override // e.ab
    public long a(e.f fVar, long j) throws IOException {
        try {
            long jA = this.f4190b.a(fVar, j);
            if (jA == -1) {
                if (!this.f4189a) {
                    this.f4189a = true;
                    this.f4192d.close();
                }
                return -1L;
            }
            fVar.a(this.f4192d.c(), fVar.b() - jA, jA);
            this.f4192d.v();
            return jA;
        } catch (IOException e2) {
            if (!this.f4189a) {
                this.f4189a = true;
                this.f4191c.b();
            }
            throw e2;
        }
    }

    @Override // e.ab
    public ac a() {
        return this.f4190b.a();
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f4189a && !d.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
            this.f4189a = true;
            this.f4191c.b();
        }
        this.f4190b.close();
    }
}
