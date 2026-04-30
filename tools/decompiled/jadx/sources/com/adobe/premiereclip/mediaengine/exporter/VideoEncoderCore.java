package com.adobe.premiereclip.mediaengine.exporter;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import com.adobe.audiomixer.IAudioSequence;
import com.adobe.audiomixer.VideoTime;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(18)
public class VideoEncoderCore {
    private static final String AUDIO_MIME_TYPE = "audio/mp4a-latm";
    private static final int FRAME_RATE = 30;
    private static final int IFRAME_INTERVAL = 1;
    private static final String TAG = "Encoder";
    private static final int TIMEOUT_USEC = 10000;
    private static final boolean VERBOSE = true;
    private static final String VIDEO_MIME_TYPE = "video/avc";
    private MediaCodec.BufferInfo mAudioBufferInfo;
    private int mAudioChannel;
    private MediaCodec mAudioEncoder;
    private ByteBuffer[] mAudioInputBuffers;
    private ByteBuffer[] mAudioOutputBuffers;
    private int mAudioSampleRate;
    private IAudioSequence mAudioSequence;
    private int mAudioTrackIndex;
    private boolean mEndOfInputAudioStream;
    private boolean mEndOfOutputAudioStream;
    private Surface mInputSurface;
    private int mLastProcessedAudioSample;
    private MediaMuxer mMuxer;
    private boolean mMuxerStarted;
    private MediaCodec.BufferInfo mVideoBufferInfo;
    private MediaCodec mVideoEncoder;
    private int mVideoTrackIndex;

    public VideoEncoderCore(int i, int i2, int i3, int i4, int i5, int i6, IAudioSequence iAudioSequence, File file) throws IOException {
        this.mAudioSequence = iAudioSequence;
        InitializeVideo(i, i2, i3);
        InitializeAudio(i4, i5, i6);
        this.mMuxer = new MediaMuxer(file.toString(), 0);
        this.mVideoTrackIndex = -1;
        this.mAudioTrackIndex = -1;
        this.mMuxerStarted = false;
        this.mEndOfInputAudioStream = false;
        this.mEndOfOutputAudioStream = false;
    }

    private void InitializeVideo(int i, int i2, int i3) throws IOException {
        this.mVideoBufferInfo = new MediaCodec.BufferInfo();
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        mediaFormatCreateVideoFormat.setInteger("bitrate", i3);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", 30);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
        Log.d(TAG, "format: " + mediaFormatCreateVideoFormat);
        this.mVideoEncoder = MediaCodec.createEncoderByType("video/avc");
        if (this.mVideoEncoder.getCodecInfo().getName().contains("OMX.MTK") && i2 == 1080) {
            mediaFormatCreateVideoFormat.setInteger("height", 1072);
        }
        this.mVideoEncoder.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        Log.d(TAG, "encoder debug video format " + mediaFormatCreateVideoFormat);
        this.mInputSurface = this.mVideoEncoder.createInputSurface();
        this.mVideoEncoder.start();
    }

    private void InitializeAudio(int i, int i2, int i3) throws IOException {
        if (this.mAudioSequence != null) {
            this.mAudioBufferInfo = new MediaCodec.BufferInfo();
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i, i2);
            mediaFormatCreateAudioFormat.setInteger("bitrate", i3);
            this.mAudioSampleRate = i;
            this.mAudioChannel = i2;
            this.mAudioSequence.setSampleRate(this.mAudioSampleRate);
            this.mAudioSequence.setChannels(this.mAudioChannel);
            this.mAudioEncoder = MediaCodec.createEncoderByType("audio/mp4a-latm");
            this.mAudioEncoder.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 1);
            this.mAudioEncoder.start();
            this.mLastProcessedAudioSample = 0;
            this.mAudioInputBuffers = this.mAudioEncoder.getInputBuffers();
            this.mAudioOutputBuffers = this.mAudioEncoder.getOutputBuffers();
        }
    }

    public Surface getInputSurface() {
        return this.mInputSurface;
    }

    public void release() {
        Log.d(TAG, "releasing encoder objects");
        if (this.mVideoEncoder != null) {
            this.mVideoEncoder.stop();
            this.mVideoEncoder.release();
            this.mVideoEncoder = null;
        }
        if (this.mAudioEncoder != null) {
            this.mAudioEncoder.stop();
            this.mAudioEncoder.release();
            this.mAudioEncoder = null;
        }
        if (this.mMuxer != null) {
            if (this.mMuxerStarted) {
                this.mMuxer.stop();
            }
            this.mMuxer.release();
            this.mMuxer = null;
        }
        if (this.mAudioSequence != null) {
            this.mAudioSequence.release();
            this.mAudioSequence = null;
        }
    }

    public void drainEncoder(boolean z) {
        ByteBuffer[] outputBuffers;
        Log.d(TAG, "drainEncoder(" + z + ")");
        if (z) {
            Log.d(TAG, "sending EOS to encoder");
            this.mVideoEncoder.signalEndOfInputStream();
        }
        ByteBuffer[] outputBuffers2 = this.mVideoEncoder.getOutputBuffers();
        boolean z2 = false;
        while (!z2) {
            int iDequeueOutputBuffer = this.mVideoEncoder.dequeueOutputBuffer(this.mVideoBufferInfo, 10000L);
            if (iDequeueOutputBuffer == -1) {
                if (z) {
                    Log.d(TAG, "no output available, spinning to await EOS");
                    outputBuffers = outputBuffers2;
                } else {
                    z2 = true;
                    outputBuffers = outputBuffers2;
                }
            } else if (iDequeueOutputBuffer == -3) {
                outputBuffers = this.mVideoEncoder.getOutputBuffers();
            } else if (iDequeueOutputBuffer == -2) {
                if (this.mMuxerStarted) {
                    throw new RuntimeException("format changed twice");
                }
                MediaFormat outputFormat = this.mVideoEncoder.getOutputFormat();
                Log.d(TAG, "encoder output format changed: " + outputFormat);
                this.mVideoTrackIndex = this.mMuxer.addTrack(outputFormat);
                if (this.mAudioSequence != null && this.mAudioEncoder != null) {
                    WriteAudioSamples(0L);
                } else {
                    this.mMuxer.start();
                    this.mMuxerStarted = true;
                }
                outputBuffers = outputBuffers2;
            } else if (iDequeueOutputBuffer < 0) {
                Log.w(TAG, "unexpected result from encoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                outputBuffers = outputBuffers2;
            } else {
                ByteBuffer byteBuffer = outputBuffers2[iDequeueOutputBuffer];
                if (byteBuffer == null) {
                    throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " was null");
                }
                if ((this.mVideoBufferInfo.flags & 2) != 0) {
                    Log.d(TAG, "ignoring BUFFER_FLAG_CODEC_CONFIG");
                    this.mVideoBufferInfo.size = 0;
                }
                if (this.mVideoBufferInfo.size != 0) {
                    if (!this.mMuxerStarted) {
                        throw new RuntimeException("muxer hasn't started");
                    }
                    byteBuffer.position(this.mVideoBufferInfo.offset);
                    byteBuffer.limit(this.mVideoBufferInfo.offset + this.mVideoBufferInfo.size);
                    this.mMuxer.writeSampleData(this.mVideoTrackIndex, byteBuffer, this.mVideoBufferInfo);
                    Log.d(TAG, "sent " + this.mVideoBufferInfo.size + " bytes to muxer, ts=" + this.mVideoBufferInfo.presentationTimeUs);
                }
                this.mVideoEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                if ((this.mVideoBufferInfo.flags & 4) != 0) {
                    if (!z) {
                        Log.w(TAG, "reached end of stream unexpectedly");
                    } else {
                        Log.d(TAG, "end of stream reached");
                    }
                    z2 = true;
                }
                long j = this.mVideoBufferInfo.presentationTimeUs;
                if (z || (this.mVideoBufferInfo.flags & 4) != 0) {
                    j = -1;
                }
                WriteAudioSamples(j);
                outputBuffers = outputBuffers2;
            }
            outputBuffers2 = outputBuffers;
        }
    }

    private void WriteAudioSamples(long j) {
        long j2;
        if (this.mAudioSequence != null && !this.mEndOfOutputAudioStream) {
            if (j != -1) {
                j2 = (long) ((j / 1000000.0d) * ((double) this.mAudioSampleRate));
                if (j2 < this.mLastProcessedAudioSample) {
                    return;
                }
            } else {
                j2 = -1;
            }
            boolean z = false;
            while (!z) {
                feedAudioInputToDecoder();
                feedAudioDecoderOutputToMuxer();
                if (this.mEndOfOutputAudioStream) {
                    z = true;
                } else if (j2 != -1 && this.mLastProcessedAudioSample >= j2 && this.mMuxerStarted) {
                    z = true;
                }
            }
        }
    }

    @TargetApi(21)
    private ByteBuffer getInputBufferAPI21(int i) {
        return this.mAudioEncoder.getInputBuffer(i);
    }

    private void feedAudioInputToDecoder() {
        int iDequeueInputBuffer;
        if (!this.mEndOfInputAudioStream && (iDequeueInputBuffer = this.mAudioEncoder.dequeueInputBuffer(0L)) >= 0) {
            ByteBuffer inputBufferAPI21 = null;
            if (Build.VERSION.SDK_INT >= 21) {
                inputBufferAPI21 = getInputBufferAPI21(iDequeueInputBuffer);
            } else if (this.mAudioInputBuffers != null) {
                inputBufferAPI21 = this.mAudioInputBuffers[iDequeueInputBuffer];
            }
            VideoTime videoTime = new VideoTime(this.mLastProcessedAudioSample, this.mAudioSampleRate);
            int samples = this.mAudioSequence.readSamples(videoTime, inputBufferAPI21);
            inputBufferAPI21.limit(this.mAudioChannel * samples * 2);
            long timeInMS = videoTime.getTimeInMS();
            if (samples <= 0) {
                this.mEndOfInputAudioStream = true;
            }
            this.mLastProcessedAudioSample += samples;
            this.mAudioEncoder.queueInputBuffer(iDequeueInputBuffer, 0, this.mAudioChannel * samples * 2, timeInMS, this.mEndOfInputAudioStream ? 4 : 0);
        }
    }

    @TargetApi(21)
    private ByteBuffer getOutputBufferAPI21(int i) {
        return this.mAudioEncoder.getOutputBuffer(i);
    }

    private void feedAudioDecoderOutputToMuxer() {
        int iDequeueOutputBuffer;
        if (!this.mEndOfOutputAudioStream && (iDequeueOutputBuffer = this.mAudioEncoder.dequeueOutputBuffer(this.mAudioBufferInfo, 10000L)) != -1) {
            if (iDequeueOutputBuffer == -3) {
                this.mAudioOutputBuffers = this.mAudioEncoder.getOutputBuffers();
                return;
            }
            if (iDequeueOutputBuffer == -2) {
                Log.i(TAG, "audio format: " + this.mAudioEncoder.getOutputFormat());
                if (this.mAudioSequence != null && this.mAudioEncoder != null) {
                    this.mAudioTrackIndex = this.mMuxer.addTrack(this.mAudioEncoder.getOutputFormat());
                }
                this.mMuxer.start();
                this.mMuxerStarted = true;
                return;
            }
            if (iDequeueOutputBuffer < 0) {
                Log.w(TAG, "unexpected result from audio encoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                return;
            }
            if ((this.mAudioBufferInfo.flags & 2) != 0) {
                this.mAudioBufferInfo.size = 0;
            }
            if (this.mMuxer != null && this.mMuxerStarted) {
                ByteBuffer outputBufferAPI21 = null;
                if (Build.VERSION.SDK_INT >= 21) {
                    outputBufferAPI21 = getOutputBufferAPI21(iDequeueOutputBuffer);
                } else if (this.mAudioInputBuffers != null) {
                    outputBufferAPI21 = this.mAudioOutputBuffers[iDequeueOutputBuffer];
                }
                if (this.mAudioTrackIndex > 0 && this.mAudioBufferInfo.size != 0) {
                    outputBufferAPI21.position(this.mAudioBufferInfo.offset);
                    outputBufferAPI21.limit(this.mAudioBufferInfo.offset + this.mAudioBufferInfo.size);
                    this.mMuxer.writeSampleData(this.mAudioTrackIndex, outputBufferAPI21, this.mAudioBufferInfo);
                    Log.d(TAG, "sent " + this.mAudioBufferInfo.size + " audio bytes to muxer, ts=" + this.mAudioBufferInfo.presentationTimeUs);
                }
            }
            this.mAudioEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
            if ((this.mAudioBufferInfo.flags & 4) != 0) {
                this.mEndOfOutputAudioStream = true;
            }
        }
    }
}
