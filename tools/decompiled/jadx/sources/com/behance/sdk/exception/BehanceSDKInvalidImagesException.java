package com.behance.sdk.exception;

import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKInvalidImagesException extends BehanceSDKException {
    private static final long serialVersionUID = 1652234488966310128L;
    private List<File> invalidImagesList;

    public BehanceSDKInvalidImagesException() {
    }

    public BehanceSDKInvalidImagesException(List<File> list) {
        setInvalidImagesList(list);
    }

    public void setInvalidImagesList(List<File> list) {
        this.invalidImagesList = list;
    }

    public List<File> getInvalidImagesList() {
        return this.invalidImagesList;
    }
}
