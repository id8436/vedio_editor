package com.adobe.sync;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class CompositeRetrySyncManager {
    private static final int MAX_RETRY_COUNT = 5;
    private static CompositeRetrySyncManager instance = null;
    private HashMap<String, Integer> retryCompositeSyncCount = new HashMap<>();

    private CompositeRetrySyncManager() {
    }

    public static CompositeRetrySyncManager getInstance() {
        if (instance == null) {
            instance = new CompositeRetrySyncManager();
        }
        return instance;
    }

    public boolean canRetryCompositeSync(String str) {
        if (this.retryCompositeSyncCount.containsKey(str)) {
            Integer num = this.retryCompositeSyncCount.get(str);
            if (num.intValue() < 5) {
                this.retryCompositeSyncCount.put(str, new Integer(num.intValue() + 1));
                return true;
            }
            return false;
        }
        this.retryCompositeSyncCount.put(str, new Integer(1));
        return true;
    }

    public void resetRetryCountAllCompositesSync() {
        this.retryCompositeSyncCount = new HashMap<>();
    }

    public void resetRetryCountCompositeSync(String str) {
        this.retryCompositeSyncCount.put(str, new Integer(0));
    }
}
