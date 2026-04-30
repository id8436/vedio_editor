package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeAssetFolderNextPageCallback extends IAdobeGenericErrorCallback<AdobeAssetException> {
    void onCompletion(ArrayList<AdobeAsset> arrayList, int i);
}
