package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ByteArrayDataSink implements DataSink {
    private ByteArrayOutputStream stream;

    @Override // com.google.android.exoplayer.upstream.DataSink
    public DataSink open(DataSpec dataSpec) throws IOException {
        if (dataSpec.length == -1) {
            this.stream = new ByteArrayOutputStream();
        } else {
            Assertions.checkArgument(dataSpec.length <= 2147483647L);
            this.stream = new ByteArrayOutputStream((int) dataSpec.length);
        }
        return this;
    }

    @Override // com.google.android.exoplayer.upstream.DataSink
    public void close() throws IOException {
        this.stream.close();
    }

    @Override // com.google.android.exoplayer.upstream.DataSink
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.stream.write(bArr, i, i2);
    }

    public byte[] getData() {
        if (this.stream == null) {
            return null;
        }
        return this.stream.toByteArray();
    }
}
