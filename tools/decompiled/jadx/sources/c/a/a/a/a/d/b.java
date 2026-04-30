package c.a.a.a.a.d;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: EnabledEventsStrategy.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> implements j<T> {
    static final int UNDEFINED_ROLLOVER_INTERVAL_SECONDS = -1;
    protected final Context context;
    final ScheduledExecutorService executorService;
    protected final d<T> filesManager;
    volatile int rolloverIntervalSeconds = -1;
    final AtomicReference<ScheduledFuture<?>> scheduledRolloverFutureRef = new AtomicReference<>();

    public b(Context context, ScheduledExecutorService scheduledExecutorService, d<T> dVar) {
        this.context = context;
        this.executorService = scheduledExecutorService;
        this.filesManager = dVar;
    }

    public void scheduleTimeBasedRollOverIfNeeded() {
        if (this.rolloverIntervalSeconds != -1) {
            scheduleTimeBasedFileRollOver(this.rolloverIntervalSeconds, this.rolloverIntervalSeconds);
        }
    }

    @Override // c.a.a.a.a.d.g
    public void sendEvents() {
        sendAndCleanUpIfSuccess();
    }

    @Override // c.a.a.a.a.d.k
    public void cancelTimeBasedFileRollOver() {
        if (this.scheduledRolloverFutureRef.get() != null) {
            c.a.a.a.a.b.m.a(this.context, "Cancelling time-based rollover because no events are currently being generated.");
            this.scheduledRolloverFutureRef.get().cancel(false);
            this.scheduledRolloverFutureRef.set(null);
        }
    }

    @Override // c.a.a.a.a.d.g
    public void deleteAllEvents() {
        this.filesManager.deleteAllEventsFiles();
    }

    public void recordEvent(T t) {
        c.a.a.a.a.b.m.a(this.context, t.toString());
        try {
            this.filesManager.writeEvent(t);
        } catch (IOException e2) {
            c.a.a.a.a.b.m.a(this.context, "Failed to write event.", e2);
        }
        scheduleTimeBasedRollOverIfNeeded();
    }

    @Override // c.a.a.a.a.d.k
    public boolean rollFileOver() {
        try {
            return this.filesManager.rollFileOver();
        } catch (IOException e2) {
            c.a.a.a.a.b.m.a(this.context, "Failed to roll file over.", e2);
            return false;
        }
    }

    protected void configureRollover(int i) {
        this.rolloverIntervalSeconds = i;
        scheduleTimeBasedFileRollOver(0L, this.rolloverIntervalSeconds);
    }

    public int getRollover() {
        return this.rolloverIntervalSeconds;
    }

    void scheduleTimeBasedFileRollOver(long j, long j2) {
        if (this.scheduledRolloverFutureRef.get() == null) {
            o oVar = new o(this.context, this);
            c.a.a.a.a.b.m.a(this.context, "Scheduling time based file roll over every " + j2 + " seconds");
            try {
                this.scheduledRolloverFutureRef.set(this.executorService.scheduleAtFixedRate(oVar, j, j2, TimeUnit.SECONDS));
            } catch (RejectedExecutionException e2) {
                c.a.a.a.a.b.m.a(this.context, "Failed to schedule time based file roll over", e2);
            }
        }
    }

    void sendAndCleanUpIfSuccess() {
        int size;
        Exception e2;
        l filesSender = getFilesSender();
        if (filesSender == null) {
            c.a.a.a.a.b.m.a(this.context, "skipping files send because we don't yet know the target endpoint");
            return;
        }
        c.a.a.a.a.b.m.a(this.context, "Sending all files");
        List<File> batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
        int i = 0;
        while (batchOfFilesToSend.size() > 0) {
            try {
                c.a.a.a.a.b.m.a(this.context, String.format(Locale.US, "attempt to send batch of %d files", Integer.valueOf(batchOfFilesToSend.size())));
                boolean zSend = filesSender.send(batchOfFilesToSend);
                if (zSend) {
                    size = batchOfFilesToSend.size() + i;
                    try {
                        this.filesManager.deleteSentFiles(batchOfFilesToSend);
                        i = size;
                    } catch (Exception e3) {
                        e2 = e3;
                        c.a.a.a.a.b.m.a(this.context, "Failed to send batch of analytics files to server: " + e2.getMessage(), e2);
                        i = size;
                    }
                }
                if (!zSend) {
                    break;
                } else {
                    batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
                }
            } catch (Exception e4) {
                size = i;
                e2 = e4;
            }
        }
        if (i == 0) {
            this.filesManager.deleteOldestInRollOverIfOverMax();
        }
    }
}
