package c.a.a.a.a.b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class v {
    public static ExecutorService a(String str) {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(c(str));
        a(str, executorServiceNewSingleThreadExecutor);
        return executorServiceNewSingleThreadExecutor;
    }

    public static ScheduledExecutorService b(String str) {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(c(str));
        a(str, scheduledExecutorServiceNewSingleThreadScheduledExecutor);
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }

    public static final ThreadFactory c(String str) {
        return new w(str, new AtomicLong(1L));
    }

    private static final void a(String str, ExecutorService executorService) {
        a(str, executorService, 2L, TimeUnit.SECONDS);
    }

    public static final void a(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new y(str, executorService, j, timeUnit), "Crashlytics Shutdown Hook for " + str));
    }
}
