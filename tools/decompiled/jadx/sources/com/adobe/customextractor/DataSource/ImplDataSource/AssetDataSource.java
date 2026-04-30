package com.adobe.customextractor.DataSource.ImplDataSource;

import android.content.Context;
import android.content.res.AssetManager;
import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.DataSource.DataSpec;
import com.adobe.customextractor.DataSource.TransferListener;
import com.adobe.customextractor.DataSource.UriDataSource;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class AssetDataSource implements UriDataSource {
    private final AssetManager assetManager;
    private long bytesRemaining;
    private InputStream inputStream;
    private final TransferListener listener;
    private boolean opened;
    private String uriString;

    public final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        this(context, null);
    }

    public AssetDataSource(Context context, TransferListener transferListener) {
        this.assetManager = context.getAssets();
        this.listener = transferListener;
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public long open(DataSpec dataSpec) throws AssetDataSourceException {
        try {
            this.uriString = dataSpec.uri.toString();
            String path = dataSpec.uri.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith(URIUtil.SLASH)) {
                path = path.substring(1);
            }
            this.uriString = dataSpec.uri.toString();
            this.inputStream = this.assetManager.open(path, 1);
            Assertions.checkState(this.inputStream.skip(dataSpec.position) == dataSpec.position);
            this.bytesRemaining = dataSpec.length == -1 ? this.inputStream.available() : dataSpec.length;
            if (this.bytesRemaining < 0) {
                throw new EOFException();
            }
            this.opened = true;
            if (this.listener != null) {
                this.listener.onTransferStart();
            }
            return this.bytesRemaining;
        } catch (IOException e2) {
            throw new AssetDataSourceException(e2);
        }
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public int read(byte[] bArr, int i, int i2) throws AssetDataSourceException {
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int i3 = this.inputStream.read(bArr, i, (int) Math.min(this.bytesRemaining, i2));
            if (i3 > 0) {
                this.bytesRemaining -= (long) i3;
                if (this.listener != null) {
                    this.listener.onBytesTransferred(i3);
                    return i3;
                }
                return i3;
            }
            return i3;
        } catch (IOException e2) {
            throw new AssetDataSourceException(e2);
        }
    }

    @Override // com.adobe.customextractor.DataSource.UriDataSource
    public String getUri() {
        return this.uriString;
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public void close() throws AssetDataSourceException {
        this.uriString = null;
        try {
            if (this.inputStream != null) {
                try {
                    this.inputStream.close();
                } catch (IOException e2) {
                    throw new AssetDataSourceException(e2);
                }
            }
        } finally {
            this.inputStream = null;
            if (this.opened) {
                this.opened = false;
                if (this.listener != null) {
                    this.listener.onTransferEnd();
                }
            }
        }
    }
}
