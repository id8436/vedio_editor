package com.adobe.premiereclip.automode;

import android.util.Log;
import com.adobe.premiereclip.automode.AutoModeManager;

/* JADX INFO: loaded from: classes2.dex */
public class AddSamplesTask implements AutoModeManager.Task {
    private static final String TAG = "AddSamplesTask";
    private int mBin;
    private int mDelta;
    private Listener mListener;
    private int mNumBins;
    private int mOffset;
    private Runnable mRunnable = new Runnable() { // from class: com.adobe.premiereclip.automode.AddSamplesTask.1
        @Override // java.lang.Runnable
        public void run() {
            AddSamplesTask.this.setTaskThread(Thread.currentThread());
            try {
                Log.i(AddSamplesTask.TAG, "AddSamples offset: " + AddSamplesTask.this.mOffset + " nBins: " + AddSamplesTask.this.mNumBins + " pos: " + (AddSamplesTask.this.mBin * 1024));
                for (int i = AddSamplesTask.this.mNumBins; i > 0; i--) {
                    AddSamplesTask.this.mVelo.AddSFTBin(AddSamplesTask.this.mSamples, AddSamplesTask.this.mOffset, AddSamplesTask.this.mBin);
                    AddSamplesTask.this.mOffset += AddSamplesTask.this.mDelta;
                    AddSamplesTask.access$208(AddSamplesTask.this);
                }
                AddSamplesTask.this.mListener.doneAddSamplesTask(AddSamplesTask.this.mNumBins * AddSamplesTask.this.mDelta);
            } finally {
                AddSamplesTask.this.setTaskThread(null);
                Thread.interrupted();
            }
        }
    };
    private float[] mSamples;
    private Thread mTaskThread;
    private VeloBridge mVelo;

    public interface Listener {
        void doneAddSamplesTask(int i);
    }

    static /* synthetic */ int access$208(AddSamplesTask addSamplesTask) {
        int i = addSamplesTask.mBin;
        addSamplesTask.mBin = i + 1;
        return i;
    }

    public AddSamplesTask(VeloBridge veloBridge, float[] fArr, int i, int i2, int i3, int i4, Listener listener) {
        this.mVelo = veloBridge;
        this.mSamples = fArr;
        this.mOffset = i;
        this.mBin = i2;
        this.mNumBins = i3;
        this.mDelta = i4;
        this.mListener = listener;
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
}
