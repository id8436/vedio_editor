package com.google.android.exoplayer.chunk.parser.webm;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.chunk.parser.Extractor;
import com.google.android.exoplayer.chunk.parser.SegmentIndex;
import com.google.android.exoplayer.upstream.NonBlockingInputStream;
import com.google.android.exoplayer.util.LongArray;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class WebmExtractor implements Extractor {
    private static final String CODEC_ID_OPUS = "A_OPUS";
    private static final String CODEC_ID_VORBIS = "A_VORBIS";
    private static final String CODEC_ID_VP9 = "V_VP9";
    private static final String DOC_TYPE_WEBM = "webm";
    private static final int ID_AUDIO = 225;
    private static final int ID_BLOCK = 161;
    private static final int ID_BLOCK_GROUP = 160;
    private static final int ID_CHANNELS = 159;
    private static final int ID_CLUSTER = 524531317;
    private static final int ID_CODEC_DELAY = 22186;
    private static final int ID_CODEC_ID = 134;
    private static final int ID_CODEC_PRIVATE = 25506;
    private static final int ID_CUES = 475249515;
    private static final int ID_CUE_CLUSTER_POSITION = 241;
    private static final int ID_CUE_POINT = 187;
    private static final int ID_CUE_TIME = 179;
    private static final int ID_CUE_TRACK_POSITIONS = 183;
    private static final int ID_DOC_TYPE = 17026;
    private static final int ID_DOC_TYPE_READ_VERSION = 17029;
    private static final int ID_DURATION = 17545;
    private static final int ID_EBML = 440786851;
    private static final int ID_EBML_READ_VERSION = 17143;
    private static final int ID_INFO = 357149030;
    private static final int ID_PIXEL_HEIGHT = 186;
    private static final int ID_PIXEL_WIDTH = 176;
    private static final int ID_SAMPLING_FREQUENCY = 181;
    private static final int ID_SEEK_PRE_ROLL = 22203;
    private static final int ID_SEGMENT = 408125543;
    private static final int ID_SIMPLE_BLOCK = 163;
    private static final int ID_TIMECODE_SCALE = 2807729;
    private static final int ID_TIME_CODE = 231;
    private static final int ID_TRACKS = 374648427;
    private static final int ID_TRACK_ENTRY = 174;
    private static final int ID_VIDEO = 224;
    private static final int LACING_EBML = 3;
    private static final int LACING_FIXED = 2;
    private static final int LACING_NONE = 0;
    private static final int LACING_XIPH = 1;
    private static final int OPUS_MAX_INPUT_SIZE = 5760;
    private static final int READ_TERMINATING_RESULTS = 39;
    private static final int UNKNOWN = -1;
    private static final int VORBIS_MAX_INPUT_SIZE = 8192;
    private int channelCount;
    private long clusterTimecodeUs;
    private long codecDelayNs;
    private String codecId;
    private byte[] codecPrivate;
    private LongArray cueClusterPositions;
    private LongArray cueTimesUs;
    private SegmentIndex cues;
    private long cuesSizeBytes;
    private long durationUs;
    private MediaFormat format;
    private int pixelHeight;
    private int pixelWidth;
    private int readResults;
    private final EbmlReader reader;
    private SampleHolder sampleHolder;
    private int sampleRate;
    private long seekPreRollNs;
    private boolean seenAudioTrack;
    private long segmentEndOffsetBytes;
    private long segmentStartOffsetBytes;
    private final byte[] simpleBlockTimecodeAndFlags;
    private long simpleBlockTimecodeUs;
    private long timecodeScale;

    public WebmExtractor() {
        this(new DefaultEbmlReader());
    }

    WebmExtractor(EbmlReader ebmlReader) {
        this.simpleBlockTimecodeAndFlags = new byte[3];
        this.segmentStartOffsetBytes = -1L;
        this.segmentEndOffsetBytes = -1L;
        this.timecodeScale = 1000000L;
        this.durationUs = -1L;
        this.pixelWidth = -1;
        this.pixelHeight = -1;
        this.channelCount = -1;
        this.sampleRate = -1;
        this.cuesSizeBytes = -1L;
        this.clusterTimecodeUs = -1L;
        this.simpleBlockTimecodeUs = -1L;
        this.reader = ebmlReader;
        this.reader.setEventHandler(new InnerEbmlEventHandler());
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public int read(NonBlockingInputStream nonBlockingInputStream, SampleHolder sampleHolder) throws ParserException {
        this.sampleHolder = sampleHolder;
        this.readResults = 0;
        while ((this.readResults & 39) == 0) {
            int i = this.reader.read(nonBlockingInputStream);
            if (i == 1) {
                this.readResults |= 1;
            } else if (i == 2) {
                this.readResults |= 2;
            }
        }
        this.sampleHolder = null;
        return this.readResults;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public boolean seekTo(long j, boolean z) {
        int iBinarySearch;
        if (z && this.cues != null && this.clusterTimecodeUs != -1 && this.simpleBlockTimecodeUs != -1 && j >= this.simpleBlockTimecodeUs && (iBinarySearch = Arrays.binarySearch(this.cues.timesUs, this.clusterTimecodeUs)) >= 0) {
            if (j < this.cues.durationsUs[iBinarySearch] + this.clusterTimecodeUs) {
                return false;
            }
        }
        this.clusterTimecodeUs = -1L;
        this.simpleBlockTimecodeUs = -1L;
        this.reader.reset();
        return true;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public SegmentIndex getIndex() {
        return this.cues;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public boolean hasRelativeIndexOffsets() {
        return false;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public MediaFormat getFormat() {
        return this.format;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public long getDurationUs() {
        if (this.durationUs == -1) {
            return -1L;
        }
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public Map<UUID, byte[]> getPsshInfo() {
        return null;
    }

    int getElementType(int i) {
        switch (i) {
            case ID_CODEC_ID /* 134 */:
            case ID_DOC_TYPE /* 17026 */:
                return 3;
            case ID_CHANNELS /* 159 */:
            case ID_PIXEL_WIDTH /* 176 */:
            case ID_CUE_TIME /* 179 */:
            case ID_PIXEL_HEIGHT /* 186 */:
            case ID_TIME_CODE /* 231 */:
            case ID_CUE_CLUSTER_POSITION /* 241 */:
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
            case ID_EBML_READ_VERSION /* 17143 */:
            case ID_CODEC_DELAY /* 22186 */:
            case ID_SEEK_PRE_ROLL /* 22203 */:
            case ID_TIMECODE_SCALE /* 2807729 */:
                return 2;
            case ID_BLOCK_GROUP /* 160 */:
            case ID_TRACK_ENTRY /* 174 */:
            case ID_CUE_TRACK_POSITIONS /* 183 */:
            case ID_CUE_POINT /* 187 */:
            case ID_VIDEO /* 224 */:
            case ID_AUDIO /* 225 */:
            case ID_INFO /* 357149030 */:
            case ID_TRACKS /* 374648427 */:
            case ID_SEGMENT /* 408125543 */:
            case ID_EBML /* 440786851 */:
            case ID_CUES /* 475249515 */:
            case ID_CLUSTER /* 524531317 */:
                return 1;
            case ID_BLOCK /* 161 */:
            case ID_SIMPLE_BLOCK /* 163 */:
            case ID_CODEC_PRIVATE /* 25506 */:
                return 4;
            case ID_SAMPLING_FREQUENCY /* 181 */:
            case ID_DURATION /* 17545 */:
                return 5;
            default:
                return 0;
        }
    }

    boolean onMasterElementStart(int i, long j, int i2, long j2) throws ParserException {
        switch (i) {
            case ID_SEGMENT /* 408125543 */:
                if (this.segmentStartOffsetBytes != -1 || this.segmentEndOffsetBytes != -1) {
                    throw new ParserException("Multiple Segment elements not supported");
                }
                this.segmentStartOffsetBytes = ((long) i2) + j;
                this.segmentEndOffsetBytes = ((long) i2) + j + j2;
                return true;
            case ID_CUES /* 475249515 */:
                this.cuesSizeBytes = ((long) i2) + j2;
                this.cueTimesUs = new LongArray();
                this.cueClusterPositions = new LongArray();
                return true;
            default:
                return true;
        }
    }

    boolean onMasterElementEnd(int i) throws ParserException {
        switch (i) {
            case ID_TRACK_ENTRY /* 174 */:
                if (!this.seenAudioTrack) {
                    return true;
                }
                buildAudioFormat();
                return true;
            case ID_VIDEO /* 224 */:
                buildVideoFormat();
                return true;
            case ID_AUDIO /* 225 */:
                this.seenAudioTrack = true;
                return true;
            case ID_CUES /* 475249515 */:
                buildCues();
                return false;
            default:
                return true;
        }
    }

    boolean onIntegerElement(int i, long j) throws ParserException {
        switch (i) {
            case ID_CHANNELS /* 159 */:
                this.channelCount = (int) j;
                return true;
            case ID_PIXEL_WIDTH /* 176 */:
                this.pixelWidth = (int) j;
                return true;
            case ID_CUE_TIME /* 179 */:
                this.cueTimesUs.add(scaleTimecodeToUs(j));
                return true;
            case ID_PIXEL_HEIGHT /* 186 */:
                this.pixelHeight = (int) j;
                return true;
            case ID_TIME_CODE /* 231 */:
                this.clusterTimecodeUs = scaleTimecodeToUs(j);
                return true;
            case ID_CUE_CLUSTER_POSITION /* 241 */:
                this.cueClusterPositions.add(j);
                return true;
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
                if (j < 1 || j > 2) {
                    throw new ParserException("DocTypeReadVersion " + j + " not supported");
                }
                return true;
            case ID_EBML_READ_VERSION /* 17143 */:
                if (j != 1) {
                    throw new ParserException("EBMLReadVersion " + j + " not supported");
                }
                return true;
            case ID_CODEC_DELAY /* 22186 */:
                this.codecDelayNs = j;
                return true;
            case ID_SEEK_PRE_ROLL /* 22203 */:
                this.seekPreRollNs = j;
                return true;
            case ID_TIMECODE_SCALE /* 2807729 */:
                this.timecodeScale = j;
                return true;
            default:
                return true;
        }
    }

    boolean onFloatElement(int i, double d2) {
        switch (i) {
            case ID_SAMPLING_FREQUENCY /* 181 */:
                this.sampleRate = (int) d2;
                break;
            case ID_DURATION /* 17545 */:
                this.durationUs = scaleTimecodeToUs((long) d2);
                break;
        }
        return true;
    }

    boolean onStringElement(int i, String str) throws ParserException {
        switch (i) {
            case ID_CODEC_ID /* 134 */:
                if (!isCodecSupported(str)) {
                    throw new ParserException("CodecID " + str + " not supported");
                }
                this.codecId = str;
                return true;
            case ID_DOC_TYPE /* 17026 */:
                if (!DOC_TYPE_WEBM.equals(str)) {
                    throw new ParserException("DocType " + str + " not supported");
                }
                return true;
            default:
                return true;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    boolean onBinaryElement(int i, long j, int i2, int i3, NonBlockingInputStream nonBlockingInputStream) throws ParserException {
        switch (i) {
            case ID_BLOCK /* 161 */:
            case ID_SIMPLE_BLOCK /* 163 */:
                if (this.sampleHolder == null) {
                    this.readResults |= 32;
                    return false;
                }
                this.reader.readVarint(nonBlockingInputStream);
                this.reader.readBytes(nonBlockingInputStream, this.simpleBlockTimecodeAndFlags, 3);
                long jScaleTimecodeToUs = scaleTimecodeToUs((this.simpleBlockTimecodeAndFlags[0] << 8) | (this.simpleBlockTimecodeAndFlags[1] & UnsignedBytes.MAX_VALUE));
                boolean z = i == ID_BLOCK || (this.simpleBlockTimecodeAndFlags[2] & UnsignedBytes.MAX_POWER_OF_TWO) == 128;
                boolean z2 = (this.simpleBlockTimecodeAndFlags[2] & 8) == 8;
                int i4 = (this.simpleBlockTimecodeAndFlags[2] & 6) >> 1;
                switch (i4) {
                    case 0:
                        long j2 = ((long) i2) + j + ((long) i3);
                        this.simpleBlockTimecodeUs = this.clusterTimecodeUs + jScaleTimecodeToUs;
                        this.sampleHolder.flags = z ? 1 : 0;
                        this.sampleHolder.decodeOnly = z2;
                        this.sampleHolder.timeUs = jScaleTimecodeToUs + this.clusterTimecodeUs;
                        this.sampleHolder.size = (int) (j2 - this.reader.getBytesRead());
                        if (this.sampleHolder.data == null || this.sampleHolder.data.capacity() < this.sampleHolder.size) {
                            this.sampleHolder.replaceBuffer(this.sampleHolder.size);
                        }
                        ByteBuffer byteBuffer = this.sampleHolder.data;
                        if (byteBuffer == null) {
                            this.reader.skipBytes(nonBlockingInputStream, this.sampleHolder.size);
                            this.sampleHolder.size = 0;
                        } else {
                            this.reader.readBytes(nonBlockingInputStream, byteBuffer, this.sampleHolder.size);
                        }
                        this.readResults |= 4;
                        return true;
                    default:
                        throw new ParserException("Lacing mode " + i4 + " not supported");
                }
            case ID_CODEC_PRIVATE /* 25506 */:
                this.codecPrivate = new byte[i3];
                this.reader.readBytes(nonBlockingInputStream, this.codecPrivate, i3);
                return true;
            default:
                return true;
        }
    }

    private long scaleTimecodeToUs(long j) {
        return TimeUnit.NANOSECONDS.toMicros(this.timecodeScale * j);
    }

    private boolean isCodecSupported(String str) {
        return CODEC_ID_VP9.equals(str) || CODEC_ID_OPUS.equals(str) || CODEC_ID_VORBIS.equals(str);
    }

    private void buildVideoFormat() throws ParserException {
        if (this.pixelWidth != -1 && this.pixelHeight != -1 && (this.format == null || this.format.width != this.pixelWidth || this.format.height != this.pixelHeight)) {
            this.format = MediaFormat.createVideoFormat("video/x-vnd.on2.vp9", -1, this.pixelWidth, this.pixelHeight, null);
            this.readResults |= 8;
        } else if (this.format == null) {
            throw new ParserException("Unable to build format");
        }
    }

    private void buildAudioFormat() throws ParserException {
        if (this.channelCount != -1 && this.sampleRate != -1 && (this.format == null || this.format.channelCount != this.channelCount || this.format.sampleRate != this.sampleRate)) {
            if (CODEC_ID_VORBIS.equals(this.codecId)) {
                this.format = MediaFormat.createAudioFormat("audio/vorbis", 8192, this.channelCount, this.sampleRate, parseVorbisCodecPrivate());
            } else if (CODEC_ID_OPUS.equals(this.codecId)) {
                ArrayList arrayList = new ArrayList(3);
                arrayList.add(this.codecPrivate);
                arrayList.add(ByteBuffer.allocate(64).putLong(this.codecDelayNs).array());
                arrayList.add(ByteBuffer.allocate(64).putLong(this.seekPreRollNs).array());
                this.format = MediaFormat.createAudioFormat("audio/opus", OPUS_MAX_INPUT_SIZE, this.channelCount, this.sampleRate, arrayList);
            }
            this.readResults |= 8;
            return;
        }
        if (this.format == null) {
            throw new ParserException("Unable to build format");
        }
    }

    private void buildCues() throws ParserException {
        if (this.segmentStartOffsetBytes == -1) {
            throw new ParserException("Segment start/end offsets unknown");
        }
        if (this.durationUs == -1) {
            throw new ParserException("Duration unknown");
        }
        if (this.cuesSizeBytes == -1) {
            throw new ParserException("Cues size unknown");
        }
        if (this.cueTimesUs == null || this.cueClusterPositions == null || this.cueTimesUs.size() == 0 || this.cueTimesUs.size() != this.cueClusterPositions.size()) {
            throw new ParserException("Invalid/missing cue points");
        }
        int size = this.cueTimesUs.size();
        int[] iArr = new int[size];
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        long[] jArr3 = new long[size];
        for (int i = 0; i < size; i++) {
            jArr3[i] = this.cueTimesUs.get(i);
            jArr[i] = this.segmentStartOffsetBytes + this.cueClusterPositions.get(i);
        }
        for (int i2 = 0; i2 < size - 1; i2++) {
            iArr[i2] = (int) (jArr[i2 + 1] - jArr[i2]);
            jArr2[i2] = jArr3[i2 + 1] - jArr3[i2];
        }
        iArr[size - 1] = (int) (this.segmentEndOffsetBytes - jArr[size - 1]);
        jArr2[size - 1] = this.durationUs - jArr3[size - 1];
        this.cues = new SegmentIndex((int) this.cuesSizeBytes, iArr, jArr, jArr2, jArr3);
        this.cueTimesUs = null;
        this.cueClusterPositions = null;
        this.readResults |= 16;
    }

    private ArrayList<byte[]> parseVorbisCodecPrivate() throws ParserException {
        int i = 0;
        try {
            if (this.codecPrivate[0] != 2) {
                throw new ParserException("Error parsing vorbis codec private");
            }
            int i2 = 0;
            int i3 = 1;
            while (this.codecPrivate[i3] == -1) {
                i3++;
                i2 += 255;
            }
            int i4 = i3 + 1;
            int i5 = i2 + this.codecPrivate[i3];
            while (this.codecPrivate[i4] == -1) {
                i += 255;
                i4++;
            }
            int i6 = i4 + 1;
            int i7 = i + this.codecPrivate[i4];
            if (this.codecPrivate[i6] != 1) {
                throw new ParserException("Error parsing vorbis codec private");
            }
            byte[] bArr = new byte[i5];
            System.arraycopy(this.codecPrivate, i6, bArr, 0, i5);
            int i8 = i5 + i6;
            if (this.codecPrivate[i8] != 3) {
                throw new ParserException("Error parsing vorbis codec private");
            }
            int i9 = i7 + i8;
            if (this.codecPrivate[i9] != 5) {
                throw new ParserException("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[this.codecPrivate.length - i9];
            System.arraycopy(this.codecPrivate, i9, bArr2, 0, this.codecPrivate.length - i9);
            ArrayList<byte[]> arrayList = new ArrayList<>(2);
            arrayList.add(bArr);
            arrayList.add(bArr2);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new ParserException("Error parsing vorbis codec private");
        }
    }

    final class InnerEbmlEventHandler implements EbmlEventHandler {
        private InnerEbmlEventHandler() {
        }

        @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlEventHandler
        public int getElementType(int i) {
            return WebmExtractor.this.getElementType(i);
        }

        @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlEventHandler
        public void onMasterElementStart(int i, long j, int i2, long j2) throws ParserException {
            WebmExtractor.this.onMasterElementStart(i, j, i2, j2);
        }

        @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlEventHandler
        public void onMasterElementEnd(int i) throws ParserException {
            WebmExtractor.this.onMasterElementEnd(i);
        }

        @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlEventHandler
        public void onIntegerElement(int i, long j) throws ParserException {
            WebmExtractor.this.onIntegerElement(i, j);
        }

        @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlEventHandler
        public void onFloatElement(int i, double d2) {
            WebmExtractor.this.onFloatElement(i, d2);
        }

        @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlEventHandler
        public void onStringElement(int i, String str) throws ParserException {
            WebmExtractor.this.onStringElement(i, str);
        }

        @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlEventHandler
        public boolean onBinaryElement(int i, long j, int i2, int i3, NonBlockingInputStream nonBlockingInputStream) throws ParserException {
            return WebmExtractor.this.onBinaryElement(i, j, i2, i3, nonBlockingInputStream);
        }
    }
}
