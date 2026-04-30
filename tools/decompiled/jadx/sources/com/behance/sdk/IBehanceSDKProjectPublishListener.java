package com.behance.sdk;

import com.behance.sdk.exception.BehanceSDKException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public interface IBehanceSDKProjectPublishListener extends Serializable {
    void onCancel();

    void onFailure(BehanceSDKException behanceSDKException);

    void onSuccess(String str);
}
