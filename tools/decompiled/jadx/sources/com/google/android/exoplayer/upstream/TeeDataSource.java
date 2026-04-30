package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class TeeDataSource implements DataSource {
    private final DataSink dataSink;
    private final DataSource upstream;

    public TeeDataSource(DataSource dataSource, DataSink dataSink) {
        this.upstream = (DataSource) Assertions.checkNotNull(dataSource);
        this.dataSink = (DataSink) Assertions.checkNotNull(dataSink);
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        long jOpen = this.upstream.open(dataSpec);
        if (dataSpec.length == -1 && jOpen != -1) {
            dataSpec = new DataSpec(dataSpec.uri, dataSpec.absoluteStreamPosition, jOpen, dataSpec.key, dataSpec.position, dataSpec.uriIsFullStream);
        }
        this.dataSink.open(dataSpec);
        return jOpen;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.upstream.read(bArr, i, i2);
        if (i3 > 0) {
            this.dataSink.write(bArr, i, i3);
        }
        return i3;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() throws IOException {
        this.upstream.close();
        this.dataSink.close();
    }
}
