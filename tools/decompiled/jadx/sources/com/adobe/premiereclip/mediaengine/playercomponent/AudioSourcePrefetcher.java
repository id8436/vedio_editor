package com.adobe.premiereclip.mediaengine.playercomponent;

import android.util.Log;
import com.adobe.audiomixer.IAudioSequence;
import com.adobe.audiomixer.VideoTime;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public class AudioSourcePrefetcher implements Runnable {
    private IAudioSequence audioSequence;
    private Thread workerThread;
    String TAG = "AudioSourcePrefetcher";
    private Object syncObjectForPrefetchDataUpdate = new Object();
    private Object syncObjectForPrefetchUpdate = new Object();
    private int maxPrefetchedAudio = 40;
    private ConcurrentLinkedQueue<VideoTime> readSampleQueue = new ConcurrentLinkedQueue<>();
    private ConcurrentLinkedQueue<AudioData> audioPrefetchedData = new ConcurrentLinkedQueue<>();
    private boolean cancel = false;
    private long currentPrefetchSamplePosition = 0;
    private boolean eofReached = false;

    public class AudioData {
        private ByteBuffer audioBuffer;
        private long numberOfSamples;
        private long startSampleNumber;

        public AudioData(int i) {
            if (i != 0) {
                this.audioBuffer = ByteBuffer.allocateDirect(i);
                this.audioBuffer.position(0);
            }
            this.startSampleNumber = 0L;
            this.numberOfSamples = 0L;
        }

        public ByteBuffer getAudioBuffer() {
            return this.audioBuffer;
        }

        public void setStartSampleNumber(long j) {
            this.startSampleNumber = j;
        }

        public long getStartSampleNumber() {
            return this.startSampleNumber;
        }

        public void setNumberOfSamples(long j) {
            this.numberOfSamples = j;
        }

        public long getNumberOfSamples() {
            return this.numberOfSamples;
        }
    }

    public AudioSourcePrefetcher(IAudioSequence iAudioSequence) {
        this.audioSequence = iAudioSequence;
    }

    public AudioData getNextAudioData() {
        AudioData audioDataPeek;
        if (this.audioPrefetchedData.size() == 0) {
            if (this.eofReached) {
                return new AudioData(0);
            }
            return null;
        }
        synchronized (this.syncObjectForPrefetchDataUpdate) {
            audioDataPeek = this.audioPrefetchedData.peek();
            this.audioPrefetchedData.remove(audioDataPeek);
        }
        return audioDataPeek;
    }

    public void start() {
        this.cancel = false;
        if (this.workerThread == null) {
            this.workerThread = new Thread(this);
            this.workerThread.start();
        }
    }

    public void stop() {
        if (this.workerThread != null) {
            this.cancel = true;
            try {
                this.workerThread.join();
            } catch (InterruptedException e2) {
                Log.e(this.TAG, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkFailedToDownload, e2);
            }
            this.workerThread = null;
        }
    }

    public void seek(long j) {
        synchronized (this.syncObjectForPrefetchUpdate) {
            this.currentPrefetchSamplePosition = j;
            this.audioPrefetchedData.clear();
            this.eofReached = false;
        }
    }

    public boolean hasData() {
        boolean z;
        synchronized (this.syncObjectForPrefetchDataUpdate) {
            z = this.audioPrefetchedData.size() != 0;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        Log.i(this.TAG, "Starting Async sample reader thread...");
        while (!this.cancel) {
            if (this.audioPrefetchedData.size() > this.maxPrefetchedAudio || this.eofReached) {
                try {
                    Thread.sleep(5L, 0);
                } catch (InterruptedException e2) {
                }
            } else {
                synchronized (this.syncObjectForPrefetchUpdate) {
                    AudioData audioData = new AudioData(this.audioSequence.getBufferSize());
                    long samples = this.audioSequence.readSamples(new VideoTime(this.currentPrefetchSamplePosition, this.audioSequence.getSampleRate()), audioData.getAudioBuffer());
                    audioData.setNumberOfSamples(samples);
                    audioData.setStartSampleNumber(this.currentPrefetchSamplePosition);
                    if (samples == 0) {
                        this.eofReached = true;
                    } else {
                        this.currentPrefetchSamplePosition = samples + this.currentPrefetchSamplePosition;
                    }
                    synchronized (this.syncObjectForPrefetchDataUpdate) {
                        this.audioPrefetchedData.add(audioData);
                    }
                }
            }
        }
        Log.i(this.TAG, "Exiting from Async sample reader thread...");
    }
}
