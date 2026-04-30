package com.adobe.premiereclip.automode;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.automode.AddSamplesTask;
import com.adobe.premiereclip.automode.AudioDecodeTask;
import com.adobe.premiereclip.automode.AutoModeAudio;
import com.adobe.premiereclip.automode.AutoModeManager;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ImpactDataGenerator implements AddSamplesTask.Listener {
    private static final String TAG = "ImpactDataGenerator";
    private float mAddSamplesPercent;
    private int mBinSize;
    private float mDecodePercent;
    private long mDecodedSamples;
    private boolean mHaveAllSamples;
    private long mImpactStartTime;
    private int mNumWorkingAddTasks;
    private int mPaddingSize;
    private AudioSamples mPrevSamples;
    private long mProcessedSamples;
    private AutoModeAudio.ImpactDataResults mResults;
    private long mTotalSamples;
    private VeloBridge mVelo = new VeloBridge();
    private float mVeloSyncPercent;
    private static int MAX_BINS_PER_TASK = 100;
    private static float DECODE_FACTOR = 0.2f;
    private static float ADD_SAMPLES_FACTOR = 0.75f;
    private static float VELOSYNC_FACTOR = 0.05f;

    public void getImpactData(Context context, String str, AutoModeAudio.ImpactDataResults impactDataResults) {
        this.mVeloSyncPercent = 0.0f;
        this.mAddSamplesPercent = 0.0f;
        this.mDecodePercent = 0.0f;
        this.mResults = impactDataResults;
        this.mNumWorkingAddTasks = 0;
        this.mHaveAllSamples = false;
        this.mPrevSamples = null;
        this.mProcessedSamples = 0L;
        this.mDecodedSamples = 0L;
        this.mImpactStartTime = System.currentTimeMillis();
        AutoModeManager.getSharedInstance().StartTask(new AudioDecodeTask(context, str, this.mVelo, new AudioDecodeTask.Listener() { // from class: com.adobe.premiereclip.automode.ImpactDataGenerator.1
            @Override // com.adobe.premiereclip.automode.AudioDecodeTask.Listener
            public void onSuccess() {
                ImpactDataGenerator.this.mDecodePercent = 100.0f;
                ImpactDataGenerator.this.sendProgressNotification();
                ImpactDataGenerator.this.processLastSamples();
            }

            @Override // com.adobe.premiereclip.automode.AudioDecodeTask.Listener
            public void onProgress(AudioSamples audioSamples) {
                ImpactDataGenerator.this.mDecodedSamples += (long) audioSamples.count;
                ImpactDataGenerator.this.mDecodePercent = (ImpactDataGenerator.this.mDecodedSamples * 100.0f) / ImpactDataGenerator.this.mTotalSamples;
                if (ImpactDataGenerator.this.mDecodePercent > 100.0f) {
                    ImpactDataGenerator.this.mDecodePercent = 100.0f;
                }
                ImpactDataGenerator.this.sendProgressNotification();
                ImpactDataGenerator.this.processSamples(audioSamples);
            }

            @Override // com.adobe.premiereclip.automode.AudioDecodeTask.Listener
            public void onInfo(int i, int i2) {
                ImpactDataGenerator.this.mVelo.InitForThreading(i);
                ImpactDataGenerator.this.mBinSize = ImpactDataGenerator.this.mVelo.GetSamplesPerSpectrogramBin();
                ImpactDataGenerator.this.mPaddingSize = ImpactDataGenerator.this.mVelo.GetWindowBufferPadding();
                ImpactDataGenerator.this.mTotalSamples = i2;
                ImpactDataGenerator.this.mVelo.SetAudioDurationInSamples(i2);
            }

            @Override // com.adobe.premiereclip.automode.AudioDecodeTask.Listener
            public void onError(String str2) {
                ImpactDataGenerator.this.mResults.onError(str2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendProgressNotification() {
        this.mResults.onProgress((this.mDecodePercent * DECODE_FACTOR) + (this.mAddSamplesPercent * ADD_SAMPLES_FACTOR) + (this.mVeloSyncPercent * VELOSYNC_FACTOR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processSamples(AudioSamples audioSamples) {
        int i;
        if (this.mPrevSamples != null) {
            if (audioSamples.count >= this.mPaddingSize) {
                System.arraycopy(audioSamples.samples, 0, this.mPrevSamples.samples, this.mPrevSamples.count, this.mPaddingSize);
            } else {
                System.arraycopy(audioSamples.samples, 0, this.mPrevSamples.samples, this.mPrevSamples.count, audioSamples.count);
                Arrays.fill(this.mPrevSamples.samples, this.mPrevSamples.count + audioSamples.count, this.mPrevSamples.samples.length - 1, 0.0f);
            }
            addTask(new AddSamplesTask(this.mVelo, this.mPrevSamples.samples, 0, (int) (this.mPrevSamples.position / ((long) this.mBinSize)), this.mPrevSamples.count / this.mBinSize, this.mBinSize, this));
        }
        int i2 = (audioSamples.count - this.mPaddingSize) / this.mBinSize;
        if (i2 > 0) {
            int i3 = ((MAX_BINS_PER_TASK + i2) - 1) / MAX_BINS_PER_TASK;
            int i4 = i2 / i3;
            int i5 = (int) (audioSamples.position / ((long) this.mBinSize));
            int i6 = 0;
            int i7 = 0;
            while (i6 < i3) {
                addTask(new AddSamplesTask(this.mVelo, audioSamples.samples, i7, i5, i6 < i3 + (-1) ? i4 : i2 - ((i3 - 1) * i4), this.mBinSize, this));
                i7 += this.mBinSize * i4;
                i5 += i4;
                i6++;
            }
            i = i2;
        } else {
            i = 0;
        }
        this.mPrevSamples = new AudioSamples(new float[this.mBinSize + (this.mPaddingSize * 2)], 0, audioSamples.count - (this.mBinSize * i), audioSamples.position + ((long) (this.mBinSize * i)));
        System.arraycopy(audioSamples.samples, i * this.mBinSize, this.mPrevSamples.samples, 0, this.mPrevSamples.count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processLastSamples() {
        int i;
        Arrays.fill(this.mPrevSamples.samples, this.mPrevSamples.count, this.mPrevSamples.samples.length - 1, 0.0f);
        addTask(new AddSamplesTask(this.mVelo, this.mPrevSamples.samples, 0, (int) (this.mPrevSamples.position / ((long) this.mBinSize)), this.mPrevSamples.count / this.mBinSize, this.mBinSize, this));
        synchronized (this) {
            this.mHaveAllSamples = true;
            i = this.mNumWorkingAddTasks;
        }
        if (i == 0) {
            doneAddSamplesTask(0);
        }
    }

    @Override // com.adobe.premiereclip.automode.AddSamplesTask.Listener
    public void doneAddSamplesTask(int i) {
        int i2;
        boolean z;
        synchronized (this) {
            this.mProcessedSamples += (long) i;
            this.mAddSamplesPercent = (this.mProcessedSamples * 100.0f) / this.mTotalSamples;
            if (this.mAddSamplesPercent > 100.0f) {
                this.mAddSamplesPercent = 100.0f;
            }
            this.mNumWorkingAddTasks--;
            i2 = this.mNumWorkingAddTasks;
            z = this.mHaveAllSamples;
        }
        if (z && i2 == 0) {
            sendProgressNotification();
            float[] fArrProcessRequest = this.mVelo.ProcessRequest();
            Log.i(TAG, "Finished getImpactData  " + (System.currentTimeMillis() - this.mImpactStartTime) + " ms.");
            this.mResults.onSuccess(fArrProcessRequest);
        }
    }

    private void addTask(AutoModeManager.Task task) {
        synchronized (this) {
            this.mNumWorkingAddTasks++;
        }
        AutoModeManager.getSharedInstance().StartTask(task);
    }

    protected void finalize() throws Throwable {
        try {
            if (this.mVelo != null) {
                this.mVelo.dispose();
            }
        } finally {
            super.finalize();
        }
    }
}
