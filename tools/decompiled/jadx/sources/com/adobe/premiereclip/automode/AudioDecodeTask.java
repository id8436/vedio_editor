package com.adobe.premiereclip.automode;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import com.adobe.decoderfactory.AudioInfo;
import com.adobe.decoderfactory.AudioReadData;
import com.adobe.decoderfactory.DecoderFactory;
import com.adobe.decoderfactory.IAudioDecoder;
import com.adobe.premiereclip.automode.AutoModeManager;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class AudioDecodeTask implements AutoModeManager.Task {
    private static final int AUDIO_BUFFER_SIZE = 65536;
    private static final int CHUNKSIZE = 240000;
    private static final String TAG = "AudioDecodeTask";
    private long mChunkTime;
    private Context mContext;
    private IAudioDecoder mDecoder;
    private AudioInfo mInfo;
    private Listener mListener;
    private Runnable mRunnable = new Runnable() { // from class: com.adobe.premiereclip.automode.AudioDecodeTask.1
        @Override // java.lang.Runnable
        public void run() {
            AudioDecodeTask.this.setTaskThread(Thread.currentThread());
            try {
                AudioDecodeTask.this.mDecoder = DecoderFactory.getAudioDecoder(-1, AudioDecodeTask.this.mUri);
                AudioDecodeTask.this.mDecoder.seekTo(0L);
                AudioDecodeTask.this.getInfo();
                if (AudioDecodeTask.this.decodeAudio()) {
                    AudioDecodeTask.this.mListener.onSuccess();
                }
                AudioDecodeTask.this.mDecoder.release();
            } finally {
                AudioDecodeTask.this.setTaskThread(null);
                Thread.interrupted();
            }
        }
    };
    private Thread mTaskThread;
    private String mUri;
    private VeloBridge mVelo;

    public interface Listener {
        void onError(String str);

        void onInfo(int i, int i2);

        void onProgress(AudioSamples audioSamples);

        void onSuccess();
    }

    public AudioDecodeTask(Context context, String str, VeloBridge veloBridge, Listener listener) {
        this.mListener = listener;
        this.mContext = context;
        this.mUri = str;
        this.mVelo = veloBridge;
    }

    public void getInfo() {
        this.mInfo = this.mDecoder.getSourceInfo();
        if (!this.mInfo.hasAudio()) {
            this.mListener.onError("Data source does not contain audio");
            return;
        }
        int sampleRate = this.mInfo.getSampleRate();
        this.mListener.onInfo(sampleRate, (int) Math.round((this.mInfo.getDuration() / 1000000.0d) * ((double) sampleRate)));
    }

    @Override // com.adobe.premiereclip.automode.AutoModeManager.Task
    public Runnable getRunnable() {
        return this.mRunnable;
    }

    public Thread getTaskThread() {
        Thread thread;
        synchronized (AutoModeManager.getSharedInstance()) {
            thread = this.mTaskThread;
        }
        return thread;
    }

    @Override // com.adobe.premiereclip.automode.AutoModeManager.Task
    public void setTaskThread(Thread thread) {
        synchronized (AutoModeManager.getSharedInstance()) {
            this.mTaskThread = thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"deprecation"})
    public boolean decodeAudio() {
        long j;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = 0;
        int iGetSamplesPerSpectrogramBin = this.mVelo.GetSamplesPerSpectrogramBin();
        AudioReadData audioReadData = new AudioReadData(ByteBuffer.allocate(65536));
        int i = (CHUNKSIZE / iGetSamplesPerSpectrogramBin) * iGetSamplesPerSpectrogramBin;
        float[] fArr = null;
        AudioSamples audioSamples = new AudioSamples();
        boolean z = this.mInfo.getChannels() == 2;
        int i2 = i;
        while (!this.mDecoder.isEOF()) {
            this.mDecoder.readNextSamples(audioReadData);
            long noOfSamples = audioReadData.getNoOfSamples();
            if (noOfSamples > 0) {
                ShortBuffer shortBufferAsShortBuffer = audioReadData.getData().order(ByteOrder.nativeOrder()).asShortBuffer();
                if (z) {
                    int i3 = 0;
                    while (i3 < noOfSamples) {
                        if (i2 == i) {
                            if (fArr != null) {
                                processSampleBuffer(fArr, audioSamples);
                            }
                            i2 = 0;
                            fArr = new float[i];
                        }
                        fArr[i2] = (shortBufferAsShortBuffer.get() + shortBufferAsShortBuffer.get()) / 32768.0f;
                        i3++;
                        i2++;
                    }
                } else {
                    int i4 = 0;
                    while (i4 < noOfSamples) {
                        if (i2 == i) {
                            if (fArr != null) {
                                processSampleBuffer(fArr, audioSamples);
                            }
                            i2 = 0;
                            fArr = new float[i];
                        }
                        float f2 = shortBufferAsShortBuffer.get();
                        for (int i5 = 1; i5 < this.mInfo.getChannels(); i5++) {
                            f2 += shortBufferAsShortBuffer.get();
                        }
                        fArr[i2] = f2 / 32768.0f;
                        i4++;
                        i2++;
                    }
                }
                j = j2 + noOfSamples;
            } else {
                j = j2;
            }
            j2 = j;
        }
        if (fArr != null && i2 > 0) {
            processSampleBuffer(Arrays.copyOf(fArr, i2), audioSamples);
        }
        Log.i(TAG, "Decoded  " + j2 + " samples in " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d) + " seconds.");
        return true;
    }

    private void processSampleBuffer(float[] fArr, AudioSamples audioSamples) {
        int length = fArr.length;
        audioSamples.samples = fArr;
        audioSamples.offset = 0;
        audioSamples.count = length;
        this.mListener.onProgress(audioSamples.m6clone());
        audioSamples.position += (long) length;
        double d2 = this.mChunkTime;
        this.mChunkTime = System.currentTimeMillis();
        Log.i(TAG, "Decoded  " + length + " samples in " + (this.mChunkTime - d2) + " ms.");
    }
}
