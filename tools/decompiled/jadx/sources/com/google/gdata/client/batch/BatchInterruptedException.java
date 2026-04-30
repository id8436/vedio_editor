package com.google.gdata.client.batch;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.IFeed;
import com.google.gdata.data.batch.BatchInterrupted;
import com.google.gdata.data.batch.IBatchInterrupted;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class BatchInterruptedException extends ServiceException {
    private final IFeed feed;
    private final IBatchInterrupted interrupted;

    public BatchInterruptedException(IFeed iFeed, IBatchInterrupted iBatchInterrupted) {
        super("Batch Interrupted (some operations might have succeeded) : " + iBatchInterrupted.getReason());
        this.feed = iFeed;
        this.interrupted = iBatchInterrupted;
    }

    @Deprecated
    public BatchInterrupted getBatchInterrupted() {
        Preconditions.checkState(this.interrupted == null || (this.interrupted instanceof BatchInterrupted), "Use getIBatchInterrupted() instead");
        return (BatchInterrupted) this.interrupted;
    }

    public IBatchInterrupted getIBatchInterrupted() {
        return this.interrupted;
    }

    @Deprecated
    public BaseFeed<?, ?> getFeed() {
        Preconditions.checkState(this.feed == null || (this.feed instanceof BaseFeed), "Use getIFeed() instead");
        return (BaseFeed) this.feed;
    }

    public IFeed getIFeed() {
        return this.feed;
    }
}
