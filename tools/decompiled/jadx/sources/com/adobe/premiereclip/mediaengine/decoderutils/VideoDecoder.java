package com.adobe.premiereclip.mediaengine.decoderutils;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.net.Uri;
import android.util.Log;
import com.adobe.customextractor.ClipSampleSource;
import com.adobe.customextractor.Util.Media.MediaFormat;
import com.adobe.customextractor.Util.Media.MediaFormatHolder;
import com.adobe.customextractor.Util.SampleHolder;
import com.adobe.premiereclip.mediaengine.decoderutils.MediaCodecUtil;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VideoDecoder extends MediaDecoder {
    protected static boolean FULL_CAPABILITY = true;
    private static final int MAX_HEIGHT = 720;
    private static final int MIN_HEIGHT = 360;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    protected static final int SOURCE_STATE_NOT_READY = 0;
    protected static final int SOURCE_STATE_READY = 1;
    protected static final int SOURCE_STATE_READY_READ_MAY_FAIL = 2;
    private static final String TAG = "CustomVideoDecoder";
    protected MediaCodec codec;
    private boolean codecIsAdaptive;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private Context context;
    private List<Long> decodeOnlyPresentationTimestamps;
    protected MediaFormat format;
    private MediaFormatHolder formatHolder;
    protected ByteBuffer[] inputBuffers;
    protected int inputIndex;
    private boolean inputStreamEnded;
    private MediaCodec.BufferInfo outputBufferInfo;
    protected ByteBuffer[] outputBuffers;
    protected int outputIndex;
    private boolean outputStreamEnded;
    private SampleHolder sampleHolder;
    private ClipSampleSource sampleSource;
    private int sourceState;
    private int trackIndex;
    private boolean waitingForFirstSyncFrame;

    public class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final String decoderName;
        public final String diagnosticInfo;

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable th, int i) {
            super("Decoder init failed: [" + i + "], " + mediaFormat, th);
            this.decoderName = null;
            this.diagnosticInfo = buildCustomDiagnosticInfo(i);
        }

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable th, String str) {
            super("Decoder init failed: " + str + ", " + mediaFormat, th);
            this.decoderName = str;
            this.diagnosticInfo = Util.SDK_INT >= 21 ? getDiagnosticInfoV21(th) : null;
        }

        @TargetApi(21)
        private static String getDiagnosticInfoV21(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        private static String buildCustomDiagnosticInfo(int i) {
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }
    }

    protected VideoDecoder(Context context, String str, int i, int i2) throws ExoPlaybackException {
        super(str, i, i2);
        this.context = context;
        this.sourceUri = Uri.fromFile(new File(str));
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    protected void onSurfaceSet() throws MediaCodecUtil.DecoderQueryException, ExoPlaybackException {
        releaseCodec();
        initCodec();
    }

    private void initCodec() throws MediaCodecUtil.DecoderQueryException, ExoPlaybackException {
        try {
            checkForDiscontinuity();
            if (this.format == null) {
                readFormat();
            }
            if (shouldInitCodec()) {
                maybeInitCodec();
            }
        } catch (IOException e2) {
            throw new ExoPlaybackException(e2);
        }
    }

    private boolean shouldInitCodec() {
        return this.codec == null && this.format != null;
    }

    private void configureCodec(MediaCodec mediaCodec, android.media.MediaFormat mediaFormat, String str) throws Exception {
        int integer = mediaFormat.getInteger("width");
        int integer2 = mediaFormat.getInteger("height");
        if (str.equals("video/avc") && !FULL_CAPABILITY) {
            if (integer2 > integer) {
                while (integer >= 720) {
                    integer2 >>= 1;
                    integer >>= 1;
                }
            } else {
                while (integer2 >= 720) {
                    integer2 >>= 1;
                    integer >>= 1;
                }
            }
            mediaFormat.setInteger("width", integer);
            mediaFormat.setInteger("height", integer2);
            mediaFormat.setInteger("max-input-size", 0);
        }
        try {
            Log.i(TAG, "Configure codec: " + integer + "x" + integer2);
            mediaCodec.configure(mediaFormat, this.mediaSurface.getSurface(), (MediaCrypto) null, 0);
        } catch (Exception e2) {
            int integer3 = mediaFormat.getInteger("width");
            int integer4 = mediaFormat.getInteger("height");
            if ((integer3 > integer4 ? integer4 : integer3) > 360) {
                mediaFormat.setInteger("width", integer3 / 2);
                mediaFormat.setInteger("height", integer4 / 2);
                configureCodec(mediaCodec, mediaFormat, str);
                return;
            }
            throw new Exception(e2);
        }
    }

    private void maybeInitCodec() throws MediaCodecUtil.DecoderQueryException, ExoPlaybackException {
        maybeInitCodec(false);
    }

    private void maybeInitCodec(boolean z) throws MediaCodecUtil.DecoderQueryException, ExoPlaybackException {
        String str;
        MediaCodecUtil.DecoderInfo decoderInfo;
        if (shouldInitCodec()) {
            Log.i("VideoDecoder", "maybeinit " + this.clipIndex);
            String str2 = this.format.mimeType;
            if (z) {
                try {
                    decoderInfo = MediaCodecUtil.getDecoderInfo(str2, false, z);
                } catch (MediaCodecUtil.DecoderQueryException e2) {
                    Log.i(TAG, "Decoder query exc");
                    notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e2, -49998));
                    decoderInfo = null;
                }
                if (decoderInfo == null) {
                    notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, (Throwable) null, -49999));
                }
                String str3 = decoderInfo.name;
                Log.i("Decoder Init", str3);
                this.codecIsAdaptive = decoderInfo.adaptive;
                str = str3;
            } else {
                this.codecIsAdaptive = true;
                str = "";
            }
            try {
                android.media.MediaFormat frameworkMediaFormatV16 = this.format.getFrameworkMediaFormatV16();
                if (z) {
                    frameworkMediaFormatV16.setInteger("width", this.format.width);
                    frameworkMediaFormatV16.setInteger("height", this.format.height);
                    this.codec = MediaCodec.createByCodecName(str);
                } else {
                    this.codec = MediaCodec.createDecoderByType(str2);
                }
                configureCodec(this.codec, frameworkMediaFormatV16, str2);
                this.codec.start();
                this.inputBuffers = this.codec.getInputBuffers();
                this.outputBuffers = this.codec.getOutputBuffers();
            } catch (Exception e3) {
                if (z || !FULL_CAPABILITY) {
                    notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e3, str));
                } else {
                    e3.printStackTrace();
                    Log.i(TAG, "Fallback to software video decoder");
                    releaseCodec();
                    maybeInitCodec(true);
                    return;
                }
            }
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.waitingForFirstSyncFrame = true;
            Log.i("Decoder Init", "Init success ");
        }
    }

    private void notifyAndThrowDecoderInitError(DecoderInitializationException decoderInitializationException) throws ExoPlaybackException {
        throw new ExoPlaybackException(decoderInitializationException);
    }

    private boolean handlesMimeType(String str) {
        return MimeTypes.isVideo(str);
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    public void onEnabled(long j) throws ExoPlaybackException {
        this.sampleSource = new ClipSampleSource(this.context, this.sourceUri, 1);
        try {
            this.sampleSource.prepare();
            this.trackIndex = -1;
            int i = 0;
            while (true) {
                if (i >= this.sampleSource.getTrackCount()) {
                    break;
                }
                if (!handlesMimeType(this.sampleSource.getNativeTrackFormat(i).getString("mime"))) {
                    i++;
                } else {
                    this.trackIndex = i;
                    break;
                }
            }
            if (this.trackIndex != -1) {
                this.sourceDuration = this.sampleSource.getTrackInfo(this.trackIndex).durationUs;
                this.sampleHolder = new SampleHolder(0);
                this.formatHolder = new MediaFormatHolder();
                this.decodeOnlyPresentationTimestamps = new ArrayList();
                this.outputBufferInfo = new MediaCodec.BufferInfo();
                this.sampleSource.enable(this.trackIndex, j);
                this.sourceState = 0;
                this.inputStreamEnded = false;
                this.outputStreamEnded = false;
                this.outputIndex = -1;
                return;
            }
            Log.e(TAG, "Could not find the video track");
        } catch (IOException e2) {
            throw new ExoPlaybackException(e2);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    public void onDisabled() throws ExoPlaybackException {
        this.format = null;
        try {
            releaseCodec();
        } finally {
            this.sampleSource.disable(this.trackIndex);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    public void seekToInternal(long j) throws ExoPlaybackException {
        this.sampleSource.seekToUs(j);
        this.sourceState = 0;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.outputIndex = -1;
    }

    private void readFormat() throws MediaCodecUtil.DecoderQueryException, ExoPlaybackException, IOException {
        if (this.sampleSource.readData(this.trackIndex, this.currentTimeStampUs, this.formatHolder, this.sampleHolder, false) == -4) {
            onInputFormatChanged(this.formatHolder);
        }
    }

    private void checkForDiscontinuity() throws ExoPlaybackException, IOException {
        if (this.codec != null && this.sampleSource.readData(this.trackIndex, this.currentTimeStampUs, this.formatHolder, this.sampleHolder, true) == -5) {
            flushCodec();
        }
    }

    private boolean feedInputBuffer(boolean z, long j) throws MediaCodecUtil.DecoderQueryException, ExoPlaybackException, IOException {
        Log.i(TAG, "FeedData");
        if (this.inputStreamEnded) {
            return false;
        }
        if (this.inputIndex < 0) {
            MediaCodec mediaCodec = this.codec;
            if (!z) {
                j = 0;
            }
            this.inputIndex = mediaCodec.dequeueInputBuffer(j);
            if (this.inputIndex < 0) {
                return false;
            }
            this.sampleHolder.data = this.inputBuffers[this.inputIndex];
            this.sampleHolder.data.clear();
        }
        if (this.codecReconfigurationState == 1) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.format.initializationData.size()) {
                    break;
                }
                this.sampleHolder.data.put(this.format.initializationData.get(i2));
                i = i2 + 1;
            }
            this.codecReconfigurationState = 2;
        }
        int data = this.sampleSource.readData(this.trackIndex, this.currentTimeStampUs, this.formatHolder, this.sampleHolder, false);
        if (z && this.sourceState == 1 && data == -2) {
            this.sourceState = 2;
        }
        if (data == -2) {
            Log.i(TAG, "Nothing read");
            return false;
        }
        if (data == -5) {
            Log.i(TAG, "Discont read");
            flushCodec();
            return true;
        }
        if (data == -4) {
            Log.i(TAG, "Format read");
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.data.clear();
                this.codecReconfigurationState = 1;
            }
            onInputFormatChanged(this.formatHolder);
            return true;
        }
        if (data == -1) {
            Log.i(TAG, "end of stream");
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.data.clear();
                this.codecReconfigurationState = 1;
            }
            this.inputStreamEnded = true;
            try {
                this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                this.inputIndex = -1;
                return false;
            } catch (MediaCodec.CryptoException e2) {
                throw new ExoPlaybackException(e2);
            }
        }
        if (this.waitingForFirstSyncFrame) {
            Log.i(TAG, "WaitingForSyncFrame");
            if ((this.sampleHolder.flags & 1) == 0) {
                this.sampleHolder.data.clear();
                if (this.codecReconfigurationState == 2) {
                    this.codecReconfigurationState = 1;
                }
                return true;
            }
            Log.i(TAG, "Sync frame found");
            this.waitingForFirstSyncFrame = false;
        }
        try {
            int iPosition = this.sampleHolder.data.position();
            long j2 = this.sampleHolder.timeUs;
            Log.i(TAG, "FeedData:sampleRead " + j2);
            if (this.sampleHolder.decodeOnly) {
                this.decodeOnlyPresentationTimestamps.add(Long.valueOf(j2));
            }
            this.codec.queueInputBuffer(this.inputIndex, 0, iPosition, j2, 0);
            this.inputIndex = -1;
            this.codecReconfigurationState = 0;
            return true;
        } catch (MediaCodec.CryptoException e3) {
            throw new ExoPlaybackException(e3);
        }
    }

    private boolean feedMultipleInputBuffer(long j) throws ExoPlaybackException {
        try {
            if (!feedInputBuffer(true, j)) {
                return false;
            }
            while (feedInputBuffer(false, 0L) && !isReleased() && !this.newFrameRequest) {
            }
            return true;
        } catch (IOException e2) {
            throw new ExoPlaybackException(e2);
        }
    }

    private int getDecodeOnlyIndex(long j) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i = 0; i < size; i++) {
            if (this.decodeOnlyPresentationTimestamps.get(i).longValue() == j) {
                return i;
            }
        }
        return -1;
    }

    private boolean getNextOutputBuffer(long j) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return false;
        }
        int iDequeueOutputBuffer = this.codec.dequeueOutputBuffer(this.outputBufferInfo, j);
        if (this.outputIndex == iDequeueOutputBuffer) {
            return this.outputIndex >= 0;
        }
        this.outputIndex = iDequeueOutputBuffer;
        if (this.outputIndex == -2) {
            onOutputFormatChanged(this.codec.getOutputFormat());
            this.outputIndex = -1;
            return getNextOutputBuffer(0L);
        }
        if (this.outputIndex == -3) {
            this.outputBuffers = this.codec.getOutputBuffers();
            this.outputIndex = -1;
            return getNextOutputBuffer(0L);
        }
        if (this.outputIndex < 0) {
            return false;
        }
        if ((this.outputBufferInfo.flags & 4) != 0) {
            this.outputStreamEnded = true;
            this.currentTimeStampUs = this.sourceDuration;
            return false;
        }
        int decodeOnlyIndex = getDecodeOnlyIndex(this.outputBufferInfo.presentationTimeUs);
        if (decodeOnlyIndex != -1) {
            this.codec.releaseOutputBuffer(this.outputIndex, false);
            this.decodeOnlyPresentationTimestamps.remove(decodeOnlyIndex);
            this.outputIndex = -1;
            return getNextOutputBuffer(0L);
        }
        if (this.outputBufferInfo.presentationTimeUs == 0) {
        }
        Log.i(TAG, "Decoded " + this.outputBufferInfo.presentationTimeUs);
        this.currentTimeStampUs = this.outputBufferInfo.presentationTimeUs;
        return true;
    }

    private void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws MediaCodecUtil.DecoderQueryException, ExoPlaybackException {
        MediaFormat mediaFormat = this.format;
        this.format = mediaFormatHolder.mediaFormat;
        if (this.codec != null && canReconfigureCodec(this.codec, this.codecIsAdaptive, mediaFormat, this.format)) {
            this.codecReconfigured = true;
            this.codecReconfigurationState = 1;
        } else {
            releaseCodec();
            maybeInitCodec();
        }
    }

    private void onOutputFormatChanged(android.media.MediaFormat mediaFormat) {
        int integer;
        int integer2;
        int integer3;
        int integer4 = 0;
        int integer5 = mediaFormat.containsKey("width") ? mediaFormat.getInteger("width") : 0;
        int integer6 = mediaFormat.containsKey("height") ? mediaFormat.getInteger("height") : 0;
        int integer7 = mediaFormat.containsKey("stride") ? mediaFormat.getInteger("stride") : 0;
        if (integer7 != 0 && integer7 >= integer5) {
            integer5 = integer7;
        }
        int integer8 = mediaFormat.containsKey("slice-height") ? mediaFormat.getInteger("slice-height") : 0;
        if (integer8 != 0 && integer8 >= integer6) {
            integer6 = integer8;
        }
        if (mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
            integer = mediaFormat.getInteger("crop-bottom");
            integer2 = mediaFormat.getInteger("crop-top");
        } else {
            Log.w("VideoDecoder", "Could not find crop param top and bottom");
            integer = integer6 - 1;
            integer2 = 0;
        }
        if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left")) {
            integer3 = mediaFormat.getInteger("crop-right");
            integer4 = mediaFormat.getInteger("crop-left");
        } else {
            Log.w("VideoDecoder", "Could not find crop param right or left");
            integer3 = integer5 - 1;
        }
        this.mediaSurface.setCrop(integer5, integer6, (integer3 - integer4) + 1, (integer - integer2) + 1);
    }

    private boolean canReconfigureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        return mediaFormat2.mimeType.equals(mediaFormat.mimeType) && (z || (mediaFormat.width == mediaFormat2.width && mediaFormat.height == mediaFormat2.height));
    }

    private int getSourceState() {
        return this.sourceState;
    }

    private boolean isReady() {
        return this.format != null && (this.sourceState != 0 || this.outputIndex >= 0);
    }

    private boolean isEnded() {
        if (this.outputStreamEnded) {
            Log.i("VideoDecoder", "stream ended");
        }
        return this.outputStreamEnded;
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    public boolean getFrameAtTimeInternal(long j, long j2) throws MediaCodecUtil.DecoderQueryException, ExoPlaybackException {
        Log.i(TAG, "GetFrameAtTime " + j);
        long jNanoTime = System.nanoTime();
        boolean z = this.renderedTimeStampUs >= j;
        while (true) {
            if ((this.currentTimeStampUs <= j || this.renderedTimeStampUs < j) && !isEnded() && !isReleased() && !this.newFrameRequest) {
                long jNanoTime2 = System.nanoTime() - jNanoTime;
                if (j2 >= 0 && jNanoTime2 >= j2) {
                    Log.i("Frame Drop", "go back from here too " + jNanoTime2);
                    break;
                }
                z = renderFrame() || z;
                Log.i(TAG, "GetFrameAtTime: Rendered " + z);
                if (!isEnded()) {
                    long j3 = 30000000;
                    if (j2 >= 0) {
                        j3 = j2 - jNanoTime2;
                    }
                    processNextFrame(j3);
                }
            } else {
                break;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        android.util.Log.i("Frame Drop", "timeout during processing " + r7.currentTimeStampUs + " " + r7.clipIndex);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long processNextFrame(long r8) throws com.adobe.premiereclip.mediaengine.decoderutils.MediaCodecUtil.DecoderQueryException, com.google.android.exoplayer.ExoPlaybackException {
        /*
            r7 = this;
            r0 = 0
            boolean r1 = r7.isEnded()
            if (r1 == 0) goto La
            long r0 = r7.currentTimeStampUs
        L9:
            return r0
        La:
            java.lang.String r1 = "CustomVideoDecoder"
            java.lang.String r2 = "ProcessNextFrame"
            android.util.Log.i(r1, r2)     // Catch: java.io.IOException -> L8b
            long r2 = java.lang.System.nanoTime()     // Catch: java.io.IOException -> L8b
            r7.initCodec()     // Catch: java.io.IOException -> L8b
            com.adobe.customextractor.ClipSampleSource r1 = r7.sampleSource     // Catch: java.io.IOException -> L8b
            long r4 = r7.currentTimeStampUs     // Catch: java.io.IOException -> L8b
            boolean r1 = r1.continueBuffering(r4)     // Catch: java.io.IOException -> L8b
            if (r1 == 0) goto L4f
            int r1 = r7.sourceState     // Catch: java.io.IOException -> L8b
            if (r1 != 0) goto L4c
            r1 = 1
        L29:
            r7.sourceState = r1     // Catch: java.io.IOException -> L8b
            android.media.MediaCodec r1 = r7.codec     // Catch: java.io.IOException -> L8b
            if (r1 == 0) goto L49
            r4 = 0
            boolean r1 = r7.getNextOutputBuffer(r4)     // Catch: java.io.IOException -> L8b
            if (r1 != 0) goto L49
            boolean r1 = r7.isEnded()     // Catch: java.io.IOException -> L8b
            if (r1 != 0) goto L49
        L3d:
            if (r0 != 0) goto L49
            boolean r0 = r7.isReleased()     // Catch: java.io.IOException -> L8b
            if (r0 != 0) goto L49
            boolean r0 = r7.newFrameRequest     // Catch: java.io.IOException -> L8b
            if (r0 == 0) goto L51
        L49:
            long r0 = r7.currentTimeStampUs
            goto L9
        L4c:
            int r1 = r7.sourceState     // Catch: java.io.IOException -> L8b
            goto L29
        L4f:
            r1 = r0
            goto L29
        L51:
            long r0 = java.lang.System.nanoTime()     // Catch: java.io.IOException -> L8b
            long r0 = r0 - r2
            r4 = 1000(0x3e8, double:4.94E-321)
            long r4 = r8 / r4
            r7.feedMultipleInputBuffer(r4)     // Catch: java.io.IOException -> L8b
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 < 0) goto L92
            java.lang.String r0 = "Frame Drop"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L8b
            r1.<init>()     // Catch: java.io.IOException -> L8b
            java.lang.String r2 = "timeout during processing "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.io.IOException -> L8b
            long r2 = r7.currentTimeStampUs     // Catch: java.io.IOException -> L8b
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.io.IOException -> L8b
            java.lang.String r2 = " "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.io.IOException -> L8b
            int r2 = r7.clipIndex     // Catch: java.io.IOException -> L8b
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.io.IOException -> L8b
            java.lang.String r1 = r1.toString()     // Catch: java.io.IOException -> L8b
            android.util.Log.i(r0, r1)     // Catch: java.io.IOException -> L8b
            goto L49
        L8b:
            r0 = move-exception
            com.google.android.exoplayer.ExoPlaybackException r1 = new com.google.android.exoplayer.ExoPlaybackException
            r1.<init>(r0)
            throw r1
        L92:
            r0 = 100
            boolean r0 = r7.getNextOutputBuffer(r0)     // Catch: java.io.IOException -> L8b
            boolean r1 = r7.isEnded()     // Catch: java.io.IOException -> L8b
            if (r1 == 0) goto L3d
            goto L49
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.mediaengine.decoderutils.VideoDecoder.processNextFrame(long):long");
    }

    private boolean renderFrame() throws ExoPlaybackException {
        boolean zReleaseFrame = releaseFrame(true);
        if (zReleaseFrame) {
            Log.i(TAG, "RenderFrame done at " + this.currentTimeStampUs);
            this.renderedTimeStampUs = this.currentTimeStampUs;
        }
        return zReleaseFrame;
    }

    private boolean releaseFrame(boolean z) throws ExoPlaybackException {
        boolean z2 = false;
        if (this.outputIndex >= 0) {
            if (this.mediaSurface != null && this.mediaSurface.getSurface() != null && z) {
                z2 = true;
            }
            this.codec.releaseOutputBuffer(this.outputIndex, z2);
            this.outputIndex = -1;
        }
        return z2;
    }

    private void flushCodec() throws ExoPlaybackException {
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.waitingForFirstSyncFrame = true;
        this.decodeOnlyPresentationTimestamps.clear();
        this.codec.flush();
        if (this.codecReconfigured && this.format != null) {
            this.codecReconfigurationState = 1;
        }
    }

    private void releaseCodec() {
        Log.i(TAG, "Release Codec");
        if (this.codec != null) {
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.decodeOnlyPresentationTimestamps.clear();
            this.inputBuffers = null;
            this.outputBuffers = null;
            this.codecReconfigured = false;
            this.codecIsAdaptive = false;
            this.codecReconfigurationState = 0;
            try {
                try {
                    this.codec.stop();
                    try {
                        this.codec.release();
                    } finally {
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    try {
                        this.codec.release();
                        this.codec = null;
                    } finally {
                    }
                }
            } catch (Throwable th) {
                try {
                    this.codec.release();
                    throw th;
                } finally {
                }
            }
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    public void onReleased() throws ExoPlaybackException {
        if (this.sampleSource != null) {
            this.sampleSource.release();
        }
    }
}
