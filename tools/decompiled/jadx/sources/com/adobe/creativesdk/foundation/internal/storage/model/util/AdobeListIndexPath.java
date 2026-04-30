package com.adobe.creativesdk.foundation.internal.storage.model.util;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeListIndexPath {
    private int row;
    private int section;

    public AdobeListIndexPath(int i, int i2) {
        this.section = i;
        this.row = i2;
    }

    int getSection() {
        return this.section;
    }

    int getRow() {
        return this.row;
    }
}
