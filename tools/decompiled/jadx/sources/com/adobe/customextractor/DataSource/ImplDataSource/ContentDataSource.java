package com.adobe.customextractor.DataSource.ImplDataSource;

import android.content.ContentResolver;
import android.content.Context;
import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.DataSource.DataSpec;
import com.adobe.customextractor.DataSource.TransferListener;
import com.adobe.customextractor.DataSource.UriDataSource;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class ContentDataSource implements UriDataSource {
    private long bytesRemaining;
    private InputStream inputStream;
    private final TransferListener listener;
    private boolean opened;
    private final ContentResolver resolver;
    private String uriString;

    public class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        this(context, null);
    }

    public ContentDataSource(Context context, TransferListener transferListener) {
        this.resolver = context.getContentResolver();
        this.listener = transferListener;
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public long open(DataSpec dataSpec) throws ContentDataSourceException {
        try {
            this.uriString = dataSpec.uri.toString();
            this.inputStream = new FileInputStream(this.resolver.openAssetFileDescriptor(dataSpec.uri, "r").getFileDescriptor());
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
            throw new ContentDataSourceException(e2);
        }
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public int read(byte[] bArr, int i, int i2) throws ContentDataSourceException {
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
            throw new ContentDataSourceException(e2);
        }
    }

    @Override // com.adobe.customextractor.DataSource.UriDataSource
    public String getUri() {
        return this.uriString;
    }

    @Override // com.adobe.customextractor.DataSource.DataSource
    public void close() throws ContentDataSourceException {
        this.uriString = null;
        try {
            if (this.inputStream != null) {
                try {
                    this.inputStream.close();
                } catch (IOException e2) {
                    throw new ContentDataSourceException(e2);
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
