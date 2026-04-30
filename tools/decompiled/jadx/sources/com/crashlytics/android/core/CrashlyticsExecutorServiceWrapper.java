package com.crashlytics.android.core;

import android.os.Looper;
import c.a.a.a.f;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsExecutorServiceWrapper {
    private final ExecutorService executorService;

    public CrashlyticsExecutorServiceWrapper(ExecutorService executorService) {
        this.executorService = executorService;
    }

    <T> T executeSyncLoggingException(Callable<T> callable) {
        T t = null;
        try {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                t = this.executorService.submit(callable).get(4L, TimeUnit.SECONDS);
            } else {
                t = this.executorService.submit(callable).get();
            }
        } catch (RejectedExecutionException e2) {
            f.h().a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
        } catch (Exception e3) {
            f.h().e(CrashlyticsCore.TAG, "Failed to execute task.", e3);
        }
        return t;
    }

    Future<?> executeAsync(final Runnable runnable) {
        try {
            return this.executorService.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsExecutorServiceWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } catch (Exception e2) {
                        f.h().e(CrashlyticsCore.TAG, "Failed to execute task.", e2);
                    }
                }
            });
        } catch (RejectedExecutionException e2) {
            f.h().a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    <T> Future<T> executeAsync(final Callable<T> callable) {
        try {
            return this.executorService.submit(new Callable<T>() { // from class: com.crashlytics.android.core.CrashlyticsExecutorServiceWrapper.2
                @Override // java.util.concurrent.Callable
                public T call() throws Exception {
                    try {
                        return (T) callable.call();
                    } catch (Exception e2) {
                        f.h().e(CrashlyticsCore.TAG, "Failed to execute task.", e2);
                        return null;
                    }
                }
            });
        } catch (RejectedExecutionException e2) {
            f.h().a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }
}
