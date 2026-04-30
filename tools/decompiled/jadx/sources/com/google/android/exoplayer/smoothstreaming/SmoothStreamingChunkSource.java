package com.google.android.exoplayer.smoothstreaming;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Base64;
import android.util.SparseArray;
import com.google.android.exoplayer.BehindLiveWindowException;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.ChunkSource;
import com.google.android.exoplayer.chunk.ContainerMediaChunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatEvaluator;
import com.google.android.exoplayer.chunk.MediaChunk;
import com.google.android.exoplayer.chunk.parser.Extractor;
import com.google.android.exoplayer.chunk.parser.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer.chunk.parser.mp4.TrackEncryptionBox;
import com.google.android.exoplayer.mp4.Track;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifest;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.ManifestFetcher;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class SmoothStreamingChunkSource implements ChunkSource {
    private static final int INITIALIZATION_VECTOR_SIZE = 8;
    private static final int MINIMUM_MANIFEST_REFRESH_PERIOD_MS = 5000;
    private SmoothStreamingManifest currentManifest;
    private int currentManifestChunkOffset;
    private final DataSource dataSource;
    private final FormatEvaluator.Evaluation evaluation;
    private final SparseArray<FragmentedMp4Extractor> extractors;
    private IOException fatalError;
    private boolean finishedCurrentManifest;
    private final FormatEvaluator formatEvaluator;
    private final SmoothStreamingFormat[] formats;
    private final long liveEdgeLatencyUs;
    private final ManifestFetcher<SmoothStreamingManifest> manifestFetcher;
    private final int maxHeight;
    private final int maxWidth;
    private final Map<UUID, byte[]> psshInfo;
    private final int streamElementIndex;
    private final TrackInfo trackInfo;

    public SmoothStreamingChunkSource(ManifestFetcher<SmoothStreamingManifest> manifestFetcher, int i, int[] iArr, DataSource dataSource, FormatEvaluator formatEvaluator, long j) {
        this(manifestFetcher, manifestFetcher.getManifest(), i, iArr, dataSource, formatEvaluator, j);
    }

    public SmoothStreamingChunkSource(SmoothStreamingManifest smoothStreamingManifest, int i, int[] iArr, DataSource dataSource, FormatEvaluator formatEvaluator) {
        this(null, smoothStreamingManifest, i, iArr, dataSource, formatEvaluator, 0L);
    }

    private SmoothStreamingChunkSource(ManifestFetcher<SmoothStreamingManifest> manifestFetcher, SmoothStreamingManifest smoothStreamingManifest, int i, int[] iArr, DataSource dataSource, FormatEvaluator formatEvaluator, long j) {
        this.manifestFetcher = manifestFetcher;
        this.streamElementIndex = i;
        this.currentManifest = smoothStreamingManifest;
        this.dataSource = dataSource;
        this.formatEvaluator = formatEvaluator;
        this.liveEdgeLatencyUs = 1000 * j;
        SmoothStreamingManifest.StreamElement element = getElement(smoothStreamingManifest);
        this.trackInfo = new TrackInfo(element.tracks[0].mimeType, smoothStreamingManifest.durationUs);
        this.evaluation = new FormatEvaluator.Evaluation();
        TrackEncryptionBox[] trackEncryptionBoxArr = null;
        SmoothStreamingManifest.ProtectionElement protectionElement = smoothStreamingManifest.protectionElement;
        if (protectionElement != null) {
            trackEncryptionBoxArr = new TrackEncryptionBox[]{new TrackEncryptionBox(true, 8, getKeyId(protectionElement.data))};
            this.psshInfo = Collections.singletonMap(protectionElement.uuid, protectionElement.data);
        } else {
            this.psshInfo = null;
        }
        int length = iArr != null ? iArr.length : element.tracks.length;
        this.formats = new SmoothStreamingFormat[length];
        this.extractors = new SparseArray<>();
        int iMax = 0;
        int iMax2 = 0;
        int i2 = 0;
        while (true) {
            int i3 = iMax2;
            int i4 = iMax;
            if (i2 < length) {
                int i5 = iArr != null ? iArr[i2] : i2;
                SmoothStreamingManifest.TrackElement trackElement = element.tracks[i5];
                this.formats[i2] = new SmoothStreamingFormat(String.valueOf(i5), trackElement.mimeType, trackElement.maxWidth, trackElement.maxHeight, trackElement.numChannels, trackElement.sampleRate, trackElement.bitrate, i5);
                iMax = Math.max(i4, trackElement.maxWidth);
                iMax2 = Math.max(i3, trackElement.maxHeight);
                MediaFormat mediaFormat = getMediaFormat(element, i5);
                int i6 = element.type == 1 ? 1986618469 : 1936684398;
                FragmentedMp4Extractor fragmentedMp4Extractor = new FragmentedMp4Extractor(1);
                fragmentedMp4Extractor.setTrack(new Track(i5, i6, element.timescale, smoothStreamingManifest.durationUs, mediaFormat, trackEncryptionBoxArr));
                this.extractors.put(i5, fragmentedMp4Extractor);
                i2++;
            } else {
                this.maxHeight = i3;
                this.maxWidth = i4;
                Arrays.sort(this.formats, new Format.DecreasingBandwidthComparator());
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final void getMaxVideoDimensions(MediaFormat mediaFormat) {
        if (this.trackInfo.mimeType.startsWith("video")) {
            mediaFormat.setMaxVideoDimensions(this.maxWidth, this.maxHeight);
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final TrackInfo getTrackInfo() {
        return this.trackInfo;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void enable() {
        this.fatalError = null;
        if (this.manifestFetcher != null) {
            this.manifestFetcher.enable();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void disable(List<? extends MediaChunk> list) {
        if (this.manifestFetcher != null) {
            this.manifestFetcher.disable();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void continueBuffering(long j) {
        if (this.manifestFetcher != null && this.currentManifest.isLive && this.fatalError == null) {
            SmoothStreamingManifest manifest = this.manifestFetcher.getManifest();
            if (this.currentManifest != manifest && manifest != null) {
                SmoothStreamingManifest.StreamElement element = getElement(this.currentManifest);
                SmoothStreamingManifest.StreamElement element2 = getElement(manifest);
                if (element2.chunkCount == 0) {
                    this.currentManifestChunkOffset = element.chunkCount + this.currentManifestChunkOffset;
                } else if (element.chunkCount > 0) {
                    this.currentManifestChunkOffset = element.getChunkIndex(element2.getStartTimeUs(0)) + this.currentManifestChunkOffset;
                }
                this.currentManifest = manifest;
                this.finishedCurrentManifest = false;
            }
            if (this.finishedCurrentManifest && SystemClock.elapsedRealtime() > this.manifestFetcher.getManifestLoadTimestamp() + 5000) {
                this.manifestFetcher.requestRefresh();
            }
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final void getChunkOperation(List<? extends MediaChunk> list, long j, long j2, ChunkOperationHolder chunkOperationHolder) {
        int chunkIndex;
        if (this.fatalError != null) {
            chunkOperationHolder.chunk = null;
            return;
        }
        this.evaluation.queueSize = list.size();
        this.formatEvaluator.evaluate(list, j2, this.formats, this.evaluation);
        SmoothStreamingFormat smoothStreamingFormat = (SmoothStreamingFormat) this.evaluation.format;
        chunkOperationHolder.queueSize = this.evaluation.queueSize;
        if (smoothStreamingFormat == null) {
            chunkOperationHolder.chunk = null;
            return;
        }
        if (chunkOperationHolder.queueSize != list.size() || chunkOperationHolder.chunk == null || !chunkOperationHolder.chunk.format.id.equals(this.evaluation.format.id)) {
            chunkOperationHolder.chunk = null;
            SmoothStreamingManifest.StreamElement element = getElement(this.currentManifest);
            if (element.chunkCount == 0) {
                this.finishedCurrentManifest = true;
                return;
            }
            if (list.isEmpty()) {
                if (this.currentManifest.isLive) {
                    j = getLiveSeekPosition();
                }
                chunkIndex = element.getChunkIndex(j);
            } else {
                chunkIndex = list.get(chunkOperationHolder.queueSize - 1).nextChunkIndex - this.currentManifestChunkOffset;
            }
            if (this.currentManifest.isLive) {
                if (chunkIndex < 0) {
                    this.fatalError = new BehindLiveWindowException();
                    return;
                } else if (chunkIndex >= element.chunkCount) {
                    this.finishedCurrentManifest = true;
                    return;
                } else if (chunkIndex == element.chunkCount - 1) {
                    this.finishedCurrentManifest = true;
                }
            } else if (chunkIndex == -1) {
                return;
            }
            boolean z = !this.currentManifest.isLive && chunkIndex == element.chunkCount + (-1);
            long startTimeUs = element.getStartTimeUs(chunkIndex);
            chunkOperationHolder.chunk = newMediaChunk(smoothStreamingFormat, element.buildRequestUri(smoothStreamingFormat.trackIndex, chunkIndex), null, this.extractors.get(Integer.parseInt(smoothStreamingFormat.id)), this.psshInfo, this.dataSource, chunkIndex + this.currentManifestChunkOffset, z, startTimeUs, z ? -1L : startTimeUs + element.getChunkDurationUs(chunkIndex), 0);
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public IOException getError() {
        if (this.fatalError != null) {
            return this.fatalError;
        }
        if (this.manifestFetcher != null) {
            return this.manifestFetcher.getError();
        }
        return null;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadError(Chunk chunk, Exception exc) {
    }

    private long getLiveSeekPosition() {
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < this.currentManifest.streamElements.length; i++) {
            SmoothStreamingManifest.StreamElement streamElement = this.currentManifest.streamElements[i];
            if (streamElement.chunkCount > 0) {
                jMax = Math.max(jMax, streamElement.getStartTimeUs(streamElement.chunkCount - 1) + streamElement.getChunkDurationUs(streamElement.chunkCount - 1));
            }
        }
        return jMax - this.liveEdgeLatencyUs;
    }

    private SmoothStreamingManifest.StreamElement getElement(SmoothStreamingManifest smoothStreamingManifest) {
        return smoothStreamingManifest.streamElements[this.streamElementIndex];
    }

    private static MediaFormat getMediaFormat(SmoothStreamingManifest.StreamElement streamElement, int i) {
        List listSingletonList;
        SmoothStreamingManifest.TrackElement trackElement = streamElement.tracks[i];
        String str = trackElement.mimeType;
        if (streamElement.type == 1) {
            MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, -1, trackElement.maxWidth, trackElement.maxHeight, Arrays.asList(trackElement.csd));
            mediaFormatCreateVideoFormat.setMaxVideoDimensions(streamElement.maxWidth, streamElement.maxHeight);
            return mediaFormatCreateVideoFormat;
        }
        if (streamElement.type == 0) {
            if (trackElement.csd != null) {
                listSingletonList = Arrays.asList(trackElement.csd);
            } else {
                listSingletonList = Collections.singletonList(CodecSpecificDataUtil.buildAudioSpecificConfig(trackElement.sampleRate, trackElement.numChannels));
            }
            return MediaFormat.createAudioFormat(str, -1, trackElement.numChannels, trackElement.sampleRate, listSingletonList);
        }
        if (streamElement.type == 2) {
            return MediaFormat.createFormatForMimeType(streamElement.tracks[i].mimeType);
        }
        return null;
    }

    private static MediaChunk newMediaChunk(Format format, Uri uri, String str, Extractor extractor, Map<UUID, byte[]> map, DataSource dataSource, int i, boolean z, long j, long j2, int i2) {
        return new ContainerMediaChunk(dataSource, new DataSpec(uri, 0L, -1L, str), format, i2, j, z ? -1L : j2, z ? -1 : i + 1, extractor, map, false, -j);
    }

    private static byte[] getKeyId(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i += 2) {
            sb.append((char) bArr[i]);
        }
        String string = sb.toString();
        byte[] bArrDecode = Base64.decode(string.substring(string.indexOf("<KID>") + 5, string.indexOf("</KID>")), 0);
        swap(bArrDecode, 0, 3);
        swap(bArrDecode, 1, 2);
        swap(bArrDecode, 4, 5);
        swap(bArrDecode, 6, 7);
        return bArrDecode;
    }

    private static void swap(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i];
        bArr[i] = bArr[i2];
        bArr[i2] = b2;
    }

    final class SmoothStreamingFormat extends Format {
        public final int trackIndex;

        public SmoothStreamingFormat(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5);
            this.trackIndex = i6;
        }
    }
}
