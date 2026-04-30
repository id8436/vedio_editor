package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobePhotoAssetsDataSourceDelegate {
    void loadFirstPageFailed(AdobeCSDKException adobeCSDKException);

    void loadFirstPageSucceeded();

    void loadNextPageFailed(AdobeCSDKException adobeCSDKException);

    void loadNextPageSucceeded();

    void willLoadFirstPage();

    void willLoadNextPage();
}
