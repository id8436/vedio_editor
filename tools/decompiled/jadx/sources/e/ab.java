package e;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: compiled from: Source.java */
/* JADX INFO: loaded from: classes3.dex */
public interface ab extends Closeable {
    long a(f fVar, long j) throws IOException;

    ac a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;
}
