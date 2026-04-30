package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface IAssetViewerActivity {
    int fetchCurrentPageIndex();

    View.OnTouchListener getItemTouchListener();

    void handleAssetCollectionChanged();

    void handleAssetSelectionChanged();

    void hideActionsBar();

    void hideOrShowActionsBar();

    void showActionsBar();
}
