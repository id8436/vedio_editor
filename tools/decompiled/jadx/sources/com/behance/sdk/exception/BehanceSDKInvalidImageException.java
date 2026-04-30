package com.behance.sdk.exception;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKInvalidImageException extends BehanceSDKException {
    private static final long serialVersionUID = -5241909962790945027L;
    private File invalidImage;

    public BehanceSDKInvalidImageException() {
    }

    public BehanceSDKInvalidImageException(File file) {
        setInvalidImage(file);
    }

    public void setInvalidImage(File file) {
        this.invalidImage = file;
    }

    public File getInvalidImage() {
        return this.invalidImage;
    }
}
