package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: FileLockManager.java */
/* JADX INFO: loaded from: classes.dex */
class FileLock {
    ReentrantLock lock = new ReentrantLock();
    AtomicInteger count = new AtomicInteger(0);

    FileLock() {
    }
}
