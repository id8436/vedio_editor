package com.google.android.exoplayer.upstream;

import android.support.v7.widget.ActivityChooserView;
import java.io.IOException;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
public final class NetworkLock {
    public static final int DOWNLOAD_PRIORITY = 10;
    public static final int STREAMING_PRIORITY = 0;
    public static final NetworkLock instance = new NetworkLock();
    private final Object lock = new Object();
    private final PriorityQueue<Integer> queue = new PriorityQueue<>();
    private int highestPriority = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    public class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i, int i2) {
            super("Priority too low [priority=" + i + ", highest=" + i2 + "]");
        }
    }

    private NetworkLock() {
    }

    public void proceed(int i) throws InterruptedException {
        synchronized (this.lock) {
            while (this.highestPriority < i) {
                this.lock.wait();
            }
        }
    }

    public boolean proceedNonBlocking(int i) {
        boolean z;
        synchronized (this.lock) {
            z = this.highestPriority >= i;
        }
        return z;
    }

    public void proceedOrThrow(int i) throws PriorityTooLowException {
        synchronized (this.lock) {
            if (this.highestPriority < i) {
                throw new PriorityTooLowException(i, this.highestPriority);
            }
        }
    }

    public void add(int i) {
        synchronized (this.lock) {
            this.queue.add(Integer.valueOf(i));
            this.highestPriority = Math.min(this.highestPriority, i);
        }
    }

    public void remove(int i) {
        synchronized (this.lock) {
            this.queue.remove(Integer.valueOf(i));
            this.highestPriority = this.queue.isEmpty() ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : this.queue.peek().intValue();
            this.lock.notifyAll();
        }
    }
}
