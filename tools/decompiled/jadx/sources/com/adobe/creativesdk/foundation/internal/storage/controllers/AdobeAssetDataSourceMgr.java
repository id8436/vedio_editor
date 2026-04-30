package com.adobe.creativesdk.foundation.internal.storage.controllers;

import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetDataSourceMgr {
    private static AdobeAssetDataSourceMgr _sInstance;
    ArrayList<String> _ccFilesChangedFolder = new ArrayList<>();

    public static AdobeAssetDataSourceMgr getInstance() {
        if (_sInstance == null) {
            _sInstance = new AdobeAssetDataSourceMgr();
        }
        return _sInstance;
    }

    public boolean isFolderMarkedAsChanged(AdobeAssetFolder adobeAssetFolder, boolean z) {
        if (this._ccFilesChangedFolder.size() == 0) {
            return false;
        }
        String string = adobeAssetFolder.getHref().toString();
        for (int i = 0; i < this._ccFilesChangedFolder.size(); i++) {
            if (this._ccFilesChangedFolder.get(i).equalsIgnoreCase(string)) {
                if (z) {
                    this._ccFilesChangedFolder.remove(i);
                }
                return true;
            }
        }
        return false;
    }

    public void setFolderAsChanged(AdobeAssetFolder adobeAssetFolder) {
        if (!isFolderMarkedAsChanged(adobeAssetFolder, false)) {
            this._ccFilesChangedFolder.add(adobeAssetFolder.getHref().toString());
        }
    }

    public void clearFolderAsChanged(AdobeAssetFolder adobeAssetFolder) {
        String string = adobeAssetFolder.getHref().toString();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this._ccFilesChangedFolder.size()) {
                if (!this._ccFilesChangedFolder.get(i2).equalsIgnoreCase(string)) {
                    i = i2 + 1;
                } else {
                    this._ccFilesChangedFolder.remove(i2);
                    return;
                }
            } else {
                return;
            }
        }
    }
}
