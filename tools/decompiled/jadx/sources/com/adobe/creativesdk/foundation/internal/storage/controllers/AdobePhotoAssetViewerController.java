package com.adobe.creativesdk.foundation.internal.storage.controllers;

import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class AdobePhotoAssetViewerController {
    private static ArrayList<AdobePhotoAsset> _assetList = null;
    private static int _selectedIndex = 0;
    private static final int indexNotFound = -1;
    private static Observer _asset_selection_changed_observer = null;
    private static Observer _asset_collection_changed_observer = null;
    private static IAssetViewerActivity _assetViewerActivity = null;
    private static WeakReference<AdobePhotoAssetsDataSource> _dataSource = null;

    private static int findIndex(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoAsset adobePhotoAsset) {
        if (adobePhotoAsset == null) {
            return -1;
        }
        int i = 0;
        Iterator<AdobePhotoAsset> it = arrayList.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return -1;
            }
            if (!it.next().isEqualToAsset(adobePhotoAsset)) {
                i = i2 + 1;
            } else {
                return i2;
            }
        }
    }

    private AdobePhotoAssetViewerController() {
    }

    public static AdobePhotoAssetViewerController createPhotoAssetViewerController(AdobePhotoAssetsDataSource adobePhotoAssetsDataSource, AdobePhotoAsset adobePhotoAsset) {
        AdobePhotoAssetViewerController adobePhotoAssetViewerController = new AdobePhotoAssetViewerController();
        generateAssetArray(adobePhotoAssetsDataSource, adobePhotoAsset);
        return adobePhotoAssetViewerController;
    }

    static void generateAssetArray(AdobePhotoAssetsDataSource adobePhotoAssetsDataSource, AdobePhotoAsset adobePhotoAsset) {
        _dataSource = new WeakReference<>(adobePhotoAssetsDataSource);
        _assetList = adobePhotoAssetsDataSource.getAssets();
        _selectedIndex = findIndex(_assetList, adobePhotoAsset);
    }

    public boolean isDataSourceValidForAssetViewerLaunch() {
        return _assetList != null && _assetList.size() > 0;
    }

    void loadNextPage() {
        AdobePhotoAssetsDataSource adobePhotoAssetsDataSource;
        if (_dataSource != null && (adobePhotoAssetsDataSource = _dataSource.get()) != null) {
            adobePhotoAssetsDataSource.loadNextPageOfData();
        }
    }

    int getSelectedIndex() {
        return _selectedIndex;
    }

    static void setSelectedIndex(int i) {
        _selectedIndex = i;
    }

    AdobePhotoAsset getAssetAtPos(int i) {
        return _assetList.get(i);
    }

    int count() {
        if (_assetList != null) {
            return _assetList.size();
        }
        return 0;
    }

    int getTotalAssetsCount() {
        AdobePhotoAssetsDataSource adobePhotoAssetsDataSource;
        if (_dataSource == null || (adobePhotoAssetsDataSource = _dataSource.get()) == null) {
            return -1;
        }
        return adobePhotoAssetsDataSource.getTotalAssetsCount();
    }

    void addSelectedAsset(AdobePhotoAsset adobePhotoAsset) {
        AdobeStoragePhotoAssetSelectionState.addSelectedAsset(adobePhotoAsset);
    }

    void removeSelectedAsset(AdobePhotoAsset adobePhotoAsset) {
        AdobeStoragePhotoAssetSelectionState.removeSelectedAsset(adobePhotoAsset);
    }

    boolean containsAsset(AdobePhotoAsset adobePhotoAsset) {
        return AdobeStoragePhotoAssetSelectionState.containsAsset(adobePhotoAsset);
    }

    boolean isMultiSelectModeActive() {
        return AdobeStoragePhotoAssetSelectionState.isMultiSelectModeActive();
    }

    int getSelectedAssetCount() {
        return AdobeStoragePhotoAssetSelectionState.selectedAssetCount();
    }

    void getRenditionForAsset(AdobePhotoAsset adobePhotoAsset, IAdobeGenericRequestCallback<byte[], AdobePhotoException> iAdobeGenericRequestCallback) {
        AdobePhotoAssetsDataSource.getRenditionForAsset(adobePhotoAsset, iAdobeGenericRequestCallback);
    }

    static synchronized void setCurrentAssetViewerActivity(IAssetViewerActivity iAssetViewerActivity) {
        _assetViewerActivity = iAssetViewerActivity;
        _asset_selection_changed_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobePhotoAssetViewerController.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AdobePhotoAssetViewerController._assetViewerActivity.handleAssetSelectionChanged();
            }
        };
        _asset_collection_changed_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobePhotoAssetViewerController.2
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                int unused = AdobePhotoAssetViewerController._selectedIndex = AdobePhotoAssetViewerController._assetViewerActivity.fetchCurrentPageIndex();
                if (AdobePhotoAssetViewerController._dataSource != null && AdobePhotoAssetViewerController._dataSource.get() != null) {
                    ArrayList unused2 = AdobePhotoAssetViewerController._assetList = ((AdobePhotoAssetsDataSource) AdobePhotoAssetViewerController._dataSource.get()).getAssets();
                    AdobePhotoAssetViewerController._assetViewerActivity.handleAssetCollectionChanged();
                }
            }
        };
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, _asset_selection_changed_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, _asset_selection_changed_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobePhotoAssetsDataSourceDidLoadNewPageNotification, _asset_collection_changed_observer);
    }

    synchronized void resetCurrentAdobeUXAssetViewerActivity() {
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, _asset_selection_changed_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, _asset_selection_changed_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobePhotoAssetsDataSourceDidLoadNewPageNotification, _asset_collection_changed_observer);
        _assetViewerActivity = null;
        _selectedIndex = -1;
        _asset_selection_changed_observer = null;
        _asset_collection_changed_observer = null;
    }

    public synchronized IAssetViewerActivity getCurrentAssetViewerActivity() {
        return _assetViewerActivity;
    }
}
