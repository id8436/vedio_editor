package com.google.android.exoplayer.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public final class Loader {
    private static final int MSG_END_OF_SOURCE = 0;
    private static final int MSG_ERROR = 1;
    private LoadTask currentTask;
    private final ExecutorService downloadExecutorService;
    private boolean loading;

    public interface Callback {
        void onLoadCanceled(Loadable loadable);

        void onLoadCompleted(Loadable loadable);

        void onLoadError(Loadable loadable, IOException iOException);
    }

    public interface Loadable {
        void cancelLoad();

        boolean isLoadCanceled();

        void load() throws InterruptedException, IOException;
    }

    public final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Exception exc) {
            super("Unexpected " + exc.getClass().getSimpleName() + ": " + exc.getMessage(), exc);
        }
    }

    public Loader(String str) {
        this.downloadExecutorService = Util.newSingleThreadExecutor(str);
    }

    public void startLoading(Loadable loadable, Callback callback) {
        Looper looperMyLooper = Looper.myLooper();
        Assertions.checkState(looperMyLooper != null);
        startLoading(looperMyLooper, loadable, callback);
    }

    public void startLoading(Looper looper, Loadable loadable, Callback callback) {
        Assertions.checkState(!this.loading);
        this.loading = true;
        this.currentTask = new LoadTask(looper, loadable, callback);
        this.downloadExecutorService.submit(this.currentTask);
    }

    public boolean isLoading() {
        return this.loading;
    }

    public void cancelLoading() {
        Assertions.checkState(this.loading);
        this.currentTask.quit();
    }

    public void release() {
        if (this.loading) {
            cancelLoading();
        }
        this.downloadExecutorService.shutdown();
    }

    @SuppressLint({"HandlerLeak"})
    final class LoadTask extends Handler implements Runnable {
        private static final String TAG = "LoadTask";
        private final Callback callback;
        private volatile Thread executorThread;
        private final Loadable loadable;

        public LoadTask(Looper looper, Loadable loadable, Callback callback) {
            super(looper);
            this.loadable = loadable;
            this.callback = callback;
        }

        public void quit() {
            this.loadable.cancelLoad();
            if (this.executorThread != null) {
                this.executorThread.interrupt();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.executorThread = Thread.currentThread();
                if (!this.loadable.isLoadCanceled()) {
                    this.loadable.load();
                }
                sendEmptyMessage(0);
            } catch (IOException e2) {
                obtainMessage(1, e2).sendToTarget();
            } catch (InterruptedException e3) {
                Assertions.checkState(this.loadable.isLoadCanceled());
                sendEmptyMessage(0);
            } catch (Exception e4) {
                Log.e(TAG, "Unexpected error loading stream", e4);
                obtainMessage(1, new UnexpectedLoaderException(e4)).sendToTarget();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            onFinished();
            if (this.loadable.isLoadCanceled()) {
                this.callback.onLoadCanceled(this.loadable);
            }
            switch (message.what) {
                case 0:
                    this.callback.onLoadCompleted(this.loadable);
                    break;
                case 1:
                    this.callback.onLoadError(this.loadable, (IOException) message.obj);
                    break;
            }
        }

        private void onFinished() {
            Loader.this.loading = false;
            Loader.this.currentTask = null;
        }
    }
}
