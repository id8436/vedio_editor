package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCCFilesEditAssetData {
    public AdobeAssetFile file;
    public boolean isFile = false;
    EditStatus status;
    public String title;

    public enum EditStatus {
        Error,
        Completed
    }

    public AdobeCCFilesEditAssetData(String str, EditStatus editStatus) {
        this.title = str;
        this.status = editStatus;
    }

    public AdobeCCFilesEditAssetData(String str, AdobeAssetFile adobeAssetFile, EditStatus editStatus) {
        this.title = str;
        this.file = adobeAssetFile;
        this.status = editStatus;
    }
}
