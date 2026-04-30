package com.adobe.decoderfactory;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import com.adobe.cliputils.ClipLogger;
import com.adobe.customextractor.extractor.MediaExtractor;
import com.adobe.decoderfactory.AudioInfo;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class CustomAudioDecoder implements IAudioDecoder {
    private static final String TAG = "CustomAudioDecoder";
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
    private boolean decodeFormatRead = false;

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public String getName() {
        return "Custom decoder";
    }

    public boolean open(String str) {
        release();
        this.error = false;
        this.source = str;
        internalInitializeExtractor();
        internalInitializeDecoder();
        return (this.mediaExtractor == null || this.audioDecoder == null || this.error) ? false : true;
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public void release() {
        releaseDecoder();
        releaseExtractor();
        this.audioFormat = null;
    }

    private void internalInitializeExtractor() {
        long duration;
        int integer;
        int integer2 = 0;
        if (this.mediaExtractor == null && !this.error) {
            if (this.source == null || this.source.isEmpty()) {
                ClipLogger.e(TAG, "Empty source");
                this.error = true;
                return;
            }
            this.mediaExtractor = new MediaExtractor(DecoderFactory.getCurrentContext());
            this.mediaExtractor.setTrackType(DCXProjectKeys.kDCXKey_MediaRef_componentAudio_name);
            try {
                this.mediaExtractor.setDataSource(this.source);
            } catch (IOException e2) {
                ClipLogger.ex(TAG, "Custom MediaExtractor setDataSource failed for " + this.source, e2);
                this.error = true;
            }
            if (this.error) {
                this.error = false;
                try {
                    this.mediaExtractor.setDataSource(DecoderFactory.getCurrentContext(), Uri.fromFile(new File(this.source)), null);
                } catch (IOException e3) {
                    ClipLogger.ex(TAG, "Custom MediaExtractor setDataSource failed for " + this.source, e3);
                    this.error = true;
                }
            }
            if (!this.error) {
                this.audioFormat = null;
                int trackCount = this.mediaExtractor.getTrackCount();
                for (int i = 0; i < trackCount && this.audioFormat == null; i++) {
                    com.adobe.customextractor.Util.Media.MediaFormat trackFormat = this.mediaExtractor.getTrackFormat(i);
                    if (trackFormat != null && trackFormat.mimeType.contains("audio")) {
                        this.audioFormat = trackFormat.getFrameworkMediaFormatV16();
                        this.mediaExtractor.selectTrack(i);
                    }
                }
                if (this.audioFormat == null) {
                    ClipLogger.w(TAG, "Audio not available with source: " + this.source);
                    this.error = true;
                    return;
                }
                if (this.audioFormat != null) {
                    integer = this.audioFormat.getInteger("sample-rate");
                    integer2 = this.audioFormat.getInteger("channel-count");
                    try {
                        duration = this.audioFormat.getLong("durationUs");
                    } catch (Exception e4) {
                        ClipLogger.ex(TAG, "Exception while retrieving duration", e4);
                        duration = 0;
                    }
                    if (duration == 0) {
                        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                        mediaMetadataRetriever.setDataSource(DecoderFactory.getCurrentContext(), Uri.fromFile(new File(this.source)));
                        try {
                            duration = Long.decode(mediaMetadataRetriever.extractMetadata(9)).longValue() * 1000;
                        } catch (Exception e5) {
                            ClipLogger.ex(TAG, "Exception while retrieving duration from metadataretriever", e5);
                        }
                    }
                    if (duration == 0) {
                        MediaPlayer mediaPlayer = new MediaPlayer();
                        mediaPlayer.reset();
                        try {
                            mediaPlayer.setDataSource(DecoderFactory.getCurrentContext(), Uri.fromFile(new File(this.source)));
                            mediaPlayer.prepare();
                            duration = mediaPlayer.getDuration();
                        } catch (Exception e6) {
                            ClipLogger.ex(TAG, "Exception while retrieving duration using media player", e6);
                            this.error = true;
                        }
                    }
                } else {
                    duration = 0;
                    integer = 0;
                }
                this.mediaExtractor.seekTo(0L, 1);
                this.sourceInfo = new AudioInfo(integer, integer2, AudioInfo.SampleType.Signed16Bit, duration);
                this.currentSampleNumber = 0L;
            }
        }
    }

    private void internalInitializeDecoder() {
        if (this.mediaExtractor != null && this.audioDecoder == null && this.sourceInfo != null && !this.error && this.sourceInfo.hasAudio()) {
            if (this.audioFormat == null) {
                ClipLogger.e(TAG, "Empty audio format");
                this.error = true;
                return;
            }
            String string = this.audioFormat.getString("mime");
            try {
                this.audioDecoder = MediaCodec.createDecoderByType(string);
            } catch (IOException e2) {
                ClipLogger.ex(TAG, "MediaCodec.createDecoderByType failed for mine type" + string, e2);
                this.error = true;
            }
            if (!this.error) {
                this.audioDecoder.configure(this.audioFormat, (Surface) null, (MediaCrypto) null, 0);
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

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public boolean hasError() {
        return this.error;
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public synchronized void readNextSamples(AudioReadData audioReadData) {
        Log.i(TAG, "ReadNextSample ------------ ");
        audioReadData.setAudioData(this.currentSampleNumber, 0L, this.endofOutputStream, this.error, null);
        if (this.error || this.endofOutputStream) {
            Log.i(TAG, "End of stream " + this.endofOutputStream);
        } else {
            internalInitializeExtractor();
            internalInitializeDecoder();
            if (!this.error) {
                long j = -1;
                int i = 0;
                long j2 = 0;
                while (j2 == 0 && !this.endofOutputStream && !this.error) {
                    if (this.currentSampleNumber == -1) {
                        this.currentSampleNumber = (int) (((this.mediaExtractor.getSampleTime() / 1000000.0d) * ((double) this.outputInfo.getSampleRate())) + 0.5d);
                    }
                    if (!this.endofInputStream) {
                        feedMoreEncodedData();
                    }
                    getDecodedData(audioReadData);
                    long noOfSamples = audioReadData.getNoOfSamples();
                    if (this.requestedSeekSample == -1 || this.currentSampleNumber == -1) {
                        j2 = noOfSamples;
                    } else {
                        Log.i(TAG, "ReadNextSample:requestedSeek " + this.requestedSeekSample);
                        long sampleTime = j == -1 ? (int) (((this.mediaExtractor.getSampleTime() / 1000000.0d) * ((double) this.outputInfo.getSampleRate())) + 0.5d) : j;
                        Log.i(TAG, "ReadNextSample:CurrentFeedSample " + sampleTime);
                        if (this.requestedSeekSample < sampleTime) {
                            Log.i(TAG, "ReadNextSample:temp > request");
                            i++;
                            if (i > 10000) {
                                this.error = true;
                            }
                            sampleTime = -1;
                            noOfSamples = 0;
                        } else if (this.requestedSeekSample > sampleTime + noOfSamples) {
                            Log.i(TAG, "ReadNextSample:Pushing samples towards seek: samplesRead " + noOfSamples);
                            sampleTime += noOfSamples;
                            this.currentSampleNumber = sampleTime;
                            noOfSamples = 0;
                        } else {
                            Log.i(TAG, "ReadNextSample:Seek Complete: currentSN " + this.currentSampleNumber);
                            this.requestedSeekSample = -1L;
                            this.currentSampleNumber = sampleTime;
                        }
                        j = sampleTime;
                        j2 = noOfSamples;
                    }
                }
                if (this.currentSampleNumber != audioReadData.getStartSampleNumber()) {
                    Log.i(TAG, "ReadNextSample: currSN changed after decode");
                    audioReadData.setStartSampleNumber(this.currentSampleNumber);
                }
                long j3 = this.endofOutputStream ? 0L : j2;
                this.requestedSeekSample = -1L;
                this.currentSampleNumber = j3 + this.currentSampleNumber;
            }
        }
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
            if (sampleData == -2) {
                Log.i(TAG, "FeedData: Nothing read");
                sampleData = 0;
            } else if (sampleData == -1 && this.mediaExtractor.hasCacheReachedEndOfStream()) {
                this.endofInputStream = true;
                Log.i(TAG, "FeedData: End of stream");
                sampleData = 0;
            } else {
                sampleTime = this.mediaExtractor.getSampleTime();
                Log.i(TAG, "FeedData: samplesize " + sampleData + " present Time " + sampleTime);
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
                    audioReadData.setAudioData(this.currentSampleNumber, i, (bufferInfo.flags & 4) != 0, this.error, outputBufferSDK21);
                }
                this.audioDecoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                if ((bufferInfo.flags & 4) != 0) {
                    this.endofOutputStream = true;
                    releaseDecoder();
                    return;
                }
                return;
            }
            if (iDequeueOutputBuffer == -3) {
                this.outputBuffers = this.audioDecoder.getOutputBuffers();
                return;
            }
            if (iDequeueOutputBuffer == -2) {
                MediaFormat outputFormat = this.audioDecoder.getOutputFormat();
                int integer = outputFormat.getInteger("sample-rate");
                int integer2 = outputFormat.getInteger("channel-count");
                Log.i(TAG, "Format Read: sampleRate " + integer + " channels " + integer2);
                this.outputInfo = new AudioInfo(integer, integer2, AudioInfo.SampleType.Signed16Bit, this.sourceInfo.getDuration());
                this.decodeFormatRead = true;
            }
        }
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public synchronized void seekTo(long j) {
        Log.i(TAG, "SeekTo: " + j);
        internalInitializeExtractor();
        internalInitializeDecoder();
        if (!this.error && this.outputInfo != null) {
            internalSeekTo(j);
        }
    }

    private void internalSeekTo(long j) {
        if (this.audioDecoder != null && this.mediaExtractor != null && this.audioFormat != null) {
            this.requestedSeekSample = (int) (((j / 1000000.0d) * ((double) this.outputInfo.getSampleRate())) + 0.5d);
            this.endofOutputStream = false;
            this.endofInputStream = false;
            this.audioDecoder.flush();
            this.mediaExtractor.seekTo(j, 1);
            this.currentSampleNumber = (int) (((this.mediaExtractor.getSampleTime() / 1000000.0d) * ((double) this.outputInfo.getSampleRate())) + 0.5d);
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
    public boolean isEOF() {
        return this.endofOutputStream;
    }

    protected void finalyze() {
        release();
        this.error = false;
    }

    @Override // com.adobe.decoderfactory.IAudioDecoder
    public String getSource() {
        return this.source;
    }

    @TargetApi(21)
    private ByteBuffer getInputBufferSDK21(int i) {
        return this.audioDecoder.getInputBuffer(i);
    }

    @TargetApi(21)
    private ByteBuffer getOutputBufferSDK21(int i) {
        return this.audioDecoder.getOutputBuffer(i);
    }
}
