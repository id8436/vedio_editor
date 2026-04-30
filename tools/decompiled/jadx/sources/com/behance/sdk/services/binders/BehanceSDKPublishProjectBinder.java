package com.behance.sdk.services.binders;

import android.os.Binder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectBinder extends Binder {
    private List<String> cancelledRequestIdsList;

    public boolean isUploadCancelled(String str) {
        return (this.cancelledRequestIdsList == null || str == null || !this.cancelledRequestIdsList.contains(str)) ? false : true;
    }

    public void cancelUpload(String str) {
        if (this.cancelledRequestIdsList == null) {
            this.cancelledRequestIdsList = new ArrayList();
        }
        if (str != null) {
            this.cancelledRequestIdsList.add(str);
        }
    }
}
