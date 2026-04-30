package com.facebook.imagepipeline.memory;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: PooledByteBufferFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public interface aj {
    ah b(InputStream inputStream) throws IOException;

    ah b(InputStream inputStream, int i) throws IOException;

    ah b(byte[] bArr);

    al b();

    al b(int i);
}
