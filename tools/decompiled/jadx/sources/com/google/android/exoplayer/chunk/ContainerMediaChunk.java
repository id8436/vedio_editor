package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.chunk.parser.Extractor;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.NonBlockingInputStream;
import com.google.android.exoplayer.util.Assertions;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class ContainerMediaChunk extends MediaChunk {
    private final Extractor extractor;
    private final boolean maybeSelfContained;
    private MediaFormat mediaFormat;
    private boolean prepared;
    private Map<UUID, byte[]> psshInfo;
    private final long sampleOffsetUs;

    @Deprecated
    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, long j, long j2, int i2, Extractor extractor, boolean z, long j3) {
        this(dataSource, dataSpec, format, i, j, j2, i2, extractor, null, z, j3);
    }

    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, long j, long j2, int i2, Extractor extractor, Map<UUID, byte[]> map, boolean z, long j3) {
        super(dataSource, dataSpec, format, i, j, j2, i2);
        this.extractor = extractor;
        this.maybeSelfContained = z;
        this.sampleOffsetUs = j3;
        this.psshInfo = map;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public void seekToStart() {
        this.extractor.seekTo(0L, false);
        resetReadPosition();
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public boolean seekTo(long j, boolean z) {
        boolean zSeekTo = this.extractor.seekTo(this.sampleOffsetUs + j, z);
        if (zSeekTo) {
            resetReadPosition();
        }
        return zSeekTo;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public boolean prepare() throws ParserException {
        if (!this.prepared) {
            if (this.maybeSelfContained) {
                NonBlockingInputStream nonBlockingInputStream = getNonBlockingInputStream();
                Assertions.checkState(nonBlockingInputStream != null);
                this.prepared = (this.extractor.read(nonBlockingInputStream, null) & 32) != 0;
            } else {
                this.prepared = true;
            }
            if (this.prepared) {
                this.mediaFormat = this.extractor.getFormat();
                Map<UUID, byte[]> psshInfo = this.extractor.getPsshInfo();
                if (psshInfo != null) {
                    this.psshInfo = psshInfo;
                }
            }
        }
        return this.prepared;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public boolean sampleAvailable() throws ParserException {
        return (this.extractor.read(getNonBlockingInputStream(), null) & 32) != 0;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public boolean read(SampleHolder sampleHolder) throws ParserException {
        NonBlockingInputStream nonBlockingInputStream = getNonBlockingInputStream();
        Assertions.checkState(nonBlockingInputStream != null);
        boolean z = (this.extractor.read(nonBlockingInputStream, sampleHolder) & 4) != 0;
        if (z) {
            sampleHolder.timeUs -= this.sampleOffsetUs;
        }
        return z;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public MediaFormat getMediaFormat() {
        return this.mediaFormat;
    }

    @Override // com.google.android.exoplayer.chunk.MediaChunk
    public Map<UUID, byte[]> getPsshInfo() {
        return this.psshInfo;
    }
}
