package com.adobe.customextractor.DataSource;

import android.content.Context;
import android.text.TextUtils;
import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.DataSource.ImplDataSource.AssetDataSource;
import com.adobe.customextractor.DataSource.ImplDataSource.ContentDataSource;
import com.adobe.customextractor.DataSource.ImplDataSource.FileDataSource;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class CustomDataSource implements UriDataSource {
    private static final String SCHEME_ASSET = "asset";
    private static final String SCHEME_CONTENT = "content";
    private static final String SCHEME_FILE = "file";
    private final UriDataSource assetDataSource;
    private final UriDataSource contentDataSource;
    private UriDataSource dataSource;
    private final UriDataSource fileDataSource;

    public CustomDataSource(Context context, String str) {
        this(context, null, str, false);
    }

    public CustomDataSource(Context context, TransferListener transferListener, String str) {
        this(context, transferListener, str, false);
    }

    public CustomDataSource(Context context, TransferListener transferListener, String str, boolean z) {
        this(context, transferListener);
    }

    public CustomDataSource(Context context, TransferListener transferListener) {
        this.fileDataSource = new FileDataSource(transferListener);
        this.assetDataSource = new AssetDataSource(context, transferListener);
        this.contentDataSource = new ContentDataSource(context, transferListener);
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        Assertions.checkState(this.dataSource == null);
        String scheme = dataSpec.uri.getScheme();
        if ("file".equals(scheme) || TextUtils.isEmpty(scheme)) {
            if (dataSpec.uri.getPath().startsWith("/android_asset/")) {
                this.dataSource = this.assetDataSource;
            } else {
                this.dataSource = this.fileDataSource;
            }
        } else if ("asset".equals(scheme)) {
            this.dataSource = this.assetDataSource;
        } else if (SCHEME_CONTENT.equals(scheme)) {
            this.dataSource = this.contentDataSource;
        } else {
            this.dataSource = null;
        }
        return this.dataSource.open(dataSpec);
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.dataSource.read(bArr, i, i2);
    }

    @Override // com.adobe.customextractor.DataSource.UriDataSource
    public String getUri() {
        if (this.dataSource == null) {
            return null;
        }
        return this.dataSource.getUri();
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public void close() throws IOException {
        if (this.dataSource != null) {
            try {
                this.dataSource.close();
            } finally {
                this.dataSource = null;
            }
        }
    }
}
