package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination;

/* JADX INFO: loaded from: classes2.dex */
public interface UploadDestination<T extends UploadDestination<T>> {
    String getId();

    boolean isSameLocation(T t);
}
