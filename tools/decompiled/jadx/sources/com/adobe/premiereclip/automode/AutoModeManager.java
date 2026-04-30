package com.adobe.premiereclip.automode;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class AutoModeManager {
    private static final int CORE_POOL_SIZE = 8;
    private static final int KEEP_ALIVE_TIME = 1;
    private static final int MAXIMUM_POOL_SIZE = 8;
    private static final TimeUnit KEEP_ALIVE_TIME_UNIT = TimeUnit.SECONDS;
    private static int NUMBER_OF_CORES = Runtime.getRuntime().availableProcessors();
    private static AutoModeManager _sharedInstance = null;
    private final BlockingQueue<Runnable> mWorkQueue = new LinkedBlockingQueue();
    private final ThreadPoolExecutor mThreadPool = new ThreadPoolExecutor(8, 8, 1, KEEP_ALIVE_TIME_UNIT, this.mWorkQueue);

    /* JADX INFO: loaded from: classes2.dex */
    public interface Task {
        Runnable getRunnable();

        void setTaskThread(Thread thread);
    }

    public static AutoModeManager getSharedInstance() {
        synchronized (AutoModeManager.class) {
            if (_sharedInstance == null) {
                _sharedInstance = new AutoModeManager();
            }
        }
        return _sharedInstance;
    }

    public void Initialize() {
    }

    public void Release() {
    }

    protected void StartTask(Task task) {
        this.mThreadPool.execute(task.getRunnable());
    }

    private AutoModeManager() {
    }
}
