package com.google.common.io;

import com.google.common.annotations.Beta;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public interface ByteProcessor<T> {
    T getResult();

    boolean processBytes(byte[] bArr, int i, int i2) throws IOException;
}
