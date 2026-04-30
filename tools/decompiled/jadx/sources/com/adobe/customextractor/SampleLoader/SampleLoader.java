package com.adobe.customextractor.SampleLoader;

import android.net.Uri;
import android.util.Log;
import com.adobe.customextractor.DataSource.DataSource;
import com.adobe.customextractor.Util.Allocate.Allocator;
import com.adobe.customextractor.Util.Allocate.CustomCountAllocator;
import com.adobe.customextractor.extractor.Parser;

/* JADX INFO: loaded from: classes2.dex */
public class SampleLoader {
    private static final String TAG = "SampleLoader";
    private Allocator allocator;
    private LoaderCallback callback;
    private Loadable currentAsyncLoadable;
    private Thread currentThread;
    private DataSource dataSource;
    private Parser parser;
    private Uri sourceUri;
    private String trackType;

    public interface LoaderCallback {
        void onLoaderRelease();
    }

    public SampleLoader(LoaderCallback loaderCallback, DataSource dataSource, Uri uri, CustomCountAllocator customCountAllocator, Parser parser, String str) {
        this.callback = loaderCallback;
        this.dataSource = dataSource;
        this.sourceUri = uri;
        this.allocator = customCountAllocator;
        this.parser = parser;
        this.trackType = str;
    }

    public void release() {
        Log.i(TAG, "Release");
        stopLoading();
        this.callback.onLoaderRelease();
    }

    public void startLoadingAtOffset(long j, int i) {
        Log.i(TAG, "StartLoading:offset " + j);
        this.currentAsyncLoadable = new Loadable(this, j, this.dataSource, this.sourceUri, this.allocator, this.parser, i, this.trackType);
        long jRunSync = this.currentAsyncLoadable.runSync();
        if (!this.currentAsyncLoadable.isLoadFinished()) {
            Log.i(TAG, "Async Load start at " + jRunSync);
            this.currentAsyncLoadable.setOffset(jRunSync);
            this.currentThread = new Thread(this.currentAsyncLoadable);
            this.currentThread.start();
        }
    }

    public synchronized void stopLoading() {
        Log.i(TAG, "StopLoading");
        if (this.currentAsyncLoadable != null && !this.currentAsyncLoadable.isLoadFinished()) {
            try {
                Log.i(TAG, "StopLoading:Async Loadable found");
                this.currentAsyncLoadable.cancelLoading();
                if (this.currentThread != null) {
                    this.currentThread.interrupt();
                }
                Log.i(TAG, "StopLoading:GoingToWait");
                while (!this.currentAsyncLoadable.isLoadCancelled()) {
                    wait();
                }
                Log.i(TAG, "StopLoading:Notified");
            } catch (InterruptedException e2) {
                Log.i(TAG, "StopLoadingWaitReceivedInterrupt " + e2);
            }
            reset();
        } else {
            reset();
        }
    }

    public boolean isLoadingFinished() {
        if (this.currentAsyncLoadable != null) {
            return this.currentAsyncLoadable.isLoadFinished();
        }
        return true;
    }

    public boolean isLoading() {
        return (this.currentAsyncLoadable == null || this.currentAsyncLoadable.isLoadFinished()) ? false : true;
    }

    private void reset() {
        Log.i(TAG, "Resetting");
        this.currentAsyncLoadable = null;
        this.currentThread = null;
    }
}
