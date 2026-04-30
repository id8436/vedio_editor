package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeAssetViewBrowserFragmentHostActivity {
    void handleOpenSelectedFilesAction(Intent intent);

    void handleUserSignOutAction();

    void hideCollaborationFrameOnBackPressed();

    boolean isCollaborationFrameVisible();

    void updateUploadCountForAppRater();
}
