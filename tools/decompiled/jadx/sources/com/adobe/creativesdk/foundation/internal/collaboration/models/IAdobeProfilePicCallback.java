package com.adobe.creativesdk.foundation.internal.collaboration.models;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeProfilePicCallback {
    void onComplete(Bitmap bitmap);

    void onError();
}
