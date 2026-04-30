package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeAssetContainerListViewDelegate {
    FragmentActivity getHostActivity();

    void handleAssetClickAction(Object obj);

    void handleLongClickOnAsset(Object obj);

    void handlePopupMenuClick(Object obj, View view);

    boolean isContainerReadOnly();

    void loadMoreItemsFromDataSource();

    void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData);

    void reloadAssetItemsFromDataSourceDueToSwipeRefresh();

    void showCoachMarkForCellView(AssetBrowserCoachMarkData assetBrowserCoachMarkData);
}
