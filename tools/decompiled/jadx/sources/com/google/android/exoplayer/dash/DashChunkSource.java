package com.google.android.exoplayer.dash;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.exoplayer.BehindLiveWindowException;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.ChunkSource;
import com.google.android.exoplayer.chunk.ContainerMediaChunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatEvaluator;
import com.google.android.exoplayer.chunk.MediaChunk;
import com.google.android.exoplayer.chunk.SingleSampleMediaChunk;
import com.google.android.exoplayer.chunk.parser.Extractor;
import com.google.android.exoplayer.chunk.parser.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer.chunk.parser.webm.WebmExtractor;
import com.google.android.exoplayer.dash.mpd.AdaptationSet;
import com.google.android.exoplayer.dash.mpd.ContentProtection;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescription;
import com.google.android.exoplayer.dash.mpd.Period;
import com.google.android.exoplayer.dash.mpd.RangedUri;
import com.google.android.exoplayer.dash.mpd.Representation;
import com.google.android.exoplayer.text.webvtt.WebvttParser;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.NonBlockingInputStream;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.gdata.data.analytics.Engagement;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class DashChunkSource implements ChunkSource {
    public static final int USE_ALL_TRACKS = -1;
    private final int adaptationSetIndex;
    private MediaPresentationDescription currentManifest;
    private final DataSource dataSource;
    private final FormatEvaluator.Evaluation evaluation;
    private final FormatEvaluator evaluator;
    private IOException fatalError;
    private boolean finishedCurrentManifest;
    private final Format[] formats;
    private final StringBuilder headerBuilder;
    private boolean lastChunkWasInitialization;
    private final long liveEdgeLatencyUs;
    private final ManifestFetcher<MediaPresentationDescription> manifestFetcher;
    private final int maxHeight;
    private final int maxWidth;
    private final Map<UUID, byte[]> psshInfo;
    private final HashMap<String, RepresentationHolder> representationHolders;
    private final int[] representationIndices;
    private final TrackInfo trackInfo;

    public class NoAdaptationSetException extends IOException {
        public NoAdaptationSetException(String str) {
            super(str);
        }
    }

    public DashChunkSource(DataSource dataSource, FormatEvaluator formatEvaluator, Representation... representationArr) {
        this(buildManifest(Arrays.asList(representationArr)), 0, null, dataSource, formatEvaluator);
    }

    public DashChunkSource(DataSource dataSource, FormatEvaluator formatEvaluator, List<Representation> list) {
        this(buildManifest(list), 0, null, dataSource, formatEvaluator);
    }

    public DashChunkSource(MediaPresentationDescription mediaPresentationDescription, int i, int[] iArr, DataSource dataSource, FormatEvaluator formatEvaluator) {
        this(null, mediaPresentationDescription, i, iArr, dataSource, formatEvaluator, 0L);
    }

    public DashChunkSource(ManifestFetcher<MediaPresentationDescription> manifestFetcher, int i, int[] iArr, DataSource dataSource, FormatEvaluator formatEvaluator, long j) {
        this(manifestFetcher, manifestFetcher.getManifest(), i, iArr, dataSource, formatEvaluator, j * 1000);
    }

    private DashChunkSource(ManifestFetcher<MediaPresentationDescription> manifestFetcher, MediaPresentationDescription mediaPresentationDescription, int i, int[] iArr, DataSource dataSource, FormatEvaluator formatEvaluator, long j) {
        this.manifestFetcher = manifestFetcher;
        this.currentManifest = mediaPresentationDescription;
        this.adaptationSetIndex = i;
        this.representationIndices = iArr;
        this.dataSource = dataSource;
        this.evaluator = formatEvaluator;
        this.liveEdgeLatencyUs = j;
        this.evaluation = new FormatEvaluator.Evaluation();
        this.headerBuilder = new StringBuilder();
        this.psshInfo = getPsshInfo(this.currentManifest, i);
        Representation[] filteredRepresentations = getFilteredRepresentations(this.currentManifest, i, iArr);
        this.trackInfo = new TrackInfo(filteredRepresentations[0].format.mimeType, filteredRepresentations[0].periodDurationMs == -1 ? -1L : filteredRepresentations[0].periodDurationMs * 1000);
        this.formats = new Format[filteredRepresentations.length];
        this.representationHolders = new HashMap<>();
        int iMax = 0;
        int iMax2 = 0;
        for (int i2 = 0; i2 < filteredRepresentations.length; i2++) {
            this.formats[i2] = filteredRepresentations[i2].format;
            iMax = Math.max(this.formats[i2].width, iMax);
            iMax2 = Math.max(this.formats[i2].height, iMax2);
            this.representationHolders.put(this.formats[i2].id, new RepresentationHolder(filteredRepresentations[i2], mimeTypeIsWebm(this.formats[i2].mimeType) ? new WebmExtractor() : new FragmentedMp4Extractor()));
        }
        this.maxWidth = iMax;
        this.maxHeight = iMax2;
        Arrays.sort(this.formats, new Format.DecreasingBandwidthComparator());
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
        this.evaluator.enable();
        if (this.manifestFetcher != null) {
            this.manifestFetcher.enable();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void disable(List<? extends MediaChunk> list) {
        this.evaluator.disable();
        if (this.manifestFetcher != null) {
            this.manifestFetcher.disable();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void continueBuffering(long j) {
        if (this.manifestFetcher != null && this.currentManifest.dynamic && this.fatalError == null) {
            MediaPresentationDescription manifest = this.manifestFetcher.getManifest();
            if (this.currentManifest != manifest && manifest != null) {
                for (Representation representation : getFilteredRepresentations(manifest, this.adaptationSetIndex, this.representationIndices)) {
                    RepresentationHolder representationHolder = this.representationHolders.get(representation.format.id);
                    DashSegmentIndex dashSegmentIndex = representationHolder.segmentIndex;
                    DashSegmentIndex index = representation.getIndex();
                    int firstSegmentNum = index.getFirstSegmentNum();
                    representationHolder.segmentNumShift = (dashSegmentIndex.getSegmentNum(index.getTimeUs(firstSegmentNum)) - firstSegmentNum) + representationHolder.segmentNumShift;
                    representationHolder.segmentIndex = index;
                }
                this.currentManifest = manifest;
                this.finishedCurrentManifest = false;
            }
            long j2 = this.currentManifest.minUpdatePeriod;
            if (j2 == 0) {
                j2 = 5000;
            }
            if (this.finishedCurrentManifest && SystemClock.elapsedRealtime() > j2 + this.manifestFetcher.getManifestLoadTimestamp()) {
                this.manifestFetcher.requestRefresh();
            }
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final void getChunkOperation(List<? extends MediaChunk> list, long j, long j2, ChunkOperationHolder chunkOperationHolder) {
        int i;
        int segmentNum;
        if (this.fatalError != null) {
            chunkOperationHolder.chunk = null;
            return;
        }
        this.evaluation.queueSize = list.size();
        if (this.evaluation.format == null || !this.lastChunkWasInitialization) {
            this.evaluator.evaluate(list, j2, this.formats, this.evaluation);
        }
        Format format = this.evaluation.format;
        chunkOperationHolder.queueSize = this.evaluation.queueSize;
        if (format == null) {
            chunkOperationHolder.chunk = null;
            return;
        }
        if (chunkOperationHolder.queueSize != list.size() || chunkOperationHolder.chunk == null || !chunkOperationHolder.chunk.format.id.equals(format.id)) {
            RepresentationHolder representationHolder = this.representationHolders.get(format.id);
            Representation representation = representationHolder.representation;
            DashSegmentIndex dashSegmentIndex = representationHolder.segmentIndex;
            Extractor extractor = representationHolder.extractor;
            RangedUri initializationUri = null;
            RangedUri indexUri = null;
            if (extractor.getFormat() == null) {
                initializationUri = representation.getInitializationUri();
            }
            if (dashSegmentIndex == null) {
                indexUri = representation.getIndexUri();
            }
            if (initializationUri != null || indexUri != null) {
                Chunk chunkNewInitializationChunk = newInitializationChunk(initializationUri, indexUri, representation, extractor, this.dataSource, this.evaluation.trigger);
                this.lastChunkWasInitialization = true;
                chunkOperationHolder.chunk = chunkNewInitializationChunk;
                return;
            }
            long jCurrentTimeMillis = 1000 * System.currentTimeMillis();
            int firstSegmentNum = dashSegmentIndex.getFirstSegmentNum();
            int lastSegmentNum = dashSegmentIndex.getLastSegmentNum();
            boolean z = lastSegmentNum == -1;
            if (z) {
                long j3 = jCurrentTimeMillis - (this.currentManifest.availabilityStartTime * 1000);
                if (this.currentManifest.timeShiftBufferDepth != -1) {
                    firstSegmentNum = Math.max(firstSegmentNum, dashSegmentIndex.getSegmentNum(j3 - (this.currentManifest.timeShiftBufferDepth * 1000)));
                }
                lastSegmentNum = dashSegmentIndex.getSegmentNum(j3) - 1;
                i = firstSegmentNum;
            } else {
                i = firstSegmentNum;
            }
            if (list.isEmpty()) {
                if (this.currentManifest.dynamic) {
                    j = getLiveSeekPosition(jCurrentTimeMillis, z, dashSegmentIndex.isExplicit());
                }
                segmentNum = dashSegmentIndex.getSegmentNum(j);
            } else {
                segmentNum = list.get(chunkOperationHolder.queueSize - 1).nextChunkIndex - representationHolder.segmentNumShift;
            }
            if (this.currentManifest.dynamic) {
                if (segmentNum < i) {
                    this.fatalError = new BehindLiveWindowException();
                    return;
                } else if (segmentNum > lastSegmentNum) {
                    this.finishedCurrentManifest = !z;
                    return;
                } else if (!z && segmentNum == lastSegmentNum) {
                    this.finishedCurrentManifest = true;
                }
            }
            if (segmentNum == -1) {
                chunkOperationHolder.chunk = null;
                return;
            }
            Chunk chunkNewMediaChunk = newMediaChunk(representationHolder, this.dataSource, segmentNum, this.evaluation.trigger);
            this.lastChunkWasInitialization = false;
            chunkOperationHolder.chunk = chunkNewMediaChunk;
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

    private boolean mimeTypeIsWebm(String str) {
        return str.startsWith("video/webm") || str.startsWith("audio/webm");
    }

    private Chunk newInitializationChunk(RangedUri rangedUri, RangedUri rangedUri2, Representation representation, Extractor extractor, DataSource dataSource, int i) {
        int i2;
        long j;
        long j2 = 0;
        if (rangedUri != null) {
            i2 = 10;
            RangedUri rangedUriAttemptMerge = rangedUri.attemptMerge(rangedUri2);
            if (rangedUriAttemptMerge == null) {
                j = 0;
            } else {
                i2 = 26;
                if (!extractor.hasRelativeIndexOffsets()) {
                    rangedUri = rangedUriAttemptMerge;
                    j = 0;
                } else {
                    rangedUri = rangedUriAttemptMerge;
                    j = rangedUri2.start + rangedUri2.length;
                }
            }
        } else {
            if (extractor.hasRelativeIndexOffsets()) {
                j2 = rangedUri2.start + rangedUri2.length;
            }
            i2 = 18;
            rangedUri = rangedUri2;
            j = j2;
        }
        return new InitializationLoadable(dataSource, new DataSpec(rangedUri.getUri(), rangedUri.start, rangedUri.length, representation.getCacheKey()), i, representation.format, extractor, i2, j);
    }

    private Chunk newMediaChunk(RepresentationHolder representationHolder, DataSource dataSource, int i, int i2) {
        Representation representation = representationHolder.representation;
        DashSegmentIndex dashSegmentIndex = representationHolder.segmentIndex;
        long timeUs = dashSegmentIndex.getTimeUs(i);
        long durationUs = timeUs + dashSegmentIndex.getDurationUs(i);
        int i3 = !this.currentManifest.dynamic && i == dashSegmentIndex.getLastSegmentNum() ? -1 : representationHolder.segmentNumShift + i + 1;
        RangedUri segmentUrl = dashSegmentIndex.getSegmentUrl(i);
        DataSpec dataSpec = new DataSpec(segmentUrl.getUri(), segmentUrl.start, segmentUrl.length, representation.getCacheKey());
        long j = representation.presentationTimeOffsetUs;
        if (representation.format.mimeType.equals("text/vtt")) {
            if (representationHolder.vttHeaderOffsetUs != j) {
                this.headerBuilder.setLength(0);
                this.headerBuilder.append(WebvttParser.EXO_HEADER).append(Engagement.Comparison.EQ).append(WebvttParser.OFFSET).append(j).append(IOUtils.LINE_SEPARATOR_UNIX);
                representationHolder.vttHeader = this.headerBuilder.toString().getBytes();
                representationHolder.vttHeaderOffsetUs = j;
            }
            return new SingleSampleMediaChunk(dataSource, dataSpec, representation.format, 0, timeUs, durationUs, i3, null, representationHolder.vttHeader);
        }
        return new ContainerMediaChunk(dataSource, dataSpec, representation.format, i2, timeUs, durationUs, i3, representationHolder.extractor, this.psshInfo, false, j);
    }

    private long getLiveSeekPosition(long j, boolean z, boolean z2) {
        long jMin;
        if (z) {
            jMin = j - (this.currentManifest.availabilityStartTime * 1000);
        } else {
            long jMax = Long.MIN_VALUE;
            Iterator<RepresentationHolder> it = this.representationHolders.values().iterator();
            while (true) {
                jMin = jMax;
                if (!it.hasNext()) {
                    break;
                }
                DashSegmentIndex dashSegmentIndex = it.next().segmentIndex;
                int lastSegmentNum = dashSegmentIndex.getLastSegmentNum();
                jMax = Math.max(jMin, dashSegmentIndex.getDurationUs(lastSegmentNum) + dashSegmentIndex.getTimeUs(lastSegmentNum));
            }
            if (!z2) {
                jMin = Math.min(jMin, j - (this.currentManifest.availabilityStartTime * 1000));
            }
        }
        return jMin - this.liveEdgeLatencyUs;
    }

    private static Representation[] getFilteredRepresentations(MediaPresentationDescription mediaPresentationDescription, int i, int[] iArr) {
        List<Representation> list = mediaPresentationDescription.periods.get(0).adaptationSets.get(i).representations;
        if (iArr == null) {
            Representation[] representationArr = new Representation[list.size()];
            list.toArray(representationArr);
            return representationArr;
        }
        Representation[] representationArr2 = new Representation[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            representationArr2[i2] = list.get(iArr[i2]);
        }
        return representationArr2;
    }

    private static Map<UUID, byte[]> getPsshInfo(MediaPresentationDescription mediaPresentationDescription, int i) {
        AdaptationSet adaptationSet = mediaPresentationDescription.periods.get(0).adaptationSets.get(i);
        if (adaptationSet.contentProtections.isEmpty()) {
            return null;
        }
        HashMap map = new HashMap();
        for (ContentProtection contentProtection : adaptationSet.contentProtections) {
            if (contentProtection.uuid != null && contentProtection.data != null) {
                map.put(contentProtection.uuid, contentProtection.data);
            }
        }
        return map.isEmpty() ? null : map;
    }

    private static MediaPresentationDescription buildManifest(List<Representation> list) {
        Representation representation = list.get(0);
        return new MediaPresentationDescription(-1L, representation.periodDurationMs - representation.periodStartMs, -1L, false, -1L, -1L, null, Collections.singletonList(new Period(null, representation.periodStartMs, representation.periodDurationMs, Collections.singletonList(new AdaptationSet(0, -1, list)))));
    }

    class InitializationLoadable extends Chunk {
        private final int expectedExtractorResult;
        private final Extractor extractor;
        private final long indexAnchor;
        private final Uri uri;

        public InitializationLoadable(DataSource dataSource, DataSpec dataSpec, int i, Format format, Extractor extractor, int i2, long j) {
            super(dataSource, dataSpec, format, i);
            this.extractor = extractor;
            this.expectedExtractorResult = i2;
            this.indexAnchor = j;
            this.uri = dataSpec.uri;
        }

        @Override // com.google.android.exoplayer.chunk.Chunk
        protected void consumeStream(NonBlockingInputStream nonBlockingInputStream) throws IOException {
            int i = this.extractor.read(nonBlockingInputStream, null);
            if (i != this.expectedExtractorResult) {
                throw new ParserException("Invalid extractor result. Expected " + this.expectedExtractorResult + ", got " + i);
            }
            if ((i & 16) != 0) {
                ((RepresentationHolder) DashChunkSource.this.representationHolders.get(this.format.id)).segmentIndex = new DashWrappingSegmentIndex(this.extractor.getIndex(), this.uri, this.indexAnchor);
            }
        }
    }

    class RepresentationHolder {
        public final Extractor extractor;
        public final Representation representation;
        public DashSegmentIndex segmentIndex;
        public int segmentNumShift;
        public byte[] vttHeader;
        public long vttHeaderOffsetUs;

        public RepresentationHolder(Representation representation, Extractor extractor) {
            this.representation = representation;
            this.extractor = extractor;
            this.segmentIndex = representation.getIndex();
        }
    }
}
