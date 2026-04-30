package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.NonBlockingInputStream;
import com.google.android.exoplayer.util.Assertions;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class SingleSampleMediaChunk extends MediaChunk {
    public final byte[] headerData;
    private final MediaFormat sampleFormat;

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, long j, long j2, int i2, MediaFormat mediaFormat) {
        this(dataSource, dataSpec, format, i, j, j2, i2, mediaFormat, null);
    }

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, long j, long j2, int i2, MediaFormat mediaFormat, byte[] bArr) {
        super(dataSource, dataSpec, format, i, j, j2, i2);
        this.sampleFormat = mediaFormat;
        this.headerData = bArr;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public boolean prepare() {
        return true;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public boolean sampleAvailable() {
        return isLoadFinished() && !isReadFinished();
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public boolean read(SampleHolder sampleHolder) {
        int iSkip;
        NonBlockingInputStream nonBlockingInputStream = getNonBlockingInputStream();
        Assertions.checkState(nonBlockingInputStream != null);
        if (!sampleAvailable()) {
            return false;
        }
        int iBytesLoaded = (int) bytesLoaded();
        int length = this.headerData != null ? this.headerData.length + iBytesLoaded : iBytesLoaded;
        if (sampleHolder.data == null || sampleHolder.data.capacity() < length) {
            sampleHolder.replaceBuffer(length);
        }
        if (sampleHolder.data != null) {
            if (this.headerData != null) {
                sampleHolder.data.put(this.headerData);
            }
            int i = nonBlockingInputStream.read(sampleHolder.data, iBytesLoaded);
            sampleHolder.size = length;
            iSkip = i;
        } else {
            iSkip = nonBlockingInputStream.skip(iBytesLoaded);
            sampleHolder.size = 0;
        }
        Assertions.checkState(iSkip == iBytesLoaded);
        sampleHolder.timeUs = this.startTimeUs;
        return true;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public void seekToStart() {
        resetReadPosition();
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public boolean seekTo(long j, boolean z) {
        resetReadPosition();
        return true;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public MediaFormat getMediaFormat() {
        return this.sampleFormat;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public Map<UUID, byte[]> getPsshInfo() {
        return null;
    }
}
