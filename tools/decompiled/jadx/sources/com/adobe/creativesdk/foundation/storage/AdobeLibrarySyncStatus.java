package com.adobe.creativesdk.foundation.storage;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibrarySyncStatus {
    private Date lastSyncTime = null;
    private boolean syncing = false;

    public Date getLastSyncTime() {
        if (this.lastSyncTime == null) {
            return null;
        }
        return new Date(this.lastSyncTime.getTime());
    }

    public boolean isSyncing() {
        return this.syncing;
    }

    void setLastSyncTime(Date date) {
        this.lastSyncTime = date;
    }

    void setSyncing(boolean z) {
        this.syncing = z;
    }
}
