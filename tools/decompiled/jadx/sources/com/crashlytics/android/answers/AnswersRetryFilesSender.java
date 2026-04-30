package com.crashlytics.android.answers;

import c.a.a.a.a.c.a.b;
import c.a.a.a.a.c.a.c;
import c.a.a.a.a.c.a.e;
import c.a.a.a.a.d.l;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class AnswersRetryFilesSender implements l {
    private static final int BACKOFF_MS = 1000;
    private static final int BACKOFF_POWER = 8;
    private static final double JITTER_PERCENT = 0.1d;
    private static final int MAX_RETRIES = 5;
    private final SessionAnalyticsFilesSender filesSender;
    private final RetryManager retryManager;

    public static AnswersRetryFilesSender build(SessionAnalyticsFilesSender sessionAnalyticsFilesSender) {
        return new AnswersRetryFilesSender(sessionAnalyticsFilesSender, new RetryManager(new e(new RandomBackoff(new c(1000L, 8), JITTER_PERCENT), new b(5))));
    }

    AnswersRetryFilesSender(SessionAnalyticsFilesSender sessionAnalyticsFilesSender, RetryManager retryManager) {
        this.filesSender = sessionAnalyticsFilesSender;
        this.retryManager = retryManager;
    }

    @Override // c.a.a.a.a.d.l
    public boolean send(List<File> list) {
        long jNanoTime = System.nanoTime();
        if (!this.retryManager.canRetry(jNanoTime)) {
            return false;
        }
        if (this.filesSender.send(list)) {
            this.retryManager.reset();
            return true;
        }
        this.retryManager.recordRetry(jNanoTime);
        return false;
    }
}
