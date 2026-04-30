package com.google.android.exoplayer.source;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.net.Uri;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public final class FrameworkSampleExtractor implements SampleExtractor {
    private final Context context;
    private final FileDescriptor fileDescriptor;
    private final long fileDescriptorLength;
    private final long fileDescriptorOffset;
    private final Map<String, String> headers;
    private final MediaExtractor mediaExtractor;
    private TrackInfo[] trackInfos;
    private final Uri uri;

    public FrameworkSampleExtractor(Context context, Uri uri, Map<String, String> map) {
        Assertions.checkState(Util.SDK_INT >= 16);
        this.context = (Context) Assertions.checkNotNull(context);
        this.uri = (Uri) Assertions.checkNotNull(uri);
        this.headers = map;
        this.fileDescriptor = null;
        this.fileDescriptorOffset = 0L;
        this.fileDescriptorLength = 0L;
        this.mediaExtractor = new MediaExtractor();
    }

    public FrameworkSampleExtractor(FileDescriptor fileDescriptor, long j, long j2) {
        Assertions.checkState(Util.SDK_INT >= 16);
        this.context = null;
        this.uri = null;
        this.headers = null;
        this.fileDescriptor = (FileDescriptor) Assertions.checkNotNull(fileDescriptor);
        this.fileDescriptorOffset = j;
        this.fileDescriptorLength = j2;
        this.mediaExtractor = new MediaExtractor();
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public boolean prepare() throws IOException {
        if (this.context != null) {
            this.mediaExtractor.setDataSource(this.context, this.uri, this.headers);
        } else {
            this.mediaExtractor.setDataSource(this.fileDescriptor, this.fileDescriptorOffset, this.fileDescriptorLength);
        }
        int trackCount = this.mediaExtractor.getTrackCount();
        this.trackInfos = new TrackInfo[trackCount];
        for (int i = 0; i < trackCount; i++) {
            MediaFormat trackFormat = this.mediaExtractor.getTrackFormat(i);
            this.trackInfos[i] = new TrackInfo(trackFormat.getString("mime"), trackFormat.containsKey("durationUs") ? trackFormat.getLong("durationUs") : -1L);
        }
        return true;
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public TrackInfo[] getTrackInfos() {
        return this.trackInfos;
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public void selectTrack(int i) {
        this.mediaExtractor.selectTrack(i);
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public void deselectTrack(int i) {
        this.mediaExtractor.unselectTrack(i);
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public long getBufferedPositionUs() {
        long cachedDuration = this.mediaExtractor.getCachedDuration();
        if (cachedDuration == -1) {
            return -1L;
        }
        long sampleTime = this.mediaExtractor.getSampleTime();
        if (sampleTime == -1) {
            return -3L;
        }
        return sampleTime + cachedDuration;
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public void seekTo(long j) {
        this.mediaExtractor.seekTo(j, 0);
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public void getTrackMediaFormat(int i, MediaFormatHolder mediaFormatHolder) {
        mediaFormatHolder.format = com.google.android.exoplayer.MediaFormat.createFromFrameworkMediaFormatV16(this.mediaExtractor.getTrackFormat(i));
        mediaFormatHolder.drmInitData = Util.SDK_INT >= 18 ? getPsshInfoV18() : null;
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public int readSample(int i, SampleHolder sampleHolder) {
        int sampleTrackIndex = this.mediaExtractor.getSampleTrackIndex();
        if (sampleTrackIndex != i) {
            return sampleTrackIndex < 0 ? -1 : -2;
        }
        if (sampleHolder.data != null) {
            int iPosition = sampleHolder.data.position();
            sampleHolder.size = this.mediaExtractor.readSampleData(sampleHolder.data, iPosition);
            sampleHolder.data.position(iPosition + sampleHolder.size);
        } else {
            sampleHolder.size = 0;
        }
        sampleHolder.timeUs = this.mediaExtractor.getSampleTime();
        sampleHolder.flags = this.mediaExtractor.getSampleFlags();
        if ((sampleHolder.flags & 2) != 0) {
            sampleHolder.cryptoInfo.setFromExtractorV16(this.mediaExtractor);
        }
        this.mediaExtractor.advance();
        return -3;
    }

    @Override // com.google.android.exoplayer.source.SampleExtractor
    public void release() {
        this.mediaExtractor.release();
    }

    @TargetApi(18)
    private Map<UUID, byte[]> getPsshInfoV18() {
        Map<UUID, byte[]> psshInfo = this.mediaExtractor.getPsshInfo();
        if (psshInfo == null || psshInfo.isEmpty()) {
            return null;
        }
        return psshInfo;
    }
}
