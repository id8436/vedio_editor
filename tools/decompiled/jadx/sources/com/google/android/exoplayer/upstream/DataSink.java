package com.google.android.exoplayer.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface DataSink {
    void close() throws IOException;

    DataSink open(DataSpec dataSpec) throws IOException;

    void write(byte[] bArr, int i, int i2) throws IOException;
}
