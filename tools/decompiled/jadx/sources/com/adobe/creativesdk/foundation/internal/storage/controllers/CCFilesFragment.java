package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAssetBrowserViewEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageSortProtocol;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerControllerConfigurations;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerFilesConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateToCollectionCommand;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeListIndexPath;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeListSectionsIndexSet;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.internal.utils.UiUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class CCFilesFragment extends AssetViewFragment {
    private AdobeCloud _cloud;
    private StorageDataSourceDelegate _dataSourceDelegate;
    private Observer _forceRefreshAssetsListObserver;
    protected CCFilesGridView _gridAssetsViewController;
    protected boolean _isReadOnly;
    private CCFilesFragmentState _lastSavedInstanceState;
    protected CCFilesSectionListView _listAssetsViewController;
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    private int _selectionTimeStampAtStop = -1;
    private Observer _storageAssetsSelectionCountChange;
    private AdobeStorageDataSource _storageDataSource;
    private Observer _tabDataSourceChangedObserver;
    private AdobeAssetFolder _targetCollection;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AdobeAssetsViewContainerConfiguration getAssetViewConfiguration(Bundle bundle) {
        AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration = new AdobeAssetsViewContainerConfiguration();
        adobeAssetsViewContainerConfiguration.createFromBundle(bundle);
        this._cloud = adobeAssetsViewContainerConfiguration.getCloud();
        this._isReadOnly = adobeAssetsViewContainerConfiguration.isReadOnly();
        return adobeAssetsViewContainerConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData) {
        AdobeAssetViewNavigateCommands.NavToAssetFolderData navToAssetFolderData = (AdobeAssetViewNavigateCommands.NavToAssetFolderData) navBaseCommandData;
        AdobeAssetViewNavigateToCollectionCommand adobeAssetViewNavigateToCollectionCommand = new AdobeAssetViewNavigateToCollectionCommand();
        adobeAssetViewNavigateToCollectionCommand.setCollection(navToAssetFolderData.getCollection());
        adobeAssetViewNavigateToCollectionCommand.setDataSourceType(navToAssetFolderData.getDataSourceType());
        adobeAssetViewNavigateToCollectionCommand.setReadOnly(navToAssetFolderData.isReadOnly() || this._assetViewConfiguration.isReadOnly());
        postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_COLLECTION, adobeAssetViewNavigateToCollectionCommand);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void showCoachMarkForCellView(AssetBrowserCoachMarkData assetBrowserCoachMarkData) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public boolean isContainerReadOnly() {
        return this._assetViewConfiguration.isReadOnly();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleLongClickOnAsset(Object obj) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleAssetClickAction(Object obj) {
        if (obj instanceof AdobeAssetFile) {
            openOneUpViewActivityFromAsset((AdobeAssetFile) obj);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean hasActionBarOptions() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected IAdobeAssetDataSource getDataSource() {
        return this._storageDataSource;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hookUpDataSourceDelegate(boolean z) {
        this._storageDataSource.setAdobeStorageDataSourceDelegate(this._dataSourceDelegate);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOpenCurrentSelectedFilesUserAction() {
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_OPEN_SELECTED_FILES);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleCancelSelectionUserAction() {
        AdobeStorageAssetSelectionState.resetSelectedAssets();
        if (this._gridAssetsViewController != null) {
            this._gridAssetsViewController.refreshOnlyListView();
        }
        if (this._listAssetsViewController != null) {
            this._listAssetsViewController.refreshOnlyListView();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean handleSearchFunctionality(String str) {
        if (this._storageDataSource == null) {
            return false;
        }
        this._storageDataSource.filterWithSearchString(str);
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
        imageCacheParams.setMemCacheSizePercent(0.1f);
        this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(getHostActivity());
        this._reusableBitmapCacheWorker.addImageCache(getFragmentManager(), imageCacheParams);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
        }
        this._reusableBitmapCacheWorker = null;
        super.onDestroy();
    }

    protected void openOneUpViewActivityFromAsset(AdobeAssetFile adobeAssetFile) {
        int csdkConfigurationKey;
        if (!(getActivity() instanceof AdobeUxAssetBrowserV2Activity) && AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getActivity())) {
            csdkConfigurationKey = AdobeOneUpViewerControllerConfigurations.getLokiConfigurationKey();
        } else {
            csdkConfigurationKey = AdobeOneUpViewerControllerConfigurations.getCsdkConfigurationKey();
        }
        AdobeOneUpViewerFilesConfiguration adobeOneUpViewerFilesConfiguration = (AdobeOneUpViewerFilesConfiguration) AdobeOneUpViewerConfigurationFactory.getOneUpViewerController(csdkConfigurationKey).getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION_KEY);
        adobeOneUpViewerFilesConfiguration.setAssetFile(adobeAssetFile);
        adobeOneUpViewerFilesConfiguration.setDataSource(this._storageDataSource);
        Intent intent = new Intent();
        intent.setClass(getHostActivity(), AdobeUXAssetOneUpViewerActivity.class);
        intent.putExtra("one_up_controller_code", csdkConfigurationKey);
        intent.putExtra("ADOBE_CLOUD", this._assetViewConfiguration.getCloud());
        getHostActivity().startActivityForResult(intent, AdobeAssetViewUtils.ASSET_ONE_UP_ACTIVITY_REQUEST);
    }

    protected void initializeCCFilesContainerFromCollectionHref(String str) {
        this._targetCollection = AdobeAssetViewUtils.getAssetFolderFromHref(str, true);
    }

    protected void initializeCCFilesContainerFromCollection(AdobeStorageResourceCollection adobeStorageResourceCollection) {
        if (adobeStorageResourceCollection != null) {
            this._targetCollection = AdobeAssetViewUtils.getAssetFolderFromCollection(adobeStorageResourceCollection);
        } else {
            initializeCCFilesContainerFromCollectionHref(null);
        }
    }

    protected AdobeAssetFolder getTargetCollection() {
        return this._targetCollection;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void initializeFromViewConfiguration(AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration) {
        AdobeStorageResourceCollection targetCollection = this._assetViewConfiguration.getTargetCollection();
        initializeCCFilesContainerFromCollection(targetCollection != null ? new AdobeStorageResourceCollection(targetCollection) : targetCollection);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void setupAssetsDataSourceAndListViewControllers() {
        if (this._gridAssetsViewController == null) {
            this._dataSourceDelegate = new StorageDataSourceDelegate();
            this._storageDataSource = new AdobeStorageDataSource();
            this._storageDataSource.setTargetCollection(this._targetCollection);
            this._storageDataSource.setAdobeStorageDataSourceDelegate(this._dataSourceDelegate);
            this._storageDataSource.setFilter(this._assetViewConfiguration.getMimeTypesFilter());
            this._storageDataSource.setInclusiveFilter(this._assetViewConfiguration.getIsMimeTypeFilterInclusive());
            this._storageDataSource.setDataInternalFilters(getInternalFilters());
            this._gridAssetsViewController = setupGridViewController();
            this._gridAssetsViewController.setContainerController(this);
            this._gridAssetsViewController.setContainerReadOnly(this._assetViewConfiguration.isReadOnly());
            this._listAssetsViewController = setupSectionalListViewController();
            this._listAssetsViewController.setContainerController(this);
            this._listAssetsViewController.setContainerReadOnly(this._assetViewConfiguration.isReadOnly());
            this._gridAssetsViewController.setAssetListViewerConfiguration(this._assetViewConfiguration);
            this._listAssetsViewController.setAssetListViewerConfiguration(this._assetViewConfiguration);
            this._gridAssetsViewController.performInitialization(getActivity());
            this._listAssetsViewController.performInitialization(getActivity());
            this._gridAssetsViewController.setStorageDataSource(this._storageDataSource);
            this._listAssetsViewController.setStorageDataSource(this._storageDataSource);
            this._storageDataSource.loadItemsFromScratch(true);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView concreteRecyclerView = this._gridAssetsViewController.getConcreteRecyclerView(getContext());
        RecyclerView concreteRecyclerView2 = this._listAssetsViewController.getConcreteRecyclerView(getContext());
        concreteRecyclerView.setClipToPadding(false);
        concreteRecyclerView2.setClipToPadding(false);
        int navBarHeightInternal = UiUtils.getNavBarHeightInternal(getActivity());
        concreteRecyclerView.setPadding(concreteRecyclerView.getPaddingLeft(), concreteRecyclerView.getPaddingTop(), concreteRecyclerView.getPaddingRight(), navBarHeightInternal);
        concreteRecyclerView2.setPadding(concreteRecyclerView2.getPaddingLeft(), concreteRecyclerView2.getPaddingTop(), concreteRecyclerView2.getPaddingRight(), navBarHeightInternal);
    }

    protected AdobeStorageDataSource.DataSourceInternalFilters getInternalFilters() {
        return null;
    }

    protected CCFilesGridView setupGridViewController() {
        CCFilesGridView cCFilesGridView = new CCFilesGridView(getActivity());
        cCFilesGridView.setReusableImageWorker(this._reusableBitmapCacheWorker);
        return cCFilesGridView;
    }

    protected CCFilesSectionListView setupSectionalListViewController() {
        return new CCFilesSectionListView(getActivity());
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean isContainerShowingRootCollection() {
        return this._targetCollection == null || AdobeStorageAssetFileUtils.isRootCollection(this._targetCollection);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void reloadAssetItemsFromDataSourceDueToSwipeRefresh() {
        AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticPullToRefresh, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.1
            {
                put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
                put("type", "assets");
                put(AdobeAnalyticsSDKReporter.AnalyticAction, "pullToRefresh");
            }
        }, null);
        super.reloadAssetItemsFromDataSourceDueToSwipeRefresh();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean isRestoredDataSourceChanged() {
        return AdobeAssetDataSourceMgr.getInstance().isFolderMarkedAsChanged(getTargetCollection(), true);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOnStop() {
        super.handleOnStop();
        this._selectionTimeStampAtStop = AdobeStorageAssetSelectionState.getCurrentSelectionTimeStamp();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handlePostOffline() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleAnyListCellViewsRefresh() {
        if (this._selectionTimeStampAtStop != -1 && this._currentAssetsViewController != null && this._selectionTimeStampAtStop != AdobeStorageAssetSelectionState.getCurrentSelectionTimeStamp()) {
            ((CCFilesListView) this._currentAssetsViewController).refreshOnlyListView();
        }
        this._selectionTimeStampAtStop = -1;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean handleAnyListConfigChange() {
        return this._storageDataSource.resetSortIndexCollator();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void registerLocalNofications() {
        super.registerLocalNofications();
        if (this._storageAssetsSelectionCountChange == null) {
            this._storageAssetsSelectionCountChange = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.2
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    CCFilesFragment.this.configureMultiSelectViews();
                }
            };
        }
        if (this._forceRefreshAssetsListObserver == null) {
            this._forceRefreshAssetsListObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.3
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    CCFilesFragment.this.reloadAssetItemsFromDataSourceDueToSwipeRefresh();
                }
            };
        }
        if (this._tabDataSourceChangedObserver == null) {
            this._tabDataSourceChangedObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.4
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    CCFilesFragment.this.closeSearchBarIfOpen();
                    CCFilesFragment.this.collapseFloatingActionMenu();
                }
            };
        }
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, this._storageAssetsSelectionCountChange);
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, this._storageAssetsSelectionCountChange);
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeCCFilesForceRefreshAssetsList, this._forceRefreshAssetsListObserver);
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeUxTabDataSourceChanged, this._tabDataSourceChangedObserver);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void collapseFloatingActionMenu() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleNotificationQueue() {
        super.handleNotificationQueue();
        if (this._internalNotificationListener != null) {
            if (this._internalNotificationListener.getNotificationsForID(AdobeInternalNotificationID.AdobeCCFilesForceRefreshAssetsList) != null) {
                reloadAssetItemsFromDataSourceDueToSwipeRefresh();
            }
            this._internalNotificationListener.clearQueue(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification);
            this._internalNotificationListener.clearQueue(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification);
            this._internalNotificationListener.clearQueue(AdobeInternalNotificationID.AdobeCCFilesForceRefreshAssetsList);
            this._internalNotificationListener.clearQueue(AdobeInternalNotificationID.AdobeUxTabDataSourceChanged);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getAssetSelectionCount() {
        return AdobeStorageAssetSelectionState.selectedAssetCount();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getContainerNameForRoot() {
        return getString(R.string.adobe_csdk_uxassetbrowser_csdk_myassets_main);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getCurrentTargetCollectionName() {
        return this._targetCollection.getName();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void unRegisterLocalNotifications() {
        super.unRegisterLocalNotifications();
        this._internalNotificationListener.unregisterForNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification);
        this._internalNotificationListener.unregisterForNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification);
        this._internalNotificationListener.unregisterForNotification(AdobeInternalNotificationID.AdobeCCFilesForceRefreshAssetsList);
        this._internalNotificationListener.unregisterForNotification(AdobeInternalNotificationID.AdobeUxTabDataSourceChanged);
    }

    protected void setCurrentAssetViewController(CCFilesListView cCFilesListView) {
        this._currentAssetsViewController = cCFilesListView;
    }

    private void showAssetsAsList() {
        showAssetsAsListAnimate(false);
    }

    protected void showAssetsAsListAnimate(boolean z) {
        FrameLayout assetsMainRootFrame = getAssetsMainRootFrame();
        assetsMainRootFrame.removeView(this._gridAssetsViewController.getMainView());
        View mainView = this._listAssetsViewController.getMainView();
        if (assetsMainRootFrame.indexOfChild(mainView) == -1) {
            new AdobeAnalyticsETSAssetBrowserViewEvent(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_LIST, AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_CC_FILE).endAndTrackEvent();
            assetsMainRootFrame.addView(mainView);
        }
        setCurrentAssetViewController(this._listAssetsViewController);
    }

    private void showAssetsAsGrid() {
        showAssetsAsGridAnimate(false);
    }

    protected void showAssetsAsGridAnimate(boolean z) {
        FrameLayout assetsMainRootFrame = getAssetsMainRootFrame();
        assetsMainRootFrame.removeView(this._listAssetsViewController.getMainView());
        View mainView = this._gridAssetsViewController.getMainView();
        if (assetsMainRootFrame.indexOfChild(mainView) == -1) {
            new AdobeAnalyticsETSAssetBrowserViewEvent(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_GRID, AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_CC_FILE).endAndTrackEvent();
            assetsMainRootFrame.addView(mainView);
        }
        setCurrentAssetViewController(this._gridAssetsViewController);
    }

    private void showAssetsOfCurrentVisualLayout(boolean z) {
        if (AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW == AdobeCommonLearnedSettings.lastVisualLayout()) {
            showAssetsAsListAnimate(z);
        } else {
            showAssetsAsGridAnimate(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeVisualDisplay(AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout adobeUXAssetBrowserVisualLayout) {
        if (adobeUXAssetBrowserVisualLayout == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_WATERFALL) {
            showAssetsAsGrid();
        } else {
            showAssetsAsList();
        }
        this._currentAssetsViewController.refreshDueToDataChange();
        AdobeCommonLearnedSettings.setLastVisualLayout(adobeUXAssetBrowserVisualLayout);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void saveCurrentAssetsListControllerState() {
        super.saveCurrentAssetsListControllerState();
        this._lastSavedInstanceState = new CCFilesFragmentState();
        this._lastSavedInstanceState._visualLayout = AdobeCommonLearnedSettings.lastVisualLayout();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void restoreCurrentAssetsListControllerState() {
        if (this._lastSavedInstanceState != null && AdobeCommonLearnedSettings.lastVisualLayout() == this._lastSavedInstanceState._visualLayout) {
            super.restoreCurrentAssetsListControllerState();
            this._lastSavedInstanceState = null;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void resetAssetsListViewVisualLayout() {
        showAssetsOfCurrentVisualLayout(false);
    }

    public class CCFilesFragmentState {
        public AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout _visualLayout;

        protected CCFilesFragmentState() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AssetViewFragment.AssetsViewBaseActionBarController createActionBarController() {
        return new CCFilesActionBarController();
    }

    public class CCFilesActionBarController extends AssetViewFragment.AssetsViewBaseActionBarController {
        AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout _currentFileListSelectionType;
        AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState _currentSortState;
        AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType _currentSortType;
        AssetViewFragment.AssetsViewBaseActionBarController.FragmentActionBarInstanceData _savedFragmentActionBarInstanceData;
        IAdobeStorageSortProtocol _sortProtocolDelegate;
        private MenuItem _sortTypeMenuItem;
        private MenuItem _viewTypeMenuItem;

        protected CCFilesActionBarController() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            menuInflater.inflate(R.menu.adobe_asset_browser_menu, menu);
            super.onCreateOptionsMenu(menu, menuInflater);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handlePostOnCreate(Bundle bundle) {
            super.handlePostOnCreate(bundle);
            CCFilesFragment.this._selectionTimeStampAtStop = -1;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            super.onPrepareOptionsMenu(menu);
            if (CCFilesFragment.this.getAssetsMainRootFrame() != null) {
                this._viewTypeMenuItem = menu.findItem(R.id.adobe_csdk_uxassetbrowser_assets_viewtype);
                this._sortTypeMenuItem = menu.findItem(R.id.adobe_csdk_uxassetbrowser_assets_view_sorttype);
                refreshOptionItems();
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handleCurrentNetworkStatus(boolean z) {
            if (this._viewTypeMenuItem != null) {
                this._viewTypeMenuItem.setVisible(z && !CCFilesFragment.this.isSearchBarOpened());
            }
            if (this._sortTypeMenuItem != null) {
                this._sortTypeMenuItem.setVisible(z && !CCFilesFragment.this.isSearchBarOpened());
            }
            CCFilesFragment.this.handleCurrentNetworkStatusWithUpload(z);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handleOnStart() {
            resetButtonState();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
            String localizedStringUtil;
            String localizedStringUtil2;
            super.refreshOptionItems();
            if (this._viewTypeMenuItem != null) {
                if (this._currentFileListSelectionType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW) {
                    localizedStringUtil = CCFilesFragment.this.getLocalizedStringUtil(R.string.adobe_csdk_uxassetbrowser_action_asgrid);
                } else {
                    localizedStringUtil = CCFilesFragment.this.getLocalizedStringUtil(R.string.adobe_csdk_uxassetbrowser_action_aslist);
                }
                this._viewTypeMenuItem.setTitleCondensed(localizedStringUtil);
                this._viewTypeMenuItem.setTitle(CCFilesFragment.this.getAdobeFormattedString(localizedStringUtil));
                if (this._currentSortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
                    localizedStringUtil2 = CCFilesFragment.this.getLocalizedStringUtil(R.string.adobe_csdk_uxassetbrowser_action_sort_date);
                } else {
                    localizedStringUtil2 = CCFilesFragment.this.getLocalizedStringUtil(R.string.adobe_csdk_uxassetbrowser_action_sort_alpha);
                }
                this._sortTypeMenuItem.setTitleCondensed(localizedStringUtil2);
                this._sortTypeMenuItem.setTitle(CCFilesFragment.this.getAdobeFormattedString(localizedStringUtil2));
                this._myAccountMenuItem.setTitle(CCFilesFragment.this.getAdobeFormattedString(CCFilesFragment.this.getLocalizedStringUtil(R.string.adobe_csdk_uxassetbrowser_sdk_myaccount)));
                this._myAccountMenuItem.setVisible(!CCFilesFragment.this.isSearchBarOpened() && shouldEnableMyAccountMenu());
                boolean zIsAssetsMainFrameVisible = CCFilesFragment.this.isAssetsMainFrameVisible();
                this._viewTypeMenuItem.setVisible(!CCFilesFragment.this.isSearchBarOpened() && zIsAssetsMainFrameVisible);
                this._sortTypeMenuItem.setVisible(!CCFilesFragment.this.isSearchBarOpened() && zIsAssetsMainFrameVisible);
                CCFilesFragment.this.handleCollaborationVisibilty(!CCFilesFragment.this.isSearchBarOpened() && zIsAssetsMainFrameVisible);
            }
        }

        public void resetButtonState() {
            this._currentFileListSelectionType = AdobeCommonLearnedSettings.lastVisualLayout();
            this._currentSortState = AdobeCommonLearnedSettings.lastSortState();
            this._currentSortType = AdobeCommonLearnedSettings.lastSortType();
        }

        private void toggleViewType() {
            if (this._currentFileListSelectionType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW) {
                this._currentFileListSelectionType = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_WATERFALL;
            } else {
                this._currentFileListSelectionType = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW;
            }
            CCFilesFragment.this.changeVisualDisplay(this._currentFileListSelectionType);
        }

        private void toggleSortType() {
            if (this._currentSortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
                this._currentSortType = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_TIME;
                this._currentSortState = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.SORT_STATE_DESCENDING;
            } else {
                this._currentSortType = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA;
                this._currentSortState = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.SORT_STATE_ASCENDING;
            }
            AdobeCommonLearnedSettings.setLastSortType(this._currentSortType);
            AdobeCommonLearnedSettings.setLastSortState(this._currentSortState);
            CCFilesFragment.this._storageDataSource.sortCollectionByType(this._currentSortType, this._currentSortState);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public boolean handleOptionItemSelect(int i) {
            if (i == R.id.adobe_csdk_uxassetbrowser_assets_viewtype) {
                toggleViewType();
                if (this._currentFileListSelectionType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW) {
                    AdobeAnalyticsSDKReporter.trackAssetBrowserAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsViewAsList);
                    AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticViewAsList, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController.1
                        {
                            put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
                            put("type", TtmlNode.TAG_LAYOUT);
                            put(AdobeAnalyticsSDKReporter.AnalyticAction, "viewAsList");
                        }
                    }, null);
                } else {
                    AdobeAnalyticsSDKReporter.trackAssetBrowserAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsViewAsGrid);
                    AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticViewAsGrid, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController.2
                        {
                            put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
                            put("type", TtmlNode.TAG_LAYOUT);
                            put(AdobeAnalyticsSDKReporter.AnalyticAction, "viewAsGrid");
                        }
                    }, null);
                }
                return true;
            }
            if (i == R.id.adobe_csdk_uxassetbrowser_assets_view_sorttype) {
                toggleSortType();
                if (this._currentSortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA) {
                    AdobeAnalyticsSDKReporter.trackAssetBrowserAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsSortByAlpha);
                    AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticSortByAlpha, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController.3
                        {
                            put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
                            put("type", "files");
                            put(AdobeAnalyticsSDKReporter.AnalyticAction, "sortByAlpha");
                        }
                    }, null);
                } else {
                    AdobeAnalyticsSDKReporter.trackAssetBrowserAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsSortByDate);
                    AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticSortByDate, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController.4
                        {
                            put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
                            put("type", "files");
                            put(AdobeAnalyticsSDKReporter.AnalyticAction, "sortByDate");
                        }
                    }, null);
                }
                ((AssetsRecyclerView) CCFilesFragment.this._currentAssetsViewController)._recyclerView.scrollToPosition(0);
                return true;
            }
            if (i == R.id.adobe_csdk_uxassetbrowser_sdk_photos_myaccount) {
                CCFilesFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_SHOW_MY_ACCOUNT, null);
                return true;
            }
            return super.handleOptionItemSelect(i);
        }
    }

    protected void handleCollaborationVisibilty(boolean z) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void showEmptySearchView() {
        if (this._gridAssetsViewController != null) {
            this._gridAssetsViewController.showEmptySearch();
        }
        if (this._listAssetsViewController != null) {
            this._listAssetsViewController.showEmptySearch();
        }
    }

    public void handleCurrentNetworkStatusWithUpload(boolean z) {
    }

    public class StorageDataSourceDelegate implements IAdobeStorageDataSourceDelegate {
        protected StorageDataSourceDelegate() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void willLoadDataFromScratch() {
            CCFilesFragment.this.ds_willLoadDataFromScratch();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void willLoadNextPageForExistingCollection() {
            CCFilesFragment.this.ds_willLoadNextPageForExistingCollection();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void willLoadNextPageForNonExistingCollection() {
            CCFilesFragment.this.ds_willLoadNextPageForNonExistingCollection();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void didLoadMoreDataWithCount(int i, AdobeListSectionsIndexSet adobeListSectionsIndexSet, ArrayList<AdobeListIndexPath> arrayList) {
            CCFilesFragment.this.ds_didLoadMoreDataWithCount(i, adobeListSectionsIndexSet, arrayList);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException) {
            CCFilesFragment.this.ds_didFailToLoadMoreDataWithError(adobeAssetException);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void didSortByType(AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType adobeUXAssetBrowserSortType, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState adobeUXAssetBrowserSortState) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void willExecuteSearchWithString(String str) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void didStartLoadingMorePagesToFilter() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void didStopLoadingMorePagesToFilter() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void didFilterResults() {
            CCFilesFragment.this.ds_didFilterResults();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void didClearFilterString() {
            CCFilesFragment.this.ds_didClearFilterString();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void startedLoadingMoreFolders() {
            CCFilesFragment.this.ds_startedLoadingMoreFolders();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeStorageDataSourceDelegate
        public void stoppedLoadingMoreFolders() {
            CCFilesFragment.this.ds_stoppedLoadingMoreFolders();
        }
    }

    protected void ds_stoppedLoadingMoreFolders() {
    }

    protected void ds_startedLoadingMoreFolders() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void handleAppOrientationChange() {
        if (this._currentAssetsViewController != null) {
            if (this._currentAssetsViewController instanceof CCFilesGridView) {
                this._gridAssetsViewController.refreshLayoutDueToOrientationChange();
            } else if (this._currentAssetsViewController instanceof CCFilesSectionListView) {
                this._listAssetsViewController.refreshLayoutDueToOrientationChange();
            }
        }
    }
}
