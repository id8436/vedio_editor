package com.google.android.exoplayer.upstream.cache;

import com.google.android.exoplayer.upstream.DataSink;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.Assertions;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class CacheDataSink implements DataSink {
    private final Cache cache;
    private DataSpec dataSpec;
    private long dataSpecBytesWritten;
    private File file;
    private final long maxCacheFileSize;
    private FileOutputStream outputStream;
    private long outputStreamBytesWritten;

    public class CacheDataSinkException extends IOException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public CacheDataSink(Cache cache, long j) {
        this.cache = (Cache) Assertions.checkNotNull(cache);
        this.maxCacheFileSize = j;
    }

    @Override // com.google.android.exoplayer.upstream.DataSink
    public DataSink open(DataSpec dataSpec) throws CacheDataSinkException {
        Assertions.checkState(dataSpec.length != -1);
        try {
            this.dataSpec = dataSpec;
            this.dataSpecBytesWritten = 0L;
            openNextOutputStream();
            return this;
        } catch (FileNotFoundException e2) {
            throw new CacheDataSinkException(e2);
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSink
    public void write(byte[] bArr, int i, int i2) throws CacheDataSinkException {
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.outputStreamBytesWritten == this.maxCacheFileSize) {
                    closeCurrentOutputStream();
                    openNextOutputStream();
                }
                int iMin = (int) Math.min(i2 - i3, this.maxCacheFileSize - this.outputStreamBytesWritten);
                this.outputStream.write(bArr, i + i3, iMin);
                i3 += iMin;
                this.outputStreamBytesWritten += (long) iMin;
                this.dataSpecBytesWritten += (long) iMin;
            } catch (IOException e2) {
                throw new CacheDataSinkException(e2);
            }
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSink
    public void close() throws CacheDataSinkException {
        try {
            closeCurrentOutputStream();
        } catch (IOException e2) {
            throw new CacheDataSinkException(e2);
        }
    }

    private void openNextOutputStream() throws FileNotFoundException {
        this.file = this.cache.startFile(this.dataSpec.key, this.dataSpec.absoluteStreamPosition + this.dataSpecBytesWritten, Math.min(this.dataSpec.length - this.dataSpecBytesWritten, this.maxCacheFileSize));
        this.outputStream = new FileOutputStream(this.file);
        this.outputStreamBytesWritten = 0L;
    }

    private void closeCurrentOutputStream() throws IOException {
        if (this.outputStream != null) {
            this.outputStream.flush();
            this.outputStream.close();
            this.outputStream = null;
            this.cache.commitFile(this.file);
            this.file = null;
        }
    }
}
