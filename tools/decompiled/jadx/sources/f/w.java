package f;

import d.bf;
import java.io.IOException;

/* JADX INFO: compiled from: OkHttpCall.java */
/* JADX INFO: loaded from: classes3.dex */
final class w extends bf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    IOException f4874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bf f4875b;

    w(bf bfVar) {
        this.f4875b = bfVar;
    }

    @Override // d.bf
    public d.an a() {
        return this.f4875b.a();
    }

    @Override // d.bf
    public long b() {
        return this.f4875b.b();
    }

    @Override // d.bf
    public e.j d() {
        return e.q.a(new x(this, this.f4875b.d()));
    }

    @Override // d.bf, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4875b.close();
    }

    void g() throws IOException {
        if (this.f4874a != null) {
            throw this.f4874a;
        }
    }
}
