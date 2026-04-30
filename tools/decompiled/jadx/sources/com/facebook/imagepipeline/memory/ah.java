package com.facebook.imagepipeline.memory;

import java.io.Closeable;

/* JADX INFO: compiled from: PooledByteBuffer.java */
/* JADX INFO: loaded from: classes2.dex */
public interface ah extends Closeable {
    byte a(int i);

    int a();

    void a(int i, byte[] bArr, int i2, int i3);

    boolean b();
}
