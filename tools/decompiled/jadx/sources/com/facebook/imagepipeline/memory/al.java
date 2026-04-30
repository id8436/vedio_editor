package com.facebook.imagepipeline.memory;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: PooledByteBufferOutputStream.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class al extends OutputStream {
    public abstract int b();

    public abstract ah c();

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
        } catch (IOException e2) {
            com.facebook.d.d.p.b(e2);
        }
    }
}
