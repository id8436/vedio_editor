package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEditOperationsEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateToPhotoCollectionCommand;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobePhotoCollectionAssetsUploadStatus;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeAssetType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.IAdobeLongClickHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.UiUtils;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.getbase.floatingactionbutton.h;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class PhotosCollectionFragment extends AssetViewFragment {
    private View _alphaPane;
    private FloatingActionsMenu _fabLayout;
    private Observer _photoAssetsSelectionCountChange;
    private PhotoCollectionCommandHandler _photoCollectionCommandHandler;
    private Observer _photoCollectionUploadedObserver;
    private AdobePhotoCollectionsDataSource _photoCollectionsDataSource;
    private PhotoCollectionsDataSourceDelegate _photoCollectionsDataSourceDelegate;
    private PhotosCollectionListView _photosCollectionListViewController;
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;

    class PhotoCollectionCommandHandler extends AdobeAssetViewCommandsHandler {
        private PhotoCollectionCommandHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_PHOTOCOLLECTION_CREATED, AdobeAssetViewBrowserCommandName.ACTION_PHOTOVIEW_EDIT_COMPLETED);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_PHOTOCOLLECTION_CREATED) {
                PhotosCollectionFragment.this.reloadDataFromDataSource();
            } else if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_PHOTOVIEW_EDIT_COMPLETED) {
                PhotosCollectionFragment.this.reloadDataFromDataSource();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void showEmptySearchView() {
        if (this._photosCollectionListViewController != null) {
            this._photosCollectionListViewController.showEmptySearch();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AdobeAssetsViewContainerConfiguration getAssetViewConfiguration(Bundle bundle) {
        AdobePhotosViewContainerConfiguration adobePhotosViewContainerConfiguration = new AdobePhotosViewContainerConfiguration();
        adobePhotosViewContainerConfiguration.createFromBundle(getArguments());
        return adobePhotosViewContainerConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleLongClickOnAsset(Object obj) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
        if (getActivity() instanceof IAdobeLongClickHandler) {
            ((IAdobeLongClickHandler) getActivity()).handlePopupClick(obj, this._assetViewConfiguration, view, AdobeAssetType.ADOBE_ASSET_TYPE_PHOTOS);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean hasActionBarOptions() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void initializeFromViewConfiguration(AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void showCoachMarkForCellView(AssetBrowserCoachMarkData assetBrowserCoachMarkData) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public boolean isContainerReadOnly() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void registerLocalNofications() {
        super.registerLocalNofications();
        if (this._photoAssetsSelectionCountChange == null) {
            this._photoAssetsSelectionCountChange = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosCollectionFragment.1
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    PhotosCollectionFragment.this.configureMultiSelectViews();
                }
            };
        }
        if (this._photoCollectionUploadedObserver == null) {
            this._photoCollectionUploadedObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosCollectionFragment.2
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    if (PhotosCollectionFragment.this.getActivity() != null && PhotosCollectionFragment.this.isAdded()) {
                        PhotosCollectionFragment.this.reloadDataFromDataSource();
                        AdobePhotoCollectionAssetsUploadStatus.reloadDataAfterUploaded = false;
                    }
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, this._photoAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, this._photoAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, this._photoCollectionUploadedObserver);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void unRegisterLocalNotifications() {
        super.unRegisterLocalNotifications();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, this._photoAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, this._photoAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, this._photoCollectionUploadedObserver);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void setupAssetsDataSourceAndListViewControllers() {
        if (this._photosCollectionListViewController == null) {
            this._photosCollectionListViewController = new PhotosCollectionListView(getActivity());
            this._photosCollectionListViewController.setContainerController(this);
            this._photosCollectionListViewController.setReusableImageWorker(this._reusableBitmapCacheWorker);
            this._photoCollectionsDataSourceDelegate = new PhotoCollectionsDataSourceDelegate();
            this._photoCollectionsDataSource = new AdobePhotoCollectionsDataSource(this._photoCollectionsDataSourceDelegate, this._assetViewConfiguration.getCloud());
            this._photosCollectionListViewController.set_photoCollectionsDataSource(this._photoCollectionsDataSource);
            this._photosCollectionListViewController.performInitialization(getActivity());
            this._currentAssetsViewController = this._photosCollectionListViewController;
            this._photoCollectionsDataSource.loadCatalog();
        }
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        int fabPaddingWidth = getFabPaddingWidth();
        int navBarHeight = getNavBarHeight(getActivity());
        if (this._fabLayout != null) {
            setLayoutMargin(fabPaddingWidth, navBarHeight);
        }
        super.onConfigurationChanged(configuration);
    }

    private void setLayoutMargin(int i, int i2) {
        ((RelativeLayout.LayoutParams) this._fabLayout.getLayoutParams()).setMargins(0, 0, i, i2);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView concreteRecyclerView = this._photosCollectionListViewController.getConcreteRecyclerView(getContext());
        concreteRecyclerView.setClipToPadding(false);
        concreteRecyclerView.setPadding(concreteRecyclerView.getPaddingLeft(), concreteRecyclerView.getPaddingTop(), concreteRecyclerView.getPaddingRight(), UiUtils.getNavBarHeightInternal(getActivity()));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this._photoCollectionCommandHandler.onStart();
        if (AdobePhotoCollectionAssetsUploadStatus.reloadDataAfterUploaded) {
            reloadDataFromDataSource();
            AdobePhotoCollectionAssetsUploadStatus.reloadDataAfterUploaded = false;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this._photoCollectionCommandHandler.onStop();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handlePostOnCreateView(Bundle bundle) {
        super.handlePostOnCreateView(bundle);
        this._photoCollectionCommandHandler = new PhotoCollectionCommandHandler();
        addFabToRootView();
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

    private void handleFABMenu() {
        this._alphaPane.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosCollectionFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhotosCollectionFragment.this._alphaPane.setVisibility(4);
                PhotosCollectionFragment.this._fabLayout.a();
            }
        });
        this._fabLayout.setOnFloatingActionsMenuUpdateListener(new h() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosCollectionFragment.4
            @Override // com.getbase.floatingactionbutton.h
            public void onMenuExpanded() {
                PhotosCollectionFragment.this._alphaPane.setVisibility(0);
                PhotosCollectionFragment.this.handleCreateNewCollectionButtonClick();
                PhotosCollectionFragment.this._alphaPane.callOnClick();
            }

            @Override // com.getbase.floatingactionbutton.h
            public void onMenuCollapsed() {
                PhotosCollectionFragment.this._alphaPane.setVisibility(4);
            }
        });
        if (!isNetworkOnline()) {
            this._fabLayout.setVisibility(8);
        } else {
            this._fabLayout.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateNewCollectionButtonClick() {
        AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticCreateNewPhotoCollection, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosCollectionFragment.5
            {
                put(AdobeAnalyticsSDKReporter.AnalyticArea, AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_OPERATIONS);
                put("type", "photoCollection");
                put(AdobeAnalyticsSDKReporter.AnalyticAction, "create");
            }
        }, null);
        postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_CREATE_NEW_PHOTOCOLLECTION, null);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getEmptyStateViewId() {
        setFabNotAdded(true);
        return R.layout.adobe_photo_assetbrowser_empty_state_view;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void configureEmptyStateView(View view) {
        ((ImageView) view.findViewById(R.id.adobe_csdk_photo_asset_browser_empty_state_icon)).setImageResource(R.drawable.adobe_emptystate_lightroom);
        ((TextView) view.findViewById(R.id.adobe_csdk_photo_asset_browser_empty_state_message)).setText(getResources().getString(R.string.adobe_csdk_photo_asset_browser_empty_folder));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void addFabToRootView() {
        if (Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext())).booleanValue()) {
            RelativeLayout relativeLayout = (RelativeLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.adobe_design_library_floating_menu, (ViewGroup) null);
            this._fabLayout = (FloatingActionsMenu) relativeLayout.findViewById(R.id.adobe_library_collection_FAB);
            this._alphaPane = relativeLayout.findViewById(R.id.adobe_library_alpha_pane);
            handleFABMenu();
            relativeLayout.removeView(this._fabLayout);
            relativeLayout.removeView(this._alphaPane);
            getMainRootView().addView(this._alphaPane);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            layoutParams.setMargins(0, 0, getFabPaddingWidth(), getNavBarHeight(getActivity()));
            getMainRootView().addView(this._fabLayout, layoutParams);
        }
    }

    public void navigateToPhotoCollection(AdobePhotoCollection adobePhotoCollection) {
        AdobeAssetViewNavigateToPhotoCollectionCommand adobeAssetViewNavigateToPhotoCollectionCommand = new AdobeAssetViewNavigateToPhotoCollectionCommand();
        adobeAssetViewNavigateToPhotoCollectionCommand.setCollectionGUID(adobePhotoCollection.getGUID());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCollectionName(adobePhotoCollection.getName());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCatalogGUID(adobePhotoCollection.getCatalog().getGUID());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCatalogName(adobePhotoCollection.getCatalog().getName());
        postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_PHOTO_COLLECTION, adobeAssetViewNavigateToPhotoCollectionCommand);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected IAdobeAssetDataSource getDataSource() {
        return this._photoCollectionsDataSource;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hookUpDataSourceDelegate(boolean z) {
        if (z) {
            this._photoCollectionsDataSource.setDataSourceDelegate(this._photoCollectionsDataSourceDelegate);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getAssetSelectionCount() {
        return AdobeStoragePhotoAssetSelectionState.selectedAssetCount();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getContainerNameForRoot() {
        return AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getHostActivity()) ? getResources().getString(R.string.adobe_csdk_cc_title) : getResources().getString(R.string.adobe_csdk_asset_browser_title);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getCurrentTargetCollectionName() {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void resetAssetsListViewVisualLayout() {
        View mainView = this._photosCollectionListViewController.getMainView();
        if (getAssetsMainRootFrame().indexOfChild(mainView) == -1) {
            getAssetsMainRootFrame().addView(mainView);
        }
        this._currentAssetsViewController = this._photosCollectionListViewController;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOpenCurrentSelectedFilesUserAction() {
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_OPEN_SELECTED_PHOTOS);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleCancelSelectionUserAction() {
        AdobeStoragePhotoAssetSelectionState.resetSelectedAssets();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean handleSearchFunctionality(String str) {
        if (this._photosCollectionListViewController == null) {
            return false;
        }
        this._photosCollectionListViewController.searchInPhotoCollections(str);
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData) {
        AdobeAssetViewNavigateCommands.NavToPhotoCollectionData navToPhotoCollectionData = (AdobeAssetViewNavigateCommands.NavToPhotoCollectionData) navBaseCommandData;
        AdobeAssetViewNavigateToPhotoCollectionCommand adobeAssetViewNavigateToPhotoCollectionCommand = new AdobeAssetViewNavigateToPhotoCollectionCommand();
        adobeAssetViewNavigateToPhotoCollectionCommand.setCollectionGUID(navToPhotoCollectionData.getCollectionGUID());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCollectionName(navToPhotoCollectionData.getCollectionName());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCatalogGUID(navToPhotoCollectionData.getCatalogGUID());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCatalogName(navToPhotoCollectionData.getCatalogName());
        postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_PHOTO_COLLECTION, adobeAssetViewNavigateToPhotoCollectionCommand);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleAssetClickAction(Object obj) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleAppOrientationChange() {
        if (this._photosCollectionListViewController != null) {
            this._photosCollectionListViewController.refreshLayoutDueToOrientationChange();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void hideFab() {
        if (this._fabLayout != null) {
            this._fabLayout.setVisibility(8);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void showFab() {
        if (this._fabLayout != null) {
            this._fabLayout.setVisibility(0);
        }
    }

    class PhotoCollectionsDataSourceDelegate implements IAdobePhotoCollectionsDataSourceDelegate {
        private PhotoCollectionsDataSourceDelegate() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void loadCatalogSucceeded(AdobePhotoCatalog adobePhotoCatalog) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void loadCatalogFailed(AdobeCSDKException adobeCSDKException) {
            loadDataFailed(adobeCSDKException, true);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void loadFirstPageSucceeded() {
            PhotosCollectionFragment.this.ds_didLoadMoreDataWithCount(PhotosCollectionFragment.this._photoCollectionsDataSource.getCount(), null, null);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void loadFirstPageFailed(AdobeCSDKException adobeCSDKException) {
            loadDataFailed(adobeCSDKException, true);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void loadNextPageOfDataSucceeded() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void loadNextPageOfDataFailed(AdobeCSDKException adobeCSDKException) {
            loadDataFailed(adobeCSDKException, false);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void willLoadCatalog() {
            PhotosCollectionFragment.this.ds_willLoadDataFromScratch();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void willLoadFirstPage() {
            PhotosCollectionFragment.this.ds_willLoadNextPageForNonExistingCollection();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoCollectionsDataSourceDelegate
        public void willLoadNextPage() {
            PhotosCollectionFragment.this.ds_willLoadNextPageForExistingCollection();
        }

        private void loadDataFailed(AdobeCSDKException adobeCSDKException, boolean z) {
            PhotosCollectionFragment.this.ds_handleLoadDataErrorCommon();
            AdobePhotoException adobePhotoException = (AdobePhotoException) adobeCSDKException;
            int iIntValue = (adobePhotoException.getData() == null || !adobePhotoException.getData().containsKey("AdobeNetworkHTTPStatus")) ? 0 : ((Integer) adobePhotoException.getData().get("AdobeNetworkHTTPStatus")).intValue();
            if (adobeCSDKException instanceof AdobePhotoException) {
                switch (iIntValue) {
                    case 401:
                    case 404:
                        if (z) {
                            PhotosCollectionFragment.this.ds_handleLoadDataErrorShowEmptyAssetsView();
                        }
                        break;
                    case 600:
                        PhotosCollectionFragment.this.markAsWentOffline();
                        break;
                }
            }
        }
    }
}
