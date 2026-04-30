package com.adobe.creativesdk.foundation.internal.net;

import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes.dex */
public class AdobePriorityFutureTask<V> extends FutureTask<V> implements Comparable<AdobePriorityFutureTask> {
    AdobeNetworkRequestPriority taskPriority;
    long taskSubmittedTime;

    public AdobePriorityFutureTask(Callable<V> callable, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        super(callable);
        this.taskPriority = AdobeNetworkRequestPriority.NORMAL;
        this.taskSubmittedTime = 0L;
        this.taskPriority = adobeNetworkRequestPriority;
        this.taskSubmittedTime = new Date().getTime();
    }

    public void setPriority(AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        this.taskPriority = adobeNetworkRequestPriority;
    }

    public AdobeNetworkRequestPriority getPriority() {
        return this.taskPriority;
    }

    public long getTaskSubmittedTime() {
        return this.taskSubmittedTime;
    }

    @Override // java.lang.Comparable
    public int compareTo(AdobePriorityFutureTask adobePriorityFutureTask) {
        int iOrdinal = adobePriorityFutureTask.getPriority().ordinal() - this.taskPriority.ordinal();
        if (iOrdinal == 0) {
            long taskSubmittedTime = this.taskSubmittedTime - adobePriorityFutureTask.getTaskSubmittedTime();
            if (taskSubmittedTime < 0) {
                return -1;
            }
            if (taskSubmittedTime > 0) {
                return 1;
            }
            return 0;
        }
        return iOrdinal;
    }
}
