package com.adobe.creativesdk.foundation.internal.storage.controllers;

import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetViewerController {
    static final int indexNotFound = -1;
    private WeakReference<AdobeStorageDataSource> _dataSource = null;
    protected ArrayList<AdobeAsset> _filteredAssetList;
    private int _selectedIndex;
    private static Observer _asset_selection_changed_observer = null;
    private static Observer _asset_collection_changed_observer = null;
    private static IAssetViewerActivity _assetViewerActivity = null;

    private AdobeAssetViewerController() {
    }

    public static AdobeAssetViewerController createAssetViewController(AdobeAsset adobeAsset) {
        AdobeAssetViewerController adobeAssetViewerController = new AdobeAssetViewerController();
        adobeAssetViewerController.generateAssetArray(adobeAsset);
        return adobeAssetViewerController;
    }

    public static AdobeAssetViewerController createAssetViewController(AdobeStorageDataSource adobeStorageDataSource, AdobeAsset adobeAsset) {
        AdobeAssetViewerController adobeAssetViewerController = new AdobeAssetViewerController();
        adobeAssetViewerController.generateAssetArray(adobeStorageDataSource, adobeAsset);
        return adobeAssetViewerController;
    }

    private static int findIndex(ArrayList<AdobeAsset> arrayList, AdobeAsset adobeAsset) {
        if (adobeAsset == null) {
            return -1;
        }
        int i = 0;
        Iterator<AdobeAsset> it = arrayList.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return -1;
            }
            if (!it.next().equals(adobeAsset)) {
                i = i2 + 1;
            } else {
                return i2;
            }
        }
    }

    void generateAssetArray(AdobeStorageDataSource adobeStorageDataSource, AdobeAsset adobeAsset) {
        this._dataSource = new WeakReference<>(adobeStorageDataSource);
        if (adobeStorageDataSource != null) {
            this._filteredAssetList = adobeStorageDataSource.purifiedAssetsToDisplay();
            this._selectedIndex = findIndex(this._filteredAssetList, adobeAsset);
        } else {
            generateAssetArray(adobeAsset);
        }
        if (this._selectedIndex == -1) {
            generateAssetArray(adobeAsset);
        }
    }

    public void generateAssetArray(AdobeAsset adobeAsset) {
        this._filteredAssetList = new ArrayList<>();
        this._filteredAssetList.add(adobeAsset);
        this._selectedIndex = 0;
    }

    public boolean isDataSourceValidForAssetViewerLaunch() {
        return this._filteredAssetList != null && this._filteredAssetList.size() > 0;
    }

    boolean loadNextPage() {
        AdobeStorageDataSource adobeStorageDataSource;
        if (this._dataSource == null || (adobeStorageDataSource = this._dataSource.get()) == null) {
            return false;
        }
        return adobeStorageDataSource.loadNextPage();
    }

    int getSelectedIndex() {
        return this._selectedIndex;
    }

    void setSelectedIndex(int i) {
        this._selectedIndex = i;
    }

    AdobeAsset getAssetAtPos(int i) {
        return this._filteredAssetList.get(i);
    }

    int count() {
        if (this._filteredAssetList != null) {
            return this._filteredAssetList.size();
        }
        return 0;
    }

    public boolean isMultiSelectModeActive() {
        return AdobeStorageAssetSelectionState.isMultiSelectModeActive();
    }

    void addSelectedAsset(AdobeAssetFile adobeAssetFile) {
        AdobeStorageAssetSelectionState.addSelectedAsset(adobeAssetFile);
    }

    void removeSelectedAsset(AdobeAssetFile adobeAssetFile) {
        AdobeStorageAssetSelectionState.removeSelectedAsset(adobeAssetFile);
    }

    boolean containsAsset(AdobeAssetFile adobeAssetFile) {
        return AdobeStorageAssetSelectionState.containsAsset(adobeAssetFile);
    }

    int getSelectedAssetCount() {
        return AdobeStorageAssetSelectionState.selectedAssetCount();
    }

    synchronized void setCurrentAssetViewerActivity(IAssetViewerActivity iAssetViewerActivity) {
        _assetViewerActivity = iAssetViewerActivity;
        _asset_selection_changed_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewerController.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                if (AdobeAssetViewerController._assetViewerActivity != null) {
                    AdobeAssetViewerController._assetViewerActivity.handleAssetSelectionChanged();
                }
            }
        };
        _asset_collection_changed_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewerController.2
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                if (AdobeAssetViewerController._assetViewerActivity != null) {
                    AdobeAssetViewerController.this._selectedIndex = AdobeAssetViewerController._assetViewerActivity.fetchCurrentPageIndex();
                    AdobeStorageDataSource adobeStorageDataSource = null;
                    if (AdobeAssetViewerController.this._dataSource != null) {
                        adobeStorageDataSource = (AdobeStorageDataSource) AdobeAssetViewerController.this._dataSource.get();
                    }
                    if (adobeStorageDataSource != null) {
                        ArrayList<AdobeAsset> arrayListPurifiedAssetsToDisplay = adobeStorageDataSource.purifiedAssetsToDisplay();
                        AdobeAssetViewerController.this._filteredAssetList = new ArrayList<>();
                        for (AdobeAsset adobeAsset : arrayListPurifiedAssetsToDisplay) {
                            if (adobeAsset instanceof AdobeAssetFile) {
                                AdobeAssetViewerController.this._filteredAssetList.add(adobeAsset);
                            }
                        }
                        AdobeAssetViewerController._assetViewerActivity.handleAssetCollectionChanged();
                    }
                }
            }
        };
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, _asset_selection_changed_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, _asset_selection_changed_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageDataSourceDidLoadNewPageNotification, _asset_collection_changed_observer);
    }

    synchronized void resetCurrentAdobeUXAssetViewerActivity() {
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, _asset_selection_changed_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, _asset_selection_changed_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageDataSourceDidLoadNewPageNotification, _asset_collection_changed_observer);
        _assetViewerActivity = null;
        this._selectedIndex = -1;
        _asset_selection_changed_observer = null;
        _asset_collection_changed_observer = null;
    }

    public synchronized IAssetViewerActivity getCurrentAssetViewerActivity() {
        return _assetViewerActivity;
    }
}
