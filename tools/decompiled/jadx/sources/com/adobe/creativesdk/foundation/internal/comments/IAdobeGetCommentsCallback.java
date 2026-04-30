package com.adobe.creativesdk.foundation.internal.comments;

import com.adobe.creativesdk.foundation.internal.comments.models.AdobeAssetCommentsDataSource;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeGetCommentsCallback {
    void onError();

    void onSuccess(AdobeAssetCommentsDataSource adobeAssetCommentsDataSource);
}
