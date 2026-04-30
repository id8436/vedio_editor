package com.behance.sdk.asynctask.params;

import android.content.Context;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetAlbumsTaskParams {
    private WeakReference<Context> contextWeakReference;
    private boolean showImageSelectionSources;

    public WeakReference<Context> getContextWeakReference() {
        return this.contextWeakReference;
    }

    public void setContextWeakReference(WeakReference<Context> weakReference) {
        this.contextWeakReference = weakReference;
    }

    public void setShowImageSelectionSources(boolean z) {
        this.showImageSelectionSources = z;
    }

    public boolean isShowImageSelectionSources() {
        return this.showImageSelectionSources;
    }
}
