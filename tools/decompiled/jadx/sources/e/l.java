package e;

import java.io.IOException;

/* JADX INFO: compiled from: ForwardingSink.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class l implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aa f4726a;

    public l(aa aaVar) {
        if (aaVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f4726a = aaVar;
    }

    @Override // e.aa
    public void a_(f fVar, long j) throws IOException {
        this.f4726a.a_(fVar, j);
    }

    @Override // e.aa, java.io.Flushable
    public void flush() throws IOException {
        this.f4726a.flush();
    }

    @Override // e.aa
    public ac a() {
        return this.f4726a.a();
    }

    @Override // e.aa, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4726a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f4726a.toString() + ")";
    }
}
