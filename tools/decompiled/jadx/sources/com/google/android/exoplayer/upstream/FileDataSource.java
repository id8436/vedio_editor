package com.google.android.exoplayer.upstream;

import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes2.dex */
public final class FileDataSource implements DataSource {
    private long bytesRemaining;
    private RandomAccessFile file;
    private final TransferListener listener;
    private boolean opened;

    public class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        this(null);
    }

    public FileDataSource(TransferListener transferListener) {
        this.listener = transferListener;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) throws FileDataSourceException {
        try {
            this.file = new RandomAccessFile(dataSpec.uri.getPath(), "r");
            this.file.seek(dataSpec.position);
            this.bytesRemaining = dataSpec.length == -1 ? this.file.length() - dataSpec.position : dataSpec.length;
            this.opened = true;
            if (this.listener != null) {
                this.listener.onTransferStart();
            }
            return this.bytesRemaining;
        } catch (IOException e2) {
            throw new FileDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int i3 = this.file.read(bArr, i, (int) Math.min(this.bytesRemaining, i2));
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
            throw new FileDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() throws FileDataSourceException {
        try {
            if (this.file != null) {
                try {
                    this.file.close();
                } catch (IOException e2) {
                    throw new FileDataSourceException(e2);
                }
            }
        } finally {
            this.file = null;
            if (this.opened) {
                this.opened = false;
                if (this.listener != null) {
                    this.listener.onTransferEnd();
                }
            }
        }
    }
}
