package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView;

/* JADX INFO: loaded from: classes2.dex */
public class AssetBrowserCoachMarkData {
    private AssetListCellView cellView;
    private boolean isScreenshotsFolder;

    public AssetBrowserCoachMarkData(AssetListCellView assetListCellView, boolean z) {
        this.cellView = assetListCellView;
        this.isScreenshotsFolder = z;
    }

    public AssetListCellView getCellView() {
        return this.cellView;
    }

    public boolean isScreenshotsFolder() {
        return this.isScreenshotsFolder;
    }
}
