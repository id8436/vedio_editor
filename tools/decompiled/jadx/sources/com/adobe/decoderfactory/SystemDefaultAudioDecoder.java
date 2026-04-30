package com.adobe.decoderfactory;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import com.adobe.cliputils.ClipLogger;
import com.adobe.decoderfactory.AudioInfo;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class SystemDefaultAudioDecoder implements IAudioDecoder {
    private MediaCodec audioDecoder;
    private MediaFormat audioFormat;
    private boolean error;
    private ByteBuffer[] inputBuffers;
    private MediaExtractor mediaExtractor;
    private ByteBuffer[] outputBuffers;
    private AudioInfo outputInfo;
    private String source;
    private AudioInfo sourceInfo;
    private boolean endofOutputStream = false;
    private boolean endofInputStream = false;
    private long currentSampleNumber = -1;
    private long requestedSeekSample = -1;
    private BufferState currentOutputBufferState = null;
    private boolean decodeFormatRead = false;

    SystemDefaultAudioDecoder() {
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public String getName() {
        return "System default";
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public synchronized void seekTo(long j) {
        try {
            internalInitializeExractor();
            internalInitializeDecoder();
            if (!this.error && this.outputInfo != null) {
                internalSeekTo(j);
            }
        } catch (Exception e2) {
            ClipLogger.ex("Exception in seekTo", e2);
            throw e2;
        }
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public AudioInfo getSourceInfo() {
        return this.sourceInfo;
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public AudioInfo getOutputInfo() {
        if (this.error) {
            return null;
        }
        return this.outputInfo;
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public synchronized void readNextSamples(AudioReadData audioReadData) {
        try {
            audioReadData.setAudioData(this.currentSampleNumber, 0L, this.endofOutputStream, this.error, null);
            if (!this.error && !this.endofOutputStream) {
                internalInitializeExractor();
                internalInitializeDecoder();
                if (!this.error && readFromCurrentOutputBuffer(audioReadData)) {
                    long noOfSamples = 0;
                    while (noOfSamples == 0 && !this.endofOutputStream && !this.error) {
                        if (this.currentSampleNumber == -1) {
                            this.currentSampleNumber = (int) (((this.mediaExtractor.getSampleTime() / 1000000.0d) * ((double) this.outputInfo.getSampleRate())) + 0.5d);
                        }
                        if (!this.endofInputStream) {
                            feedMoreEncodedData();
                        }
                        getDecodedData(audioReadData);
                        noOfSamples = audioReadData.getNoOfSamples();
                        if (this.requestedSeekSample == -1 || noOfSamples == 0 || this.currentSampleNumber == -1) {
                            if (noOfSamples == 0 && this.endofOutputStream) {
                                this.endofOutputStream = true;
                            }
                        } else if (this.requestedSeekSample < this.currentSampleNumber) {
                            internalSeekTo((long) (((this.requestedSeekSample / ((double) this.sourceInfo.getSampleRate())) * 1000000.0d) + 0.5d));
                            noOfSamples = 0;
                            ClipLogger.w("DecoderFactory", "Seek not working, current sample: " + this.currentSampleNumber + ", seek sample: " + this.requestedSeekSample);
                        } else if (this.requestedSeekSample >= this.currentSampleNumber + noOfSamples) {
                            this.currentSampleNumber = noOfSamples + this.currentSampleNumber;
                            noOfSamples = 0;
                        }
                    }
                    if (this.endofOutputStream) {
                        noOfSamples = 0;
                    }
                    this.requestedSeekSample = -1L;
                    this.currentSampleNumber = noOfSamples + this.currentSampleNumber;
                }
            }
        } catch (Exception e2) {
            ClipLogger.ex("Exception in readNextSamples", e2);
            throw e2;
        }
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public void release() {
        releaseDecoder();
        releaseExtractor();
        releaseCurrentOutputBuffer();
        this.audioFormat = null;
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public boolean isEOF() {
        return this.endofOutputStream;
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public boolean hasError() {
        return this.error;
    }

    protected void finalyze() {
        release();
        this.error = false;
    }

    public boolean open(String str) {
        release();
        this.error = false;
        this.source = str;
        internalInitializeExractor();
        internalInitializeDecoder();
        return (this.mediaExtractor == null || this.audioDecoder == null || this.error) ? false : true;
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public String getSource() {
        return this.source;
    }

    private boolean readFromCurrentOutputBuffer(AudioReadData audioReadData) {
        boolean bufferData = true;
        if (this.currentOutputBufferState != null && (bufferData = this.currentOutputBufferState.readBufferData(audioReadData))) {
            releaseCurrentOutputBuffer();
        }
        return bufferData;
    }

    private void releaseCurrentOutputBuffer() {
        if (this.currentOutputBufferState != null) {
            this.currentOutputBufferState.releaseBuffer();
            this.currentOutputBufferState = null;
        }
    }

    private void internalInitializeExractor() {
        long duration;
        int i;
        int integer = 0;
        if (this.mediaExtractor == null && !this.error) {
            if (this.source == null || this.source.isEmpty()) {
                ClipLogger.e("DecoderFactory", "Empty source");
                this.error = true;
                return;
            }
            this.mediaExtractor = new MediaExtractor();
            try {
                this.mediaExtractor.setDataSource(this.source);
            } catch (IOException e2) {
                ClipLogger.ex("DecoderFactory", "MediaExtractor setDataSource failed for " + this.source, e2);
                this.error = true;
            }
            if (this.error) {
                this.error = false;
                try {
                    this.mediaExtractor.setDataSource(DecoderFactory.getCurrentContext(), Uri.parse(this.source), (Map<String, String>) null);
                } catch (IOException e3) {
                    ClipLogger.ex("DecoderFactory", "MediaExtractor setDataSource failed for " + this.source, e3);
                    this.error = true;
                }
            }
            if (!this.error) {
                this.audioFormat = null;
                int trackCount = this.mediaExtractor.getTrackCount();
                for (int i2 = 0; i2 < trackCount && this.audioFormat == null; i2++) {
                    MediaFormat trackFormat = this.mediaExtractor.getTrackFormat(i2);
                    if (trackFormat.getString("mime").contains("audio")) {
                        try {
                            this.mediaExtractor.selectTrack(i2);
                            this.audioFormat = trackFormat;
                        } catch (IllegalArgumentException e4) {
                            ClipLogger.ex("DecoderFactory", "Exception while selecting track", e4);
                        }
                    }
                }
                if (this.audioFormat == null) {
                    ClipLogger.w("DecoderFactory", "Audio not available with source: " + this.source);
                    this.error = true;
                    return;
                }
                if (this.audioFormat != null) {
                    int integer2 = this.audioFormat.getInteger("sample-rate");
                    integer = this.audioFormat.getInteger("channel-count");
                    try {
                        long j = this.audioFormat.getLong("durationUs");
                        if (j < 0) {
                            j = 0;
                        }
                        duration = j;
                    } catch (Exception e5) {
                        ClipLogger.ex("DecoderFactory", "Exception while retrieving duration", e5);
                        duration = 0;
                    }
                    if (duration == 0) {
                        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                        mediaMetadataRetriever.setDataSource(DecoderFactory.getCurrentContext(), Uri.parse(this.source));
                        try {
                            duration = 1000 * Long.decode(mediaMetadataRetriever.extractMetadata(9)).longValue();
                        } catch (Exception e6) {
                            ClipLogger.ex("DecoderFactory", "Exception while retrieving duration", e6);
                        }
                    }
                    if (duration == 0) {
                        MediaPlayer mediaPlayer = new MediaPlayer();
                        mediaPlayer.reset();
                        try {
                            mediaPlayer.setDataSource(DecoderFactory.getCurrentContext(), Uri.parse(this.source));
                            mediaPlayer.prepare();
                            duration = mediaPlayer.getDuration();
                            i = integer2;
                        } catch (Exception e7) {
                            ClipLogger.ex("DecoderFactory", "Exception while retrieving duration using media player", e7);
                            this.error = true;
                            i = integer2;
                        }
                    } else {
                        i = integer2;
                    }
                } else {
                    duration = 0;
                    i = 0;
                }
                this.sourceInfo = new AudioInfo(i, integer, AudioInfo.SampleType.Signed16Bit, duration);
                this.currentSampleNumber = 0L;
            }
        }
    }

    private void internalInitializeDecoder() {
        if (this.mediaExtractor != null && this.audioDecoder == null && this.sourceInfo != null && !this.error && this.sourceInfo.hasAudio()) {
            if (this.audioFormat == null) {
                ClipLogger.e("DecoderFactory", "Empty audio format");
                this.error = true;
                return;
            }
            String string = this.audioFormat.getString("mime");
            try {
                this.audioDecoder = MediaCodec.createDecoderByType(string);
            } catch (IOException e2) {
                ClipLogger.ex("DecoderFactory", "MediaCodec.createDecoderByType failed for mine type" + string, e2);
                this.error = true;
            }
            if (!this.error) {
                try {
                    this.audioDecoder.configure(this.audioFormat, (Surface) null, (MediaCrypto) null, 0);
                } catch (IllegalStateException e3) {
                    ClipLogger.ex("DecoderFactory", "AudioDecoder.configure failed for type: " + string + ", file: " + this.source, e3);
                    this.error = true;
                }
                if (!this.error) {
                    releaseCurrentOutputBuffer();
                    this.audioDecoder.start();
                    if (Build.VERSION.SDK_INT < 21) {
                        this.inputBuffers = this.audioDecoder.getInputBuffers();
                        this.outputBuffers = this.audioDecoder.getOutputBuffers();
                    }
                    this.endofOutputStream = false;
                    this.endofInputStream = false;
                    while (!this.decodeFormatRead) {
                        feedMoreEncodedData();
                        getDecodedData(null);
                    }
                }
            }
        }
    }

    @TargetApi(21)
    private ByteBuffer getInputBufferSDK21(int i) {
        return this.audioDecoder.getInputBuffer(i);
    }

    @TargetApi(21)
    private ByteBuffer getOutputBufferSDK21(int i) {
        return this.audioDecoder.getOutputBuffer(i);
    }

    private void feedMoreEncodedData() {
        int iDequeueInputBuffer;
        ByteBuffer inputBufferSDK21;
        if (!this.endofInputStream && (iDequeueInputBuffer = this.audioDecoder.dequeueInputBuffer(100L)) >= 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                inputBufferSDK21 = getInputBufferSDK21(iDequeueInputBuffer);
            } else {
                inputBufferSDK21 = this.inputBuffers[iDequeueInputBuffer];
            }
            int sampleData = this.mediaExtractor.readSampleData(inputBufferSDK21, 0);
            long sampleTime = 0;
            if (sampleData < 0 && this.mediaExtractor.hasCacheReachedEndOfStream()) {
                this.endofInputStream = true;
                sampleData = 0;
            } else {
                sampleTime = this.mediaExtractor.getSampleTime();
            }
            this.audioDecoder.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, sampleTime, this.endofInputStream ? 4 : 0);
            if (!this.endofInputStream) {
                this.mediaExtractor.advance();
            }
        }
    }

    private void getDecodedData(AudioReadData audioReadData) {
        ByteBuffer outputBufferSDK21;
        if (audioReadData != null) {
            audioReadData.setAudioData(this.currentSampleNumber, 0L, this.endofOutputStream, this.error, null);
        }
        if (!this.endofOutputStream && this.audioDecoder != null && !this.error) {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.audioDecoder.dequeueOutputBuffer(bufferInfo, 1000L);
            if (iDequeueOutputBuffer >= 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    outputBufferSDK21 = getOutputBufferSDK21(iDequeueOutputBuffer);
                } else {
                    outputBufferSDK21 = this.outputBuffers[iDequeueOutputBuffer];
                }
                if (audioReadData != null) {
                    int i = bufferInfo.size / (this.outputInfo.channels * 2);
                    outputBufferSDK21.position(0);
                    outputBufferSDK21.limit(bufferInfo.size);
                    this.currentOutputBufferState = new BufferState(iDequeueOutputBuffer, outputBufferSDK21, this.currentSampleNumber);
                    if ((bufferInfo.flags & 4) != 0) {
                        this.endofOutputStream = true;
                    }
                    readFromCurrentOutputBuffer(audioReadData);
                }
                if (this.endofOutputStream) {
                    releaseDecoder();
                    return;
                }
                return;
            }
            if (iDequeueOutputBuffer == -3) {
                this.outputBuffers = this.audioDecoder.getOutputBuffers();
            } else if (iDequeueOutputBuffer == -2) {
                MediaFormat outputFormat = this.audioDecoder.getOutputFormat();
                this.outputInfo = new AudioInfo(outputFormat.getInteger("sample-rate"), outputFormat.getInteger("channel-count"), AudioInfo.SampleType.Signed16Bit, this.sourceInfo.getDuration());
                this.decodeFormatRead = true;
            }
        }
    }

    private void releaseExtractor() {
        if (this.mediaExtractor != null) {
            this.mediaExtractor.release();
            this.mediaExtractor = null;
        }
    }

    private void releaseDecoder() {
        if (this.audioDecoder != null) {
            this.audioDecoder.stop();
            this.audioDecoder.release();
            this.audioDecoder = null;
        }
    }

    private void internalSeekTo(long j) {
        releaseCurrentOutputBuffer();
        if (this.audioDecoder != null && this.mediaExtractor != null && this.audioFormat != null) {
            this.requestedSeekSample = (int) (((j / 1000000.0d) * ((double) this.outputInfo.getSampleRate())) + 0.5d);
            this.endofOutputStream = false;
            this.endofInputStream = false;
            this.audioDecoder.flush();
            int i = 10;
            boolean z = false;
            long j2 = j;
            long sampleTime = j;
            while (!z) {
                this.mediaExtractor.seekTo(j2, 0);
                sampleTime = this.mediaExtractor.getSampleTime();
                if (sampleTime >= this.outputInfo.durationInMicroSeconds) {
                    ClipLogger.w("DecoderFactory", "Seek-Position beyond duration: " + j);
                    this.endofInputStream = true;
                    this.endofOutputStream = true;
                    z = true;
                } else if (sampleTime < 0) {
                    ClipLogger.e("DecoderFactory", "Seek-Result in negative time: " + j + " some error, last attempted: " + j2 + ", result: " + sampleTime);
                    this.error = true;
                    z = true;
                } else if (sampleTime >= 0 && sampleTime <= j) {
                    z = true;
                } else if (sampleTime != 0 && j2 == 0) {
                    this.error = true;
                    z = true;
                    ClipLogger.e("DecoderFactory", "Seek-Not able to seek properly, Requested: " + j + ", last attempted: " + j2 + ", result: " + sampleTime);
                } else {
                    ClipLogger.w("DecoderFactory", "Seek-Not able to seek properly, Requested: " + j + ", last attempted: " + j2 + ", result: " + sampleTime);
                    j2 -= (long) 200000;
                    if (j2 <= 0) {
                        j2 = 0;
                    }
                    i--;
                }
                if (i <= 0) {
                    ClipLogger.e("DecoderFactory", "Seek-Not able to seek properly, Requested: " + j + ", last attempted: " + j2 + ", result: " + sampleTime);
                    this.error = true;
                    z = true;
                }
            }
            this.currentSampleNumber = (int) (((sampleTime / 1000000.0d) * ((double) this.outputInfo.getSampleRate())) + 0.5d);
            ClipLogger.i("DecoderFactory", "Seek-Expected: " + j + ", Actual: " + sampleTime);
        }
    }

    class BufferState {
        private ByteBuffer buffer;
        private int bufferIndex;
        private int maxLimit;
        private long startSampleNo;

        public BufferState(int i, ByteBuffer byteBuffer, long j) {
            this.bufferIndex = i;
            this.buffer = byteBuffer;
            this.startSampleNo = j;
            this.maxLimit = byteBuffer.limit();
        }

        public boolean readBufferData(AudioReadData audioReadData) {
            boolean z;
            int iCapacity = audioReadData.getData().capacity();
            if (iCapacity <= this.maxLimit - this.buffer.position()) {
                z = false;
            } else {
                iCapacity = this.maxLimit - this.buffer.position();
                z = true;
            }
            long j = iCapacity / (SystemDefaultAudioDecoder.this.outputInfo.channels * 2);
            this.buffer.limit(iCapacity + this.buffer.position());
            audioReadData.setAudioData(this.startSampleNo, j, SystemDefaultAudioDecoder.this.endofOutputStream, SystemDefaultAudioDecoder.this.error, this.buffer);
            this.startSampleNo += j;
            this.buffer.position(this.buffer.limit());
            return z;
        }

        public void releaseBuffer() {
            if (SystemDefaultAudioDecoder.this.audioDecoder != null) {
                SystemDefaultAudioDecoder.this.audioDecoder.releaseOutputBuffer(this.bufferIndex, false);
            }
        }
    }
}
