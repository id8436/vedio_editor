package e;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: compiled from: Sink.java */
/* JADX INFO: loaded from: classes3.dex */
public interface aa extends Closeable, Flushable {
    ac a();

    void a_(f fVar, long j) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;
}
