package com.google.android.exoplayer.upstream.cache;

import android.net.Uri;
import android.util.Log;
import com.google.android.exoplayer.upstream.DataSink;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.FileDataSource;
import com.google.android.exoplayer.upstream.TeeDataSource;
import com.google.android.exoplayer.upstream.cache.CacheDataSink;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class CacheDataSource implements DataSource {
    private static final String TAG = "CacheDataSource";
    private final boolean blockOnCache;
    private long bytesRemaining;
    private final Cache cache;
    private final DataSource cacheReadDataSource;
    private final DataSource cacheWriteDataSource;
    private DataSource currentDataSource;
    private final EventListener eventListener;
    private boolean ignoreCache;
    private final boolean ignoreCacheOnError;
    private String key;
    private CacheSpan lockedSpan;
    private long readPosition;
    private long totalCachedBytesRead;
    private final DataSource upstreamDataSource;
    private Uri uri;

    public interface EventListener {
        void onCachedBytesRead(long j, long j2);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, boolean z, boolean z2) {
        this(cache, dataSource, z, z2, Long.MAX_VALUE);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, boolean z, boolean z2, long j) {
        this(cache, dataSource, new FileDataSource(), new CacheDataSink(cache, j), z, z2, null);
    }

    public CacheDataSource(Cache cache, DataSource dataSource, DataSource dataSource2, DataSink dataSink, boolean z, boolean z2, EventListener eventListener) {
        this.cache = cache;
        this.cacheReadDataSource = dataSource2;
        this.blockOnCache = z;
        this.ignoreCacheOnError = z2;
        this.upstreamDataSource = dataSource;
        if (dataSink != null) {
            this.cacheWriteDataSource = new TeeDataSource(dataSource, dataSink);
        } else {
            this.cacheWriteDataSource = null;
        }
        this.eventListener = eventListener;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        Assertions.checkState(dataSpec.uriIsFullStream);
        try {
            this.uri = dataSpec.uri;
            this.key = dataSpec.key;
            this.readPosition = dataSpec.position;
            this.bytesRemaining = dataSpec.length;
            openNextSource();
            return dataSpec.length;
        } catch (IOException e2) {
            handleBeforeThrow(e2);
            throw e2;
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int i3 = this.currentDataSource.read(bArr, i, i2);
            if (i3 >= 0) {
                if (this.currentDataSource == this.cacheReadDataSource) {
                    this.totalCachedBytesRead += (long) i3;
                }
                this.readPosition += (long) i3;
                if (this.bytesRemaining != -1) {
                    this.bytesRemaining -= (long) i3;
                    return i3;
                }
                return i3;
            }
            closeCurrentSource();
            if (this.bytesRemaining > 0 && this.bytesRemaining != -1) {
                openNextSource();
                return read(bArr, i, i2);
            }
            return i3;
        } catch (IOException e2) {
            handleBeforeThrow(e2);
            throw e2;
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() throws IOException {
        notifyBytesRead();
        try {
            closeCurrentSource();
        } catch (IOException e2) {
            handleBeforeThrow(e2);
            throw e2;
        }
    }

    private void openNextSource() throws IOException {
        DataSpec dataSpec;
        CacheSpan cacheSpanStartReadWriteNonBlocking = null;
        try {
            if (!this.ignoreCache) {
                if (this.bytesRemaining == -1) {
                    Log.w(TAG, "Cache bypassed due to unbounded length.");
                } else if (this.blockOnCache) {
                    cacheSpanStartReadWriteNonBlocking = this.cache.startReadWrite(this.key, this.readPosition);
                } else {
                    cacheSpanStartReadWriteNonBlocking = this.cache.startReadWriteNonBlocking(this.key, this.readPosition);
                }
            }
            if (cacheSpanStartReadWriteNonBlocking == null) {
                this.currentDataSource = this.upstreamDataSource;
                dataSpec = new DataSpec(this.uri, this.readPosition, this.bytesRemaining, this.key);
            } else if (cacheSpanStartReadWriteNonBlocking.isCached) {
                Uri uriFromFile = Uri.fromFile(cacheSpanStartReadWriteNonBlocking.file);
                long j = this.readPosition - cacheSpanStartReadWriteNonBlocking.position;
                dataSpec = new DataSpec(uriFromFile, this.readPosition, Math.min(cacheSpanStartReadWriteNonBlocking.length - j, this.bytesRemaining), this.key, j);
                this.currentDataSource = this.cacheReadDataSource;
            } else {
                this.lockedSpan = cacheSpanStartReadWriteNonBlocking;
                dataSpec = new DataSpec(this.uri, this.readPosition, cacheSpanStartReadWriteNonBlocking.isOpenEnded() ? this.bytesRemaining : Math.min(cacheSpanStartReadWriteNonBlocking.length, this.bytesRemaining), this.key);
                this.currentDataSource = this.cacheWriteDataSource != null ? this.cacheWriteDataSource : this.upstreamDataSource;
            }
            this.currentDataSource.open(dataSpec);
        } catch (InterruptedException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX WARN: Finally extract failed */
    private void closeCurrentSource() throws IOException {
        if (this.currentDataSource != null) {
            try {
                this.currentDataSource.close();
                this.currentDataSource = null;
                if (this.lockedSpan != null) {
                    this.cache.releaseHoleSpan(this.lockedSpan);
                    this.lockedSpan = null;
                }
            } catch (Throwable th) {
                if (this.lockedSpan != null) {
                    this.cache.releaseHoleSpan(this.lockedSpan);
                    this.lockedSpan = null;
                }
                throw th;
            }
        }
    }

    private void handleBeforeThrow(IOException iOException) {
        if (this.ignoreCacheOnError) {
            if (this.currentDataSource == this.cacheReadDataSource || (iOException instanceof CacheDataSink.CacheDataSinkException)) {
                this.ignoreCache = true;
            }
        }
    }

    private void notifyBytesRead() {
        if (this.eventListener != null && this.totalCachedBytesRead > 0) {
            this.eventListener.onCachedBytesRead(this.cache.getCacheSpace(), this.totalCachedBytesRead);
            this.totalCachedBytesRead = 0L;
        }
    }
}
