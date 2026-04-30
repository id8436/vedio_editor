package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class UriDataSource implements DataSource {
    private static final String FILE_URI_SCHEME = "file";
    private DataSource dataSource;
    private final DataSource fileDataSource;
    private final DataSource httpDataSource;

    public UriDataSource(String str, TransferListener transferListener) {
        this(new FileDataSource(transferListener), new HttpDataSource(str, null, transferListener));
    }

    public UriDataSource(DataSource dataSource, DataSource dataSource2) {
        this.fileDataSource = (DataSource) Assertions.checkNotNull(dataSource);
        this.httpDataSource = (DataSource) Assertions.checkNotNull(dataSource2);
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        Assertions.checkState(this.dataSource == null);
        this.dataSource = "file".equals(dataSpec.uri.getScheme()) ? this.fileDataSource : this.httpDataSource;
        return this.dataSource.open(dataSpec);
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.dataSource.read(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() throws IOException {
        if (this.dataSource != null) {
            this.dataSource.close();
            this.dataSource = null;
        }
    }
}
