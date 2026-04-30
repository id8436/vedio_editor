package d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: compiled from: Cache.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final d.a.a.i f4632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d.a.a.f f4633b;

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f4633b.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4633b.close();
    }
}
