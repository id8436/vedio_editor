package c.a.a.a.a.e;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: compiled from: HttpRequest.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g<V> extends k<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Closeable f269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f270b;

    protected g(Closeable closeable, boolean z) {
        this.f269a = closeable;
        this.f270b = z;
    }

    @Override // c.a.a.a.a.e.k
    protected void c() throws IOException {
        if (this.f269a instanceof Flushable) {
            ((Flushable) this.f269a).flush();
        }
        if (this.f270b) {
            try {
                this.f269a.close();
            } catch (IOException e2) {
            }
        } else {
            this.f269a.close();
        }
    }
}
