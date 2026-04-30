package com.adobe.customextractor.Tracks;

import com.adobe.customextractor.DataSource.DataSource;
import com.adobe.customextractor.Util.Allocate.Allocator;
import com.adobe.customextractor.Util.Media.MediaFormat;
import com.adobe.customextractor.Util.ParsableByteArray;
import com.adobe.customextractor.Util.RollingSampleBuffer;
import com.adobe.customextractor.Util.SampleHolder;
import com.adobe.customextractor.extractor.Input.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class CustomTrackOutput implements TrackOutput {
    private volatile MediaFormat format;
    private final RollingSampleBuffer rollingBuffer;
    private final SampleHolder sampleInfoHolder = new SampleHolder(0);
    private boolean needKeyframe = true;
    private long lastReadTimeUs = Long.MIN_VALUE;
    private long spliceOutTimeUs = Long.MIN_VALUE;
    private volatile long largestParsedTimestampUs = Long.MIN_VALUE;

    public CustomTrackOutput(Allocator allocator) {
        this.rollingBuffer = new RollingSampleBuffer(allocator);
    }

    public void clear() {
        this.rollingBuffer.clear();
        this.needKeyframe = true;
        this.lastReadTimeUs = Long.MIN_VALUE;
        this.spliceOutTimeUs = Long.MIN_VALUE;
        this.largestParsedTimestampUs = Long.MIN_VALUE;
    }

    public int getWriteIndex() {
        return this.rollingBuffer.getWriteIndex();
    }

    public void discardUpstreamSamples(int i) {
        this.rollingBuffer.discardUpstreamSamples(i);
        this.largestParsedTimestampUs = this.rollingBuffer.peekSample(this.sampleInfoHolder) ? this.sampleInfoHolder.timeUs : Long.MIN_VALUE;
    }

    public int getReadIndex() {
        return this.rollingBuffer.getReadIndex();
    }

    public boolean hasFormat() {
        return this.format != null;
    }

    public MediaFormat getFormat() {
        return this.format;
    }

    public long getLargestParsedTimestampUs() {
        return this.largestParsedTimestampUs;
    }

    public boolean isEmpty() {
        return !advanceToEligibleSample();
    }

    public boolean getSample(SampleHolder sampleHolder) {
        if (!advanceToEligibleSample()) {
            return false;
        }
        this.rollingBuffer.readSample(sampleHolder);
        this.needKeyframe = false;
        this.lastReadTimeUs = sampleHolder.timeUs;
        return true;
    }

    public void discardUntil(long j) {
        while (this.rollingBuffer.peekSample(this.sampleInfoHolder) && this.sampleInfoHolder.timeUs < j) {
            this.rollingBuffer.skipSample();
            this.needKeyframe = true;
        }
        this.lastReadTimeUs = Long.MIN_VALUE;
    }

    public boolean skipToKeyframeBefore(long j) {
        return this.rollingBuffer.skipToKeyframeBefore(j);
    }

    public boolean configureSpliceTo(CustomTrackOutput customTrackOutput) {
        long j;
        if (this.spliceOutTimeUs != Long.MIN_VALUE) {
            return true;
        }
        if (this.rollingBuffer.peekSample(this.sampleInfoHolder)) {
            j = this.sampleInfoHolder.timeUs;
        } else {
            j = this.lastReadTimeUs + 1;
        }
        RollingSampleBuffer rollingSampleBuffer = customTrackOutput.rollingBuffer;
        while (rollingSampleBuffer.peekSample(this.sampleInfoHolder) && (this.sampleInfoHolder.timeUs < j || !this.sampleInfoHolder.isSyncFrame())) {
            rollingSampleBuffer.skipSample();
        }
        if (rollingSampleBuffer.peekSample(this.sampleInfoHolder)) {
            this.spliceOutTimeUs = this.sampleInfoHolder.timeUs;
            return true;
        }
        return false;
    }

    private boolean advanceToEligibleSample() {
        boolean zPeekSample = this.rollingBuffer.peekSample(this.sampleInfoHolder);
        if (this.needKeyframe) {
            while (zPeekSample && !this.sampleInfoHolder.isSyncFrame()) {
                this.rollingBuffer.skipSample();
                zPeekSample = this.rollingBuffer.peekSample(this.sampleInfoHolder);
            }
        }
        if (zPeekSample) {
            return this.spliceOutTimeUs == Long.MIN_VALUE || this.sampleInfoHolder.timeUs < this.spliceOutTimeUs;
        }
        return false;
    }

    public int sampleData(DataSource dataSource, int i) throws IOException {
        return this.rollingBuffer.appendData(dataSource, i);
    }

    @Override // com.adobe.customextractor.Tracks.TrackOutput
    public void format(MediaFormat mediaFormat) {
        this.format = mediaFormat;
    }

    @Override // com.adobe.customextractor.Tracks.TrackOutput
    public int sampleData(ExtractorInput extractorInput, int i) throws InterruptedException, IOException {
        return this.rollingBuffer.appendData(extractorInput, i);
    }

    @Override // com.adobe.customextractor.Tracks.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        this.rollingBuffer.appendData(parsableByteArray, i);
    }

    @Override // com.adobe.customextractor.Tracks.TrackOutput
    public void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr) {
        this.largestParsedTimestampUs = Math.max(this.largestParsedTimestampUs, j);
        this.rollingBuffer.commitSample(j, i, (this.rollingBuffer.getWritePosition() - ((long) i2)) - ((long) i3), i2, bArr);
    }
}
