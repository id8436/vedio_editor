package com.adobe.creativesdk.foundation.internal.ucf;

/* JADX INFO: loaded from: classes2.dex */
public enum AdobeUCFArchiveItemType {
    AdobeUCFArchiveItemFile(0),
    AdobeUCFArchiveItemData(1);

    private int _val;

    AdobeUCFArchiveItemType(int i) {
        this._val = i;
    }

    public int getValue() {
        return this._val;
    }
}
