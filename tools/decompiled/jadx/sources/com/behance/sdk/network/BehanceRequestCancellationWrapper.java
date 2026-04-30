package com.behance.sdk.network;

/* JADX INFO: loaded from: classes.dex */
public class BehanceRequestCancellationWrapper {
    private boolean cancelled = false;

    public void setCancelled() {
        this.cancelled = true;
    }

    public boolean isCancelled() {
        return this.cancelled;
    }
}
