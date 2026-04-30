package com.adobe.creativesdk.behance;

import com.behance.sdk.exception.BehanceSDKInvalidImagesException;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeBehancePublishInvalidImageException extends Exception {
    private BehanceSDKInvalidImagesException exception;

    public AdobeBehancePublishInvalidImageException(String str, BehanceSDKInvalidImagesException behanceSDKInvalidImagesException) {
        super(str, behanceSDKInvalidImagesException);
        this.exception = behanceSDKInvalidImagesException;
    }

    public AdobeBehancePublishInvalidImageException(BehanceSDKInvalidImagesException behanceSDKInvalidImagesException) {
        super(behanceSDKInvalidImagesException);
        this.exception = behanceSDKInvalidImagesException;
    }

    public List<File> getInvalidImagesList() {
        return this.exception.getInvalidImagesList();
    }
}
