package com.google.android.exoplayer.audio;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.MediaFormat;
import android.os.ConditionVariable;
import android.support.v4.view.PointerIconCompat;
import android.util.Log;
import com.adobe.premiereclip.editor.waveform.WaveUtils;
import com.google.android.exoplayer.util.Util;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public final class AudioTrack {
    private static final int BUFFER_MULTIPLICATION_FACTOR = 4;
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;
    private static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    private static final long MAX_BUFFER_DURATION_US = 750000;
    private static final long MAX_LATENCY_US = 5000000;
    private static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    private static final long MIN_BUFFER_DURATION_US = 250000;
    private static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    private static final int MIN_TIMESTAMP_SAMPLE_INTERVAL_US = 500000;
    public static final int RESULT_BUFFER_CONSUMED = 2;
    public static final int RESULT_POSITION_DISCONTINUITY = 1;
    public static final int SESSION_ID_NOT_SET = 0;
    private static final int START_IN_SYNC = 1;
    private static final int START_NEED_SYNC = 2;
    private static final int START_NOT_SET = 0;
    private static final String TAG = "AudioTrack";
    private static final int UNKNOWN_AC3_BITRATE = 0;
    private int ac3Bitrate;
    private boolean audioTimestampSet;
    private android.media.AudioTrack audioTrack;
    private AudioTrackUtil audioTrackUtil;
    private int bufferSize;
    private int channelConfig;
    private int encoding;
    private int frameSize;
    private Method getLatencyMethod;
    private boolean isAc3;
    private long lastPlayheadSampleTimeUs;
    private long lastTimestampSampleTimeUs;
    private long latencyUs;
    private int minBufferSize;
    private int nextPlayheadOffsetIndex;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private final ConditionVariable releasingConditionVariable = new ConditionVariable(true);
    private long resumeSystemTimeUs;
    private int sampleRate;
    private long smoothedPlayheadOffsetUs;
    private int startMediaTimeState;
    private long startMediaTimeUs;
    private long submittedBytes;
    private byte[] temporaryBuffer;
    private int temporaryBufferOffset;
    private int temporaryBufferSize;
    private float volume;

    public class InitializationException extends Exception {
        public final int audioTrackState;

        public InitializationException(int i, int i2, int i3, int i4) {
            super("AudioTrack init failed: " + i + ", Config(" + i2 + ", " + i3 + ", " + i4 + ")");
            this.audioTrackState = i;
        }
    }

    public class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int i) {
            super("AudioTrack write failed: " + i);
            this.errorCode = i;
        }
    }

    public AudioTrack() {
        if (Util.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = android.media.AudioTrack.class.getMethod("getLatency", (Class[]) null);
            } catch (NoSuchMethodException e2) {
            }
        }
        this.playheadOffsets = new long[10];
        this.volume = 1.0f;
        this.startMediaTimeState = 0;
    }

    public boolean isInitialized() {
        return this.audioTrack != null;
    }

    public long getCurrentPositionUs(boolean z) {
        long playbackHeadPositionUs;
        if (!hasCurrentPositionUs()) {
            return Long.MIN_VALUE;
        }
        if (this.audioTrack.getPlayState() == 3) {
            maybeSampleSyncParams();
        }
        long jNanoTime = System.nanoTime() / 1000;
        if (this.audioTimestampSet) {
            return framesToDurationUs(durationUsToFrames(jNanoTime - (this.audioTrackUtil.getTimestampNanoTime() / 1000)) + this.audioTrackUtil.getTimestampFramePosition()) + this.startMediaTimeUs;
        }
        if (this.playheadOffsetCount == 0) {
            playbackHeadPositionUs = this.audioTrackUtil.getPlaybackHeadPositionUs() + this.startMediaTimeUs;
        } else {
            playbackHeadPositionUs = jNanoTime + this.smoothedPlayheadOffsetUs + this.startMediaTimeUs;
        }
        if (!z) {
            return playbackHeadPositionUs - this.latencyUs;
        }
        return playbackHeadPositionUs;
    }

    public int initialize() throws InitializationException {
        return initialize(0);
    }

    public int initialize(int i) throws InitializationException {
        this.releasingConditionVariable.block();
        if (i == 0) {
            this.audioTrack = new android.media.AudioTrack(3, this.sampleRate, this.channelConfig, this.encoding, this.bufferSize, 1);
        } else {
            this.audioTrack = new android.media.AudioTrack(3, this.sampleRate, this.channelConfig, this.encoding, this.bufferSize, 1, i);
        }
        checkAudioTrackInitialized();
        if (Util.SDK_INT >= 19) {
            this.audioTrackUtil = new AudioTrackUtilV19(this.audioTrack);
        } else {
            this.audioTrackUtil = new AudioTrackUtil(this.audioTrack);
        }
        setVolume(this.volume);
        return this.audioTrack.getAudioSessionId();
    }

    public void reconfigure(MediaFormat mediaFormat) {
        reconfigure(mediaFormat, 2, 0);
    }

    @SuppressLint({"InlinedApi"})
    public void reconfigure(MediaFormat mediaFormat, int i, int i2) {
        int i3;
        int integer = mediaFormat.getInteger("channel-count");
        switch (integer) {
            case 1:
                i3 = 4;
                break;
            case 2:
                i3 = 12;
                break;
            case 3:
            case 4:
            case 5:
            case 7:
            default:
                throw new IllegalArgumentException("Unsupported channel count: " + integer);
            case 6:
                i3 = 252;
                break;
            case 8:
                i3 = PointerIconCompat.TYPE_GRAB;
                break;
        }
        int integer2 = mediaFormat.getInteger("sample-rate");
        boolean z = i == 5 || i == 6;
        if (!isInitialized() || this.sampleRate != integer2 || this.channelConfig != i3 || this.isAc3 || z) {
            reset();
            this.encoding = i;
            this.sampleRate = integer2;
            this.channelConfig = i3;
            this.isAc3 = z;
            this.ac3Bitrate = 0;
            this.frameSize = integer * 2;
            this.minBufferSize = android.media.AudioTrack.getMinBufferSize(integer2, i3, i);
            if (i2 != 0) {
                this.bufferSize = i2;
                return;
            }
            int i4 = this.minBufferSize * 4;
            int iDurationUsToFrames = ((int) durationUsToFrames(MIN_BUFFER_DURATION_US)) * this.frameSize;
            int iMax = (int) Math.max(this.minBufferSize, durationUsToFrames(MAX_BUFFER_DURATION_US) * ((long) this.frameSize));
            if (i4 >= iDurationUsToFrames) {
                iDurationUsToFrames = i4 > iMax ? iMax : i4;
            }
            this.bufferSize = iDurationUsToFrames;
        }
    }

    public void play() {
        if (isInitialized()) {
            this.resumeSystemTimeUs = System.nanoTime() / 1000;
            this.audioTrack.play();
        }
    }

    public void handleDiscontinuity() {
        if (this.startMediaTimeState == 1) {
            this.startMediaTimeState = 2;
        }
    }

    public int handleBuffer(ByteBuffer byteBuffer, int i, int i2, long j) throws WriteException {
        if (i2 == 0) {
            return 2;
        }
        int i3 = 0;
        if (this.temporaryBufferSize == 0) {
            if (this.isAc3 && this.ac3Bitrate == 0) {
                this.ac3Bitrate = (((i2 * 8) * this.sampleRate) + 768000) / 1536000;
            }
            long jFramesToDurationUs = j - framesToDurationUs(bytesToFrames(i2));
            if (this.startMediaTimeUs == 0) {
                this.startMediaTimeUs = Math.max(0L, jFramesToDurationUs);
                this.startMediaTimeState = 1;
            } else {
                long jFramesToDurationUs2 = this.startMediaTimeUs + framesToDurationUs(bytesToFrames(this.submittedBytes));
                if (this.startMediaTimeState == 1 && Math.abs(jFramesToDurationUs2 - jFramesToDurationUs) > 200000) {
                    Log.e("AudioTrack", "Discontinuity detected [expected " + jFramesToDurationUs2 + ", got " + jFramesToDurationUs + "]");
                    this.startMediaTimeState = 2;
                }
                if (this.startMediaTimeState == 2) {
                    this.startMediaTimeUs += jFramesToDurationUs - jFramesToDurationUs2;
                    this.startMediaTimeState = 1;
                    i3 = 1;
                }
            }
        }
        if (this.temporaryBufferSize == 0) {
            this.temporaryBufferSize = i2;
            byteBuffer.position(i);
            if (Util.SDK_INT < 21) {
                if (this.temporaryBuffer == null || this.temporaryBuffer.length < i2) {
                    this.temporaryBuffer = new byte[i2];
                }
                byteBuffer.get(this.temporaryBuffer, 0, i2);
                this.temporaryBufferOffset = 0;
            }
        }
        int iWriteNonBlockingV21 = 0;
        if (Util.SDK_INT < 21) {
            int playbackHeadPosition = this.bufferSize - ((int) (this.submittedBytes - (this.audioTrackUtil.getPlaybackHeadPosition() * ((long) this.frameSize))));
            if (playbackHeadPosition > 0) {
                iWriteNonBlockingV21 = this.audioTrack.write(this.temporaryBuffer, this.temporaryBufferOffset, Math.min(this.temporaryBufferSize, playbackHeadPosition));
                if (iWriteNonBlockingV21 >= 0) {
                    this.temporaryBufferOffset += iWriteNonBlockingV21;
                }
            }
        } else {
            iWriteNonBlockingV21 = writeNonBlockingV21(this.audioTrack, byteBuffer, this.temporaryBufferSize);
        }
        if (iWriteNonBlockingV21 < 0) {
            throw new WriteException(iWriteNonBlockingV21);
        }
        this.temporaryBufferSize -= iWriteNonBlockingV21;
        this.submittedBytes += (long) iWriteNonBlockingV21;
        if (this.temporaryBufferSize == 0) {
            return i3 | 2;
        }
        return i3;
    }

    @TargetApi(21)
    private static int writeNonBlockingV21(android.media.AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    public boolean hasPendingData() {
        return isInitialized() && bytesToFrames(this.submittedBytes) > this.audioTrackUtil.getPlaybackHeadPosition();
    }

    public boolean hasEnoughDataToBeginPlayback() {
        return this.submittedBytes > ((long) ((this.minBufferSize * 3) / 2));
    }

    public void setVolume(float f2) {
        this.volume = f2;
        if (isInitialized()) {
            if (Util.SDK_INT >= 21) {
                setVolumeV21(this.audioTrack, f2);
            } else {
                setVolumeV3(this.audioTrack, f2);
            }
        }
    }

    @TargetApi(21)
    private static void setVolumeV21(android.media.AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }

    private static void setVolumeV3(android.media.AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    public void pause() {
        if (isInitialized()) {
            resetSyncParams();
            this.audioTrack.pause();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.exoplayer.audio.AudioTrack$1] */
    public void reset() {
        if (isInitialized()) {
            this.submittedBytes = 0L;
            this.temporaryBufferSize = 0;
            this.startMediaTimeUs = 0L;
            resetSyncParams();
            if (this.audioTrack.getPlayState() == 3) {
                this.audioTrack.pause();
            }
            final android.media.AudioTrack audioTrack = this.audioTrack;
            this.audioTrack = null;
            this.audioTrackUtil = null;
            this.releasingConditionVariable.close();
            new Thread() { // from class: com.google.android.exoplayer.audio.AudioTrack.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        audioTrack.release();
                    } finally {
                        AudioTrack.this.releasingConditionVariable.open();
                    }
                }
            }.start();
        }
    }

    private boolean hasCurrentPositionUs() {
        return isInitialized() && this.startMediaTimeUs != 0;
    }

    private void maybeSampleSyncParams() {
        long playbackHeadPositionUs = this.audioTrackUtil.getPlaybackHeadPositionUs();
        if (playbackHeadPositionUs != 0) {
            long jNanoTime = System.nanoTime() / 1000;
            if (jNanoTime - this.lastPlayheadSampleTimeUs >= 30000) {
                this.playheadOffsets[this.nextPlayheadOffsetIndex] = playbackHeadPositionUs - jNanoTime;
                this.nextPlayheadOffsetIndex = (this.nextPlayheadOffsetIndex + 1) % 10;
                if (this.playheadOffsetCount < 10) {
                    this.playheadOffsetCount++;
                }
                this.lastPlayheadSampleTimeUs = jNanoTime;
                this.smoothedPlayheadOffsetUs = 0L;
                for (int i = 0; i < this.playheadOffsetCount; i++) {
                    this.smoothedPlayheadOffsetUs += this.playheadOffsets[i] / ((long) this.playheadOffsetCount);
                }
            }
            if (jNanoTime - this.lastTimestampSampleTimeUs >= 500000) {
                this.audioTimestampSet = this.audioTrackUtil.updateTimestamp();
                if (this.audioTimestampSet) {
                    long timestampNanoTime = this.audioTrackUtil.getTimestampNanoTime() / 1000;
                    long timestampFramePosition = this.audioTrackUtil.getTimestampFramePosition();
                    if (timestampNanoTime < this.resumeSystemTimeUs) {
                        this.audioTimestampSet = false;
                    } else if (Math.abs(timestampNanoTime - jNanoTime) > WaveUtils.END_DURATION_BLOCKED) {
                        this.audioTimestampSet = false;
                        Log.w("AudioTrack", "Spurious audio timestamp (system clock mismatch): " + timestampFramePosition + ", " + timestampNanoTime + ", " + jNanoTime + ", " + playbackHeadPositionUs);
                    } else if (Math.abs(framesToDurationUs(timestampFramePosition) - playbackHeadPositionUs) > WaveUtils.END_DURATION_BLOCKED) {
                        this.audioTimestampSet = false;
                        Log.w("AudioTrack", "Spurious audio timestamp (frame position mismatch): " + timestampFramePosition + ", " + timestampNanoTime + ", " + jNanoTime + ", " + playbackHeadPositionUs);
                    }
                }
                if (this.getLatencyMethod != null) {
                    try {
                        this.latencyUs = (((long) ((Integer) this.getLatencyMethod.invoke(this.audioTrack, (Object[]) null)).intValue()) * 1000) - framesToDurationUs(bytesToFrames(this.bufferSize));
                        this.latencyUs = Math.max(this.latencyUs, 0L);
                        if (this.latencyUs > WaveUtils.END_DURATION_BLOCKED) {
                            Log.w("AudioTrack", "Ignoring impossibly large audio latency: " + this.latencyUs);
                            this.latencyUs = 0L;
                        }
                    } catch (Exception e2) {
                        this.getLatencyMethod = null;
                    }
                }
                this.lastTimestampSampleTimeUs = jNanoTime;
            }
        }
    }

    private void checkAudioTrackInitialized() throws InitializationException {
        int state = this.audioTrack.getState();
        if (state == 1) {
            return;
        }
        try {
            this.audioTrack.release();
        } catch (Exception e2) {
        } finally {
            this.audioTrack = null;
        }
        throw new InitializationException(state, this.sampleRate, this.channelConfig, this.bufferSize);
    }

    private long bytesToFrames(long j) {
        if (this.isAc3) {
            if (this.ac3Bitrate == 0) {
                return 0L;
            }
            return ((8 * j) * ((long) this.sampleRate)) / ((long) (this.ac3Bitrate * 1000));
        }
        return j / ((long) this.frameSize);
    }

    private long framesToDurationUs(long j) {
        return (1000000 * j) / ((long) this.sampleRate);
    }

    private long durationUsToFrames(long j) {
        return (((long) this.sampleRate) * j) / 1000000;
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
        this.audioTimestampSet = false;
        this.lastTimestampSampleTimeUs = 0L;
    }

    class AudioTrackUtil {
        protected final android.media.AudioTrack audioTrack;
        private long lastRawPlaybackHeadPosition;
        private long rawPlaybackHeadWrapCount;
        private final int sampleRate;

        public AudioTrackUtil(android.media.AudioTrack audioTrack) {
            this.audioTrack = audioTrack;
            this.sampleRate = audioTrack.getSampleRate();
        }

        public long getPlaybackHeadPosition() {
            long playbackHeadPosition = 4294967295L & ((long) this.audioTrack.getPlaybackHeadPosition());
            if (this.lastRawPlaybackHeadPosition > playbackHeadPosition) {
                this.rawPlaybackHeadWrapCount++;
            }
            this.lastRawPlaybackHeadPosition = playbackHeadPosition;
            return playbackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
        }

        public long getPlaybackHeadPositionUs() {
            return (getPlaybackHeadPosition() * 1000000) / ((long) this.sampleRate);
        }

        public boolean updateTimestamp() {
            return false;
        }

        public long getTimestampNanoTime() {
            throw new UnsupportedOperationException();
        }

        public long getTimestampFramePosition() {
            throw new UnsupportedOperationException();
        }
    }

    @TargetApi(19)
    class AudioTrackUtilV19 extends AudioTrackUtil {
        private final AudioTimestamp audioTimestamp;
        private long lastRawTimestampFramePosition;
        private long lastTimestampFramePosition;
        private long rawTimestampFramePositionWrapCount;

        public AudioTrackUtilV19(android.media.AudioTrack audioTrack) {
            super(audioTrack);
            this.audioTimestamp = new AudioTimestamp();
        }

        @Override // com.google.android.exoplayer.audio.AudioTrack.AudioTrackUtil
        public boolean updateTimestamp() {
            boolean timestamp = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (timestamp) {
                long j = this.audioTimestamp.framePosition;
                if (this.lastRawTimestampFramePosition > j) {
                    this.rawTimestampFramePositionWrapCount++;
                }
                this.lastRawTimestampFramePosition = j;
                this.lastTimestampFramePosition = j + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return timestamp;
        }

        @Override // com.google.android.exoplayer.audio.AudioTrack.AudioTrackUtil
        public long getTimestampNanoTime() {
            return this.audioTimestamp.nanoTime;
        }

        @Override // com.google.android.exoplayer.audio.AudioTrack.AudioTrackUtil
        public long getTimestampFramePosition() {
            return this.lastTimestampFramePosition;
        }
    }
}
