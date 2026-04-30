package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FileLockManager {
    private static final String TAG = FileLockManager.class.getSimpleName();
    private static volatile FileLockManager mInstance;
    private volatile Map<String, FileLock> mLockMap = new HashMap();

    private FileLockManager() {
    }

    public static FileLockManager getInstance() {
        FileLockManager fileLockManager = mInstance;
        if (fileLockManager == null) {
            synchronized (FileLockManager.class) {
                fileLockManager = mInstance;
                if (fileLockManager == null) {
                    fileLockManager = new FileLockManager();
                    mInstance = fileLockManager;
                }
            }
        }
        return fileLockManager;
    }

    public void lock(String str) {
        FileLock fileLock;
        synchronized (this) {
            if (this.mLockMap.containsKey(str)) {
                fileLock = this.mLockMap.get(str);
            } else {
                fileLock = new FileLock();
                this.mLockMap.put(str, fileLock);
            }
            fileLock.count.getAndIncrement();
        }
        fileLock.lock.lock();
    }

    public void unlock(String str) {
        synchronized (this) {
            if (this.mLockMap.containsKey(str)) {
                FileLock fileLock = this.mLockMap.get(str);
                if (fileLock.count.getAndDecrement() == 1) {
                    this.mLockMap.remove(str);
                }
                fileLock.lock.unlock();
            }
        }
    }
}
