package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetMultiRootedDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerControllerConfigurations;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerMobileCreationConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeMobileCreationEditManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeAssetType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.IAdobeLongClickHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.MobilePackageItemsOneUpData;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.BannerViewUtil;
import com.adobe.creativesdk.foundation.internal.utils.UiUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetCompFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDrawFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderBy;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolderOrderDirection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPSFixFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPSMixFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.AdobeAssetSketchbook;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class MobileCreationPackageCollectionFragment extends AssetViewFragment {
    AdobeAssetDataSource _assetsDataSource;
    MobileCreationPackageCollectionListView _assetsMobileCreationCollectionController;
    AdobeCloud _cloud;
    private MobileCreationEditCommandsHandler _commandHandler;
    AdobeAssetDataSourceType _dataSourcesType;
    EnumSet<AdobeAssetDataSourceType> _filteredMobileCreationDataSources;
    MobileCreationPackageCollectionsDataSourceDelegate _mcCollectionDataSourceDelegate;
    private int _numDataSourcesLoaded = 0;
    ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    Observer _storageAssetsSelectionCountChange;
    private BannerViewUtil.EditSummaryBanner editSummaryBanner;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AdobeAssetsViewContainerConfiguration getAssetViewConfiguration(Bundle bundle) {
        AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration = new AdobeAssetsViewContainerConfiguration();
        adobeAssetsViewContainerConfiguration.createFromBundle(getArguments());
        this._dataSourcesType = adobeAssetsViewContainerConfiguration.getDataSourceType();
        this._cloud = adobeAssetsViewContainerConfiguration.getCloud();
        this._filteredMobileCreationDataSources = adobeAssetsViewContainerConfiguration.getMobileCreationFilteredTypes();
        return adobeAssetsViewContainerConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleLongClickOnAsset(Object obj) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
        if ((getHostActivity() instanceof IAdobeLongClickHandler) && !AdobeCCFilesEditManager.isEditInProgress() && isNetworkOnline()) {
            ((IAdobeLongClickHandler) getActivity()).handlePopupClick(obj, this._assetViewConfiguration, view, AdobeAssetType.ADOBE_ASSET_TYPE_MOBILE_CREATION);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void showCoachMarkForCellView(AssetBrowserCoachMarkData assetBrowserCoachMarkData) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public boolean isContainerReadOnly() {
        return this._assetViewConfiguration.isReadOnly();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this._commandHandler = new MobileCreationEditCommandsHandler();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this._commandHandler.onStart();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this._commandHandler.onStop();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
            this._reusableBitmapCacheWorker = null;
        }
        super.onDestroy();
    }

    public ReusableImageBitmapWorker getReusableImageWorker() {
        return this._reusableBitmapCacheWorker;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean hasActionBarOptions() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void initializeFromViewConfiguration(AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getEmptyStateViewId() {
        return R.layout.adobe_photo_assetbrowser_empty_state_view;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void registerLocalNofications() {
        super.registerLocalNofications();
        if (this._storageAssetsSelectionCountChange == null) {
            this._storageAssetsSelectionCountChange = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionFragment.1
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    MobileCreationPackageCollectionFragment.this.configureMultiSelectViews();
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, this._storageAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, this._storageAssetsSelectionCountChange);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void unRegisterLocalNotifications() {
        super.unRegisterLocalNotifications();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, this._storageAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, this._storageAssetsSelectionCountChange);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void configureEmptyStateView(View view) {
        view.findViewById(R.id.adobe_csdk_photo_asset_browser_empty_state_icon).setVisibility(0);
        ((TextView) view.findViewById(R.id.adobe_csdk_photo_asset_browser_empty_state_message)).setText(getResources().getString(R.string.adobe_csdk_all_mobilecreations_empty_collection));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void loadMoreItemsFromDataSource() {
        this._assetsDataSource.loadNextPageOfData();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void setupAssetsDataSourceAndListViewControllers() {
        if (this._assetsMobileCreationCollectionController == null) {
            ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
            imageCacheParams.setMemCacheSizePercent(0.1f);
            this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(getActivity());
            this._reusableBitmapCacheWorker.addImageCache(getActivity().getSupportFragmentManager(), imageCacheParams);
            this._assetsMobileCreationCollectionController = new CompositionsListView(getActivity());
            this._assetsMobileCreationCollectionController.setContainerController(this);
            this._assetsMobileCreationCollectionController.setReusableImageWorker(this._reusableBitmapCacheWorker);
            if (isSpecificMobileCreationsToBeLoaded()) {
                this._assetsDataSource = new AdobeAssetMultiRootedDataSource(this._filteredMobileCreationDataSources, this._assetViewConfiguration.getCloud());
            } else {
                this._dataSourcesType = AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations;
                this._assetsDataSource = new AdobeAssetMultiRootedDataSource(this._dataSourcesType, this._assetViewConfiguration.getCloud());
            }
            this._mcCollectionDataSourceDelegate = new MobileCreationPackageCollectionsDataSourceDelegate();
            this._assetsDataSource.setDelegate(this._mcCollectionDataSourceDelegate);
            this._assetsMobileCreationCollectionController.setMobileCreationCollectionsDataSource(this._assetsDataSource);
            this._assetsMobileCreationCollectionController.performInitialization(getActivity());
            this._assetsDataSource.loadItemsFromScratch(true);
            this._currentAssetsViewController = this._assetsMobileCreationCollectionController;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this._assetsMobileCreationCollectionController != null) {
            RecyclerView concreteRecyclerView = this._assetsMobileCreationCollectionController.getConcreteRecyclerView(getContext());
            concreteRecyclerView.setClipToPadding(false);
            concreteRecyclerView.setPadding(concreteRecyclerView.getPaddingLeft(), concreteRecyclerView.getPaddingTop(), concreteRecyclerView.getPaddingRight(), UiUtils.getNavBarHeightInternal(getActivity()));
        }
    }

    public static AdobeAssetDataSourceType getAssetDataSourceTypeFor(AdobeAssetPackagePages adobeAssetPackagePages) {
        AdobeAssetDataSourceType adobeAssetDataSourceType = AdobeAssetDataSourceType.AdobeAssetDataSourceFiles;
        if (adobeAssetPackagePages instanceof AdobeAssetSketchbook) {
            return AdobeAssetDataSourceType.AdobeAssetDataSourceSketches;
        }
        if (adobeAssetPackagePages instanceof AdobeAssetDrawFile) {
            return AdobeAssetDataSourceType.AdobeAssetDataSourceDraw;
        }
        if (adobeAssetPackagePages instanceof AdobeAssetPSMixFile) {
            return AdobeAssetDataSourceType.AdobeAssetDataSourcePSMix;
        }
        if (adobeAssetPackagePages instanceof AdobeAssetCompFile) {
            return AdobeAssetDataSourceType.AdobeAssetDataSourceCompositions;
        }
        if (adobeAssetPackagePages instanceof AdobeAssetPSFixFile) {
            return AdobeAssetDataSourceType.AdobeAssetDataSourcePSFix;
        }
        return adobeAssetDataSourceType;
    }

    class MobileCreationEditCommandsHandler extends AdobeAssetViewCommandsHandler {
        private MobileCreationEditCommandsHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_COMPLETED);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_COMPLETED) {
                MobileCreationPackageCollectionFragment.this.action_editCompleted();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void action_editCompleted() {
        boolean editSummary = AdobeMobileCreationEditManager.getLastSesstion().getEditSummary();
        createBannerView();
        loadBannerView(editSummary);
        if (editSummary) {
            reloadDataFromDataSource();
        }
    }

    private void createBannerView() {
        this.editSummaryBanner = new BannerViewUtil(getHostActivity()).createEditSummaryView();
        getMainRootView().addView(this.editSummaryBanner.getBannerView());
    }

    private void loadBannerView(boolean z) {
        final View bannerView = this.editSummaryBanner.getBannerView();
        TextView bannerTitleView = this.editSummaryBanner.getBannerTitleView();
        if (z) {
            bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_success_banner_background);
            bannerTitleView.setText(getResources().getString(R.string.adobe_csdk_IDS_ARCHIVE_SUCCESS_MSG_SINGULAR));
        } else {
            bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_error_banner_background);
            bannerTitleView.setText(getResources().getString(R.string.adobe_csdk_IDS_ARCHIVE_ERROR_MSG_SINGULAR));
        }
        bannerView.setVisibility(0);
        AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionFragment.2
            @Override // java.lang.Runnable
            public void run() {
                if (bannerView != null) {
                    bannerView.setVisibility(8);
                }
            }
        }, 5000L);
    }

    public void navigateToMobileCreationPackageCollection(AdobeAssetPackagePages adobeAssetPackagePages) {
        AdobeAssetViewNavigateCommands.NavToMobileCreationPackageCollectionData navToMobileCreationPackageCollectionData = new AdobeAssetViewNavigateCommands.NavToMobileCreationPackageCollectionData();
        navToMobileCreationPackageCollectionData.setCollectionGUID(adobeAssetPackagePages.getGUID());
        navToMobileCreationPackageCollectionData.setCollectionName(adobeAssetPackagePages.getName());
        navToMobileCreationPackageCollectionData.setParentHref(adobeAssetPackagePages.getParentHref().toString());
        navToMobileCreationPackageCollectionData.setDataSourceType(getAssetDataSourceTypeFor(adobeAssetPackagePages));
        postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_MOBILECREATION_COLLECTION, navToMobileCreationPackageCollectionData);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected IAdobeAssetDataSource getDataSource() {
        return this._assetsDataSource;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hookUpDataSourceDelegate(boolean z) {
        if (z) {
            this._assetsDataSource.setDelegate(this._mcCollectionDataSourceDelegate);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getAssetSelectionCount() {
        return 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleAppOrientationChange() {
        this._assetsMobileCreationCollectionController.refreshLayoutDueToOrientationChange();
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
        View mainView = this._assetsMobileCreationCollectionController.getMainView();
        if (getAssetsMainRootFrame().indexOfChild(mainView) == -1) {
            getAssetsMainRootFrame().addView(mainView);
        }
        this._currentAssetsViewController = this._assetsMobileCreationCollectionController;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOpenCurrentSelectedFilesUserAction() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleCancelSelectionUserAction() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean handleSearchFunctionality(String str) {
        if (this._assetsMobileCreationCollectionController == null) {
            return false;
        }
        this._assetsMobileCreationCollectionController.searchMobileCreationPackageCollections(str);
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData) {
        postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_MOBILECREATION_COLLECTION, navBaseCommandData);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleAssetClickAction(Object obj) {
        int csdkConfigurationKey;
        MobilePackageItemsOneUpData mobilePackageItemsOneUpData = (MobilePackageItemsOneUpData) obj;
        if (!(getActivity() instanceof AdobeUxAssetBrowserV2Activity) && AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getActivity())) {
            csdkConfigurationKey = AdobeOneUpViewerControllerConfigurations.getLokiConfigurationKey();
        } else {
            csdkConfigurationKey = AdobeOneUpViewerControllerConfigurations.getCsdkConfigurationKey();
        }
        AdobeOneUpViewerMobileCreationConfiguration adobeOneUpViewerMobileCreationConfiguration = (AdobeOneUpViewerMobileCreationConfiguration) AdobeOneUpViewerConfigurationFactory.getOneUpViewerController(csdkConfigurationKey).getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION_KEY);
        adobeOneUpViewerMobileCreationConfiguration.setItemsList(mobilePackageItemsOneUpData._itemsList);
        adobeOneUpViewerMobileCreationConfiguration.setAssetPackagePages(mobilePackageItemsOneUpData._packagePages);
        adobeOneUpViewerMobileCreationConfiguration.setStartIndex(0);
        Intent intent = new Intent();
        intent.setClass(getActivity(), AdobeUXCompositionOneUpViewerActivity.class);
        intent.putExtra("one_up_controller_code", csdkConfigurationKey);
        getActivity().startActivityForResult(intent, AdobeAssetViewUtils.MOBILE_PACKAGE_ITEMS_ONE_UP_ACTIVITY_REQUEST);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AssetViewFragment.AssetsViewBaseActionBarController createActionBarController() {
        return AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext()) ? new ActionBarMobileCreationsCCController() : new AssetViewFragment.AssetsViewBaseActionBarController();
    }

    private boolean isSpecificMobileCreationsToBeLoaded() {
        return this._filteredMobileCreationDataSources != null && this._filteredMobileCreationDataSources.size() > 0;
    }

    class ActionBarMobileCreationsCCController extends AssetViewFragment.AdobeCCActionBarController {
        protected MenuItem _sortMenuItem;

        ActionBarMobileCreationsCCController() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AdobeCCActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            menuInflater.inflate(R.menu.adobe_assetview_common_sort, menu);
            this._sortMenuItem = menu.findItem(R.id.adobe_csdk_uxassetbrowser_sdk_common_menu_sortbydate);
            super.onCreateOptionsMenu(menu, menuInflater);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AdobeCCActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            this._sortMenuItem.setTitle(AdobeAssetViewUtils.getAdobeFontFormattedString(MobileCreationPackageCollectionFragment.this.getResources().getString(R.string.adobe_csdk_mobilecreations_sort), MobileCreationPackageCollectionFragment.this.getActivity()));
            this._sortMenuItem.setVisible(false);
            super.onPrepareOptionsMenu(menu);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AdobeCCActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected boolean handleOptionItemSelect(int i) {
            if (i != R.id.adobe_csdk_uxassetbrowser_sdk_common_menu_sortbydate) {
                return super.handleOptionItemSelect(i);
            }
            AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticSortByDate, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageCollectionFragment.ActionBarMobileCreationsCCController.1
                {
                    put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
                    put("type", "mobileCreations");
                    put(AdobeAnalyticsSDKReporter.AnalyticAction, "sortByDate");
                }
            }, null);
            AdobeAssetFolderOrderBy adobeAssetFolderOrderBy = AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED;
            AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection = AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_ASCENDING;
            AdobeAssetDataSource adobeAssetDataSource = (AdobeAssetDataSource) MobileCreationPackageCollectionFragment.this.getDataSource();
            adobeAssetDataSource.getTargetFolder().resetPagingOrderedByField(adobeAssetFolderOrderBy, adobeAssetFolderOrderDirection);
            adobeAssetDataSource.loadItemsFromScratch(true);
            return true;
        }
    }

    class MobileCreationPackageCollectionsDataSourceDelegate implements IAdobeAssetDataSourceDelegate {
        private MobileCreationPackageCollectionsDataSourceDelegate() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void willLoadDataFromScratch() {
            MobileCreationPackageCollectionFragment.this.ds_willLoadDataFromScratch();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void willLoadNextPageForExistingPackage() {
            MobileCreationPackageCollectionFragment.this.ds_willLoadNextPageForExistingCollection();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didLoadMoreDataWithCount(int i) {
            MobileCreationPackageCollectionFragment.this.ds_didLoadMoreDataWithCount(i, null, null);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException) {
            MobileCreationPackageCollectionFragment.this.ds_didFailToLoadMoreDataWithError(adobeAssetException);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didFinishLoading() {
            MobileCreationPackageCollectionFragment.this.ds_didFinishLoading(MobileCreationPackageCollectionFragment.this._assetsDataSource.getCount());
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void ds_didFinishLoading(int i) {
        super.ds_didFinishLoading(i);
    }
}
