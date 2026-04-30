package e;

import java.io.IOException;

/* JADX INFO: compiled from: ForwardingSource.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class m implements ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ab f4727a;

    public m(ab abVar) {
        if (abVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f4727a = abVar;
    }

    public final ab b() {
        return this.f4727a;
    }

    @Override // e.ab
    public long a(f fVar, long j) throws IOException {
        return this.f4727a.a(fVar, j);
    }

    @Override // e.ab
    public ac a() {
        return this.f4727a.a();
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4727a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f4727a.toString() + ")";
    }
}
