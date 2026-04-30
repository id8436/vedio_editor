package c.a.a.a.a.e;

import java.io.IOException;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: HttpRequest.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k<V> implements Callable<V> {
    protected abstract V b() throws IOException, j;

    protected abstract void c() throws IOException;

    protected k() {
    }

    @Override // java.util.concurrent.Callable
    public V call() throws Throwable {
        boolean z = true;
        try {
            try {
                try {
                    V vB = b();
                    try {
                        c();
                        return vB;
                    } catch (IOException e2) {
                        throw new j(e2);
                    }
                } catch (j e3) {
                    throw e3;
                }
            } catch (IOException e4) {
                throw new j(e4);
            } catch (Throwable th) {
                th = th;
                z = false;
                try {
                    c();
                } catch (IOException e5) {
                    if (!z) {
                        throw new j(e5);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            c();
            throw th;
        }
    }
}
