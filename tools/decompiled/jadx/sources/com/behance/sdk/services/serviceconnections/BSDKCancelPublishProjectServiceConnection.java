package com.behance.sdk.services.serviceconnections;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.behance.sdk.services.binders.BehanceSDKPublishProjectBinder;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BSDKCancelPublishProjectServiceConnection implements ServiceConnection {
    private BehanceSDKPublishProjectBinder binder;
    private final String publishRequestId;

    public BSDKCancelPublishProjectServiceConnection(String str) {
        this.publishRequestId = str;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder instanceof BehanceSDKPublishProjectBinder) {
            this.binder = (BehanceSDKPublishProjectBinder) iBinder;
            this.binder.cancelUpload(this.publishRequestId);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.binder = null;
    }
}
