package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAssetBrowserViewEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetCompFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetDrawFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetPSFixFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetPSMixFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetSketchbookInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerControllerConfigurations;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerMobileCreationConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.MobilePackageItemsOneUpData;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.UiUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes2.dex */
public class MobileCreationPackageItemsFragment extends AssetViewFragment {
    private AdobeCloud _cloud;
    private MobileCreationPackageItemsDataSourceWrapper _mcPackageItemsWrapperDataSource;
    private MobileCreationsPackageCollectionsDataSourceDelegate _mcdatSouorceDelegate;
    private AdobeAssetDataSource _mobileCreationPackageDataSource;
    MobileCreationPackageItemsListView _mobilePackageItemsListViewController;
    ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    private AdobeAssetPackagePages _targetPackage;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AdobeAssetsViewContainerConfiguration getAssetViewConfiguration(Bundle bundle) {
        AdobeMobilePackageCollectionConfiguration adobeMobilePackageCollectionConfiguration = new AdobeMobilePackageCollectionConfiguration();
        adobeMobilePackageCollectionConfiguration.createFromBundle(getArguments());
        this._cloud = adobeMobilePackageCollectionConfiguration.getCloud();
        return adobeMobilePackageCollectionConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean hasActionBarOptions() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void showCoachMarkForCellView(AssetBrowserCoachMarkData assetBrowserCoachMarkData) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public boolean isContainerReadOnly() {
        return false;
    }

    public static AdobeAssetPackagePages getPackagePagesFromHref(String str, String str2, String str3) {
        AdobeAssetPackagePages adobeAssetDrawFileInternal = null;
        try {
            URI uri = new URI(str);
            URI uri2 = new URI(str2);
            AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(uri, str3);
            AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref2 = AdobeStorageResourceCollection.collectionFromHref(uri2);
            if (str.contains("/adobedraw/") || str.contains("/adobedrawandroid/")) {
                adobeAssetDrawFileInternal = new AdobeAssetDrawFileInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            } else if (str.contains("/adobesketch/") || str.contains("/adobesketch-android/")) {
                adobeAssetDrawFileInternal = new AdobeAssetSketchbookInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            } else if (str.contains("/adobe-psmix/") || str.contains("/adobeclsmix/")) {
                adobeAssetDrawFileInternal = new AdobeAssetPSMixFileInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            } else if (str.contains("/adobe-layup/") || str.contains("/adobecompandroid/")) {
                adobeAssetDrawFileInternal = new AdobeAssetCompFileInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            } else if (str.contains("/adobe-psfix/") || str.contains("/adobefixandroid/") || str.contains("/adobe-psfix-cls/")) {
                adobeAssetDrawFileInternal = new AdobeAssetPSFixFileInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            }
        } catch (URISyntaxException e2) {
        }
        return adobeAssetDrawFileInternal;
    }

    public static AdobeAssetPackagePages getPackagePagesFromHref(String str, String str2) {
        AdobeAssetPackagePages adobeAssetDrawFileInternal = null;
        try {
            URI uri = new URI(str);
            URI uri2 = new URI(str2);
            AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(uri);
            AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref2 = AdobeStorageResourceCollection.collectionFromHref(uri2);
            if (str.contains("/adobedraw/") || str.contains("/adobedrawandroid/")) {
                adobeAssetDrawFileInternal = new AdobeAssetDrawFileInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            } else if (str.contains("/adobesketch/") || str.contains("/adobesketch-android/")) {
                adobeAssetDrawFileInternal = new AdobeAssetSketchbookInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            } else if (str.contains("/adobe-psmix/") || str.contains("/adobeclsmix/")) {
                adobeAssetDrawFileInternal = new AdobeAssetPSMixFileInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            } else if (str.contains("/adobe-layup/") || str.contains("/adobecompandroid/")) {
                adobeAssetDrawFileInternal = new AdobeAssetCompFileInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            } else if (str.contains("/adobe-psfix/") || str.contains("/adobefixandroid/") || str.contains("/adobe-psfix-cls/")) {
                adobeAssetDrawFileInternal = new AdobeAssetPSFixFileInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageResourceCollectionCollectionFromHref2);
            }
        } catch (URISyntaxException e2) {
        }
        return adobeAssetDrawFileInternal;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void initializeFromViewConfiguration(AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration) {
        AdobeMobilePackageCollectionConfiguration adobeMobilePackageCollectionConfiguration = (AdobeMobilePackageCollectionConfiguration) adobeAssetsViewContainerConfiguration;
        this._targetPackage = getPackagePagesFromHref(adobeMobilePackageCollectionConfiguration.getTargetCollectionHref(), adobeMobilePackageCollectionConfiguration.getTargetParentCollectionHref(), adobeMobilePackageCollectionConfiguration.getTargetModifedDate());
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean isContainerShowingRootCollection() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void setupAssetsDataSourceAndListViewControllers() {
        this._mcPackageItemsWrapperDataSource = new MobileCreationPackageItemsDataSourceWrapper();
        this._mcdatSouorceDelegate = new MobileCreationsPackageCollectionsDataSourceDelegate();
        this._mcPackageItemsWrapperDataSource.setDelegate(this._mcdatSouorceDelegate);
        ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
        imageCacheParams.setMemCacheSizePercent(0.1f);
        this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(getActivity());
        this._reusableBitmapCacheWorker.addImageCache(getActivity().getSupportFragmentManager(), imageCacheParams);
        this._mobilePackageItemsListViewController = new MobileCreationPackageItemsListView(getHostActivity());
        this._mobilePackageItemsListViewController.setContainerController(this);
        this._mobilePackageItemsListViewController.setTargetPackage(this._targetPackage);
        this._mobilePackageItemsListViewController.performInitialization(getHostActivity());
        this._mobilePackageItemsListViewController.setReusableImageWorker(this._reusableBitmapCacheWorker);
        this._mcPackageItemsWrapperDataSource.loadItemsFromScratch();
        new AdobeAnalyticsETSAssetBrowserViewEvent(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_GRID, AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_MOBILE_CREATION).endAndTrackEvent();
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView concreteRecyclerView = this._mobilePackageItemsListViewController.getConcreteRecyclerView(getContext());
        concreteRecyclerView.setClipToPadding(false);
        concreteRecyclerView.setPadding(concreteRecyclerView.getPaddingLeft(), concreteRecyclerView.getPaddingTop(), concreteRecyclerView.getPaddingRight(), UiUtils.getNavBarHeightInternal(getActivity()));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected IAdobeAssetDataSource getDataSource() {
        return this._mcPackageItemsWrapperDataSource;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hookUpDataSourceDelegate(boolean z) {
        if (z) {
            this._mcPackageItemsWrapperDataSource.setDelegate(this._mcdatSouorceDelegate);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleAppOrientationChange() {
        this._mobilePackageItemsListViewController.refreshLayoutDueToOrientationChange();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getAssetSelectionCount() {
        return 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getContainerNameForRoot() {
        return getString(R.string.adobe_csdk_uxassetbrowser_csdk_myassets_main);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getCurrentTargetCollectionName() {
        if (this._targetPackage == null || !this._targetPackage.isMetadataLoaded()) {
            return null;
        }
        return this._targetPackage.getName();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void resetAssetsListViewVisualLayout() {
        View mainView = this._mobilePackageItemsListViewController.getMainView();
        if (getAssetsMainRootFrame().indexOfChild(mainView) == -1) {
            getAssetsMainRootFrame().addView(mainView);
        }
        this._currentAssetsViewController = this._mobilePackageItemsListViewController;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOpenCurrentSelectedFilesUserAction() {
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_OPEN_SELECTED_FILES);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleCancelSelectionUserAction() {
        AdobeStorageAssetSelectionState.resetSelectedAssets();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean handleSearchFunctionality(String str) {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData) {
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
        adobeOneUpViewerMobileCreationConfiguration.setStartIndex(mobilePackageItemsOneUpData.startIndex);
        Intent intent = new Intent();
        intent.setClass(getActivity(), AdobeUXMobilePackageItemOneUpViewerActivity.class);
        intent.putExtra("one_up_controller_code", csdkConfigurationKey);
        getActivity().startActivityForResult(intent, AdobeAssetViewUtils.MOBILE_PACKAGE_ITEMS_ONE_UP_ACTIVITY_REQUEST);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleLongClickOnAsset(Object obj) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
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

    class MobileCreationPackageItemsDataSourceWrapper implements IAdobeAssetDataSource {
        MobileCreationsPackageCollectionsDataSourceDelegate _delegate;

        private MobileCreationPackageItemsDataSourceWrapper() {
        }

        public void setDelegate(MobileCreationsPackageCollectionsDataSourceDelegate mobileCreationsPackageCollectionsDataSourceDelegate) {
            this._delegate = mobileCreationsPackageCollectionsDataSourceDelegate;
        }

        private void loadMetadata() {
            MobileCreationPackageItemsFragment.this._targetPackage.reloadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageItemsFragment.MobileCreationPackageItemsDataSourceWrapper.1
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
                public void onCompletion() {
                    if (MobileCreationPackageItemsDataSourceWrapper.this._delegate != null) {
                        MobileCreationPackageItemsFragment.this.setContainerFragmentTitle(MobileCreationPackageItemsFragment.this._targetPackage.getName());
                        MobileCreationPackageItemsDataSourceWrapper.this._delegate.didFinishLoading();
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageItemsFragment.MobileCreationPackageItemsDataSourceWrapper.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (MobileCreationPackageItemsDataSourceWrapper.this._delegate != null) {
                        MobileCreationPackageItemsDataSourceWrapper.this._delegate.didFailToLoadMoreDataWithError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, adobeCSDKException.getData()));
                    }
                }
            });
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
        public int getCount() {
            if (MobileCreationPackageItemsFragment.this._targetPackage.getPages() == null) {
                return 0;
            }
            return MobileCreationPackageItemsFragment.this._targetPackage.getPages().size();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
        public boolean loadItemsFromScratch() {
            if (this._delegate != null) {
                this._delegate.willLoadDataFromScratch();
            }
            loadMetadata();
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
        public void loadNextPageOfData() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
        public void resetDelegate() {
            this._delegate = null;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AssetViewFragment.AssetsViewBaseActionBarController createActionBarController() {
        return new MobileCreationPackageItemsActionBarController();
    }

    public class MobileCreationPackageItemsActionBarController extends AssetViewFragment.AssetsViewBaseActionBarController {
        protected MobileCreationPackageItemsActionBarController() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected boolean handleOptionItemSelect(int i) {
            return super.handleOptionItemSelect(i);
        }
    }

    class MobileCreationsPackageCollectionsDataSourceDelegate implements IAdobeAssetDataSourceDelegate {
        private MobileCreationsPackageCollectionsDataSourceDelegate() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void willLoadDataFromScratch() {
            MobileCreationPackageItemsFragment.this.ds_willLoadDataFromScratch();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void willLoadNextPageForExistingPackage() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didLoadMoreDataWithCount(int i) {
            MobileCreationPackageItemsFragment.this.ds_didLoadMoreDataWithCount(i, null, null);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException) {
            MobileCreationPackageItemsFragment.this.ds_didFailToLoadMoreDataWithError(adobeAssetException);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didFinishLoading() {
            MobileCreationPackageItemsFragment.this.ds_didFinishLoading(MobileCreationPackageItemsFragment.this._mcPackageItemsWrapperDataSource.getCount());
            MobileCreationPackageItemsFragment.this._mobilePackageItemsListViewController.refreshDueToDataChange();
        }
    }
}
