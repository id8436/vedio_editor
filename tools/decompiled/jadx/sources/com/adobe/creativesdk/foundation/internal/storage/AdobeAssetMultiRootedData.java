package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import java.net.URI;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetMultiRootedData extends AdobeAssetDataSource {
    String GUID;
    boolean done;
    Date endTime;
    URI href;
    Date startTime;

    AdobeAssetMultiRootedData(AdobeAssetDataSourceType adobeAssetDataSourceType, AdobeCloud adobeCloud) {
        super(adobeAssetDataSourceType, adobeCloud);
    }

    AdobeAssetMultiRootedData() {
        super(null, null);
    }

    public boolean isDone() {
        return this.done;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetMultiRootedData) {
            return this.GUID.equals(((AdobeAssetMultiRootedData) obj).GUID);
        }
        return false;
    }
}
