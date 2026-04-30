package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAssetBrowserViewEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoAssetsDataSourceDelegate;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerControllerConfigurations;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerPhotosConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeAssetType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.IAdobeLongClickHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.NavBarUtil;
import com.adobe.creativesdk.foundation.internal.utils.UiUtils;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.getbase.floatingactionbutton.FloatingActionButton;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.getbase.floatingactionbutton.h;
import java.util.EnumSet;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class PhotosAssetsFragment extends AssetViewFragment {
    public static final int EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE = 2;
    private View _alphaPane;
    private FloatingActionsMenu _floatingActionsMenu;
    private boolean _isUploadInProgress;
    private PhotoAssetCommandHandler _photoAssetCommandHandler;
    private AdobePhotoAssetsDataSource _photoAssetsDataSource;
    private PhotoAssetsDataSourceDelegate _photoAssetsDataSourceDelegate;
    private PhotosAssetListView _photoAssetsListViewController;
    private Observer _photoAssetsSelectionCountChange;
    private Observer _photoUploadObserver;
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    private int _selectionTimeStampAtStop = -1;
    private FloatingActionButton _takePhotoFAB;
    private AdobePhotoCollection _targetCollection;
    private FloatingActionButton _uploadFAB;
    private boolean requestMade;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AdobeAssetsViewContainerConfiguration getAssetViewConfiguration(Bundle bundle) {
        AdobePhotosViewContainerConfiguration adobePhotosViewContainerConfiguration = new AdobePhotosViewContainerConfiguration();
        adobePhotosViewContainerConfiguration.createFromBundle(bundle);
        return adobePhotosViewContainerConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void loadMoreItemsFromDataSource() {
        if (this._photoAssetsDataSource.hasMorePages()) {
            super.loadMoreItemsFromDataSource();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
        imageCacheParams.setMemCacheSizePercent(0.1f);
        this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(getHostActivity());
        this._reusableBitmapCacheWorker.addImageCache(getFragmentManager(), imageCacheParams);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this._photoAssetCommandHandler.onStart();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this._photoAssetCommandHandler.onStop();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
        }
        this._reusableBitmapCacheWorker = null;
        super.onDestroy();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void showEmptySearchView() {
        if (this._photoAssetsListViewController != null) {
            this._photoAssetsListViewController.showEmptySearch();
        }
    }

    class PhotoAssetCommandHandler extends AdobeAssetViewCommandsHandler {
        private PhotoAssetCommandHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ACTION_PHOTOVIEW_EDIT_COMPLETED);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_COMPLETED || adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_PHOTOVIEW_EDIT_COMPLETED) {
                PhotosAssetsFragment.this.reloadDataFromDataSource();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void showCoachMarkForCellView(AssetBrowserCoachMarkData assetBrowserCoachMarkData) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public boolean isContainerReadOnly() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleLongClickOnAsset(Object obj) {
        if (getActivity() instanceof IAdobeLongClickHandler) {
            ((IAdobeLongClickHandler) getActivity()).handleLongClick(obj, AdobeAssetType.ADOBE_ASSET_TYPE_PHOTOS, this._assetViewConfiguration);
        }
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

    AdobePhotoCollection getPhotoCollectionFromHref(AdobePhotosViewContainerConfiguration adobePhotosViewContainerConfiguration) {
        return new AdobePhotoCollection(adobePhotosViewContainerConfiguration.getTargetCollectionName(), adobePhotosViewContainerConfiguration.getTargetCollectionGUID(), new AdobePhotoCatalog(adobePhotosViewContainerConfiguration.getTargetCollectionCatalogName(), adobePhotosViewContainerConfiguration.getTargetCollectionCatalogGUID(), this._assetViewConfiguration.getCloud()));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handlePostOnCreateView(Bundle bundle) {
        super.handlePostOnCreateView(bundle);
        this._selectionTimeStampAtStop = -1;
        addFabToRootView();
        this._photoAssetCommandHandler = new PhotoAssetCommandHandler();
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Boolean.valueOf(NavBarUtil.getHasTranslucentNav(getHostActivity()));
        int navBarHeight = getNavBarHeight(getActivity());
        int fabPaddingWidth = getFabPaddingWidth();
        if (this._floatingActionsMenu != null) {
            setLayoutMargin(fabPaddingWidth, navBarHeight);
        }
        super.onConfigurationChanged(configuration);
    }

    private void setLayoutMargin(int i, int i2) {
        ((RelativeLayout.LayoutParams) this._floatingActionsMenu.getLayoutParams()).setMargins(0, 0, i, i2);
    }

    private void handleFABMenu() {
        this._floatingActionsMenu.setOnFloatingActionsMenuUpdateListener(new h() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetsFragment.1
            @Override // com.getbase.floatingactionbutton.h
            public void onMenuExpanded() {
                PhotosAssetsFragment.this._alphaPane.setVisibility(0);
                if (PhotosAssetsFragment.this._isUploadInProgress) {
                    PhotosAssetsFragment.this._uploadFAB.setTitle(PhotosAssetsFragment.this.getResources().getString(R.string.adobe_csdk_CANCEL_UPLOAD_ASSET_BROWSER_BUTTON));
                    PhotosAssetsFragment.this._takePhotoFAB.setVisibility(8);
                } else {
                    PhotosAssetsFragment.this._uploadFAB.setTitle(PhotosAssetsFragment.this.getResources().getString(R.string.adobe_csdk_UPLOAD_PHOTO_ASSET_BROWSER_BUTTON));
                    PhotosAssetsFragment.this._takePhotoFAB.setVisibility(0);
                }
            }

            @Override // com.getbase.floatingactionbutton.h
            public void onMenuCollapsed() {
                PhotosAssetsFragment.this._alphaPane.setVisibility(4);
            }
        });
        this._alphaPane.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetsFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhotosAssetsFragment.this._alphaPane.setVisibility(4);
                PhotosAssetsFragment.this._floatingActionsMenu.a();
            }
        });
        FABClickListener fABClickListener = new FABClickListener();
        this._uploadFAB.setOnClickListener(fABClickListener);
        this._takePhotoFAB.setOnClickListener(fABClickListener);
        if (!isNetworkOnline()) {
            this._floatingActionsMenu.setVisibility(8);
        } else {
            this._floatingActionsMenu.setVisibility(0);
        }
    }

    class FABClickListener implements View.OnClickListener {
        private FABClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == PhotosAssetsFragment.this._uploadFAB.getId()) {
                if (PhotosAssetsFragment.this._targetCollection != null) {
                    if (PhotosAssetsFragment.this._isUploadInProgress) {
                        PhotosAssetsFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_CANCEL_PHOTO_UPLOAD, PhotosAssetsFragment.this._targetCollection);
                    } else if (ContextCompat.checkSelfPermission(PhotosAssetsFragment.this.getActivity(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                        PhotosAssetsFragment.this.requestMade = true;
                        PhotosAssetsFragment.this.getParentFragment().requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 2);
                    } else {
                        PhotosAssetsFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_PHOTO_UPLOAD_FILES, PhotosAssetsFragment.this._targetCollection);
                    }
                }
            } else if (view.getId() == PhotosAssetsFragment.this._takePhotoFAB.getId()) {
                PhotosAssetsFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_PHOTO_UPLOAD_FILES_FROM_CAMERA, PhotosAssetsFragment.this._targetCollection);
            }
            PhotosAssetsFragment.this._floatingActionsMenu.a();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void initializeFromViewConfiguration(AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration) {
        setTargetCollection(getPhotoCollectionFromHref((AdobePhotosViewContainerConfiguration) adobeAssetsViewContainerConfiguration));
    }

    private void setTargetCollection(AdobePhotoCollection adobePhotoCollection) {
        this._targetCollection = adobePhotoCollection;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean isContainerShowingRootCollection() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getEmptyStateViewId() {
        super.setFabNotAdded(true);
        return R.layout.adobe_photo_assetbrowser_empty_state_view;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void addFabToRootView() {
        if (Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext())).booleanValue()) {
            RelativeLayout relativeLayout = (RelativeLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.adobe_photos_items_floating_menu, (ViewGroup) null);
            this._floatingActionsMenu = (FloatingActionsMenu) relativeLayout.findViewById(R.id.adobe_photos_items_uploadFAB);
            this._uploadFAB = (FloatingActionButton) relativeLayout.findViewById(R.id.adobe_photos_items_uploadAction);
            this._takePhotoFAB = (FloatingActionButton) relativeLayout.findViewById(R.id.adobe_photos_items_takePhoto);
            this._alphaPane = relativeLayout.findViewById(R.id.adobe_photos_items_alpha_pane);
            handleFABMenu();
            relativeLayout.removeView(this._floatingActionsMenu);
            relativeLayout.removeView(this._alphaPane);
            getMainRootView().addView(this._alphaPane);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            layoutParams.setMargins(0, 0, getFabPaddingWidth(), getNavBarHeight(getActivity()));
            getMainRootView().addView(this._floatingActionsMenu, layoutParams);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void setupAssetsDataSourceAndListViewControllers() {
        if (this._photoAssetsListViewController == null) {
            this._photoAssetsListViewController = new PhotosAssetListView(getActivity());
            this._photoAssetsListViewController.setContainerController(this);
            this._photoAssetsDataSourceDelegate = new PhotoAssetsDataSourceDelegate();
            this._photoAssetsDataSource = new AdobePhotoAssetsDataSource(this._targetCollection, this._photoAssetsDataSourceDelegate);
            this._photoAssetsListViewController.set_photoAssetsDataSource(this._photoAssetsDataSource);
            this._photoAssetsListViewController.performInitialization(getActivity());
            this._photoAssetsListViewController.setReusableImageWorker(this._reusableBitmapCacheWorker);
            this._currentAssetsViewController = this._photoAssetsListViewController;
            this._photoAssetsDataSource.loadFirstPage();
            new AdobeAnalyticsETSAssetBrowserViewEvent(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_GRID, "photo").endAndTrackEvent();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView concreteRecyclerView = this._photoAssetsListViewController.getConcreteRecyclerView(getContext());
        concreteRecyclerView.setClipToPadding(false);
        concreteRecyclerView.setPadding(concreteRecyclerView.getPaddingLeft(), concreteRecyclerView.getPaddingTop(), concreteRecyclerView.getPaddingRight(), UiUtils.getNavBarHeightInternal(getActivity()));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected IAdobeAssetDataSource getDataSource() {
        return this._photoAssetsDataSource;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hookUpDataSourceDelegate(boolean z) {
        if (z) {
            this._photoAssetsDataSource.setDataSourceDelegate(this._photoAssetsDataSourceDelegate);
        } else {
            this._photoAssetsDataSource.setDataSourceDelegate(null);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getAssetSelectionCount() {
        return AdobeStoragePhotoAssetSelectionState.selectedAssetCount();
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
    protected void resetAssetsListViewVisualLayout() {
        View mainView = this._photoAssetsListViewController.getMainView();
        if (getAssetsMainRootFrame().indexOfChild(mainView) == -1) {
            getAssetsMainRootFrame().addView(mainView);
        }
        this._currentAssetsViewController = this._photoAssetsListViewController;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleAssetClickAction(Object obj) {
        int csdkConfigurationKey;
        if (obj instanceof AdobePhotoAsset) {
            if (!(getActivity() instanceof AdobeUxAssetBrowserV2Activity) && AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getActivity())) {
                csdkConfigurationKey = AdobeOneUpViewerControllerConfigurations.getLokiConfigurationKey();
            } else {
                csdkConfigurationKey = AdobeOneUpViewerControllerConfigurations.getCsdkConfigurationKey();
            }
            AdobeOneUpViewerPhotosConfiguration adobeOneUpViewerPhotosConfiguration = (AdobeOneUpViewerPhotosConfiguration) AdobeOneUpViewerConfigurationFactory.getOneUpViewerController(csdkConfigurationKey).getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION_KEY);
            adobeOneUpViewerPhotosConfiguration.setAdobePhotoAsset((AdobePhotoAsset) obj);
            adobeOneUpViewerPhotosConfiguration.setAdobePhotoDataSource(this._photoAssetsDataSource);
            Intent intent = new Intent();
            intent.setClass(getActivity(), AdobeUXPhotoAssetOneUpViewerActivity.class);
            intent.putExtra("one_up_controller_code", csdkConfigurationKey);
            getActivity().startActivityForResult(intent, AdobeAssetViewUtils.PHOTO_ONE_UP_ACTIVITY_REQUEST);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOpenCurrentSelectedFilesUserAction() {
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_OPEN_SELECTED_PHOTOS);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleCancelSelectionUserAction() {
        AdobeStoragePhotoAssetSelectionState.resetSelectedAssets();
        if (this._photoAssetsListViewController != null) {
            this._photoAssetsListViewController.refreshOnlyListView();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean handleSearchFunctionality(String str) {
        if (this._photoAssetsListViewController == null) {
            return false;
        }
        this._photoAssetsListViewController.searchInPhotoAssets(str);
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void registerLocalNofications() {
        super.registerLocalNofications();
        if (this._photoAssetsSelectionCountChange == null) {
            this._photoAssetsSelectionCountChange = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetsFragment.3
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    PhotosAssetsFragment.this.configureMultiSelectViews();
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, this._photoAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, this._photoAssetsSelectionCountChange);
        if (this._photoUploadObserver == null) {
            this._photoUploadObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetsFragment.4
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AdobeNotification adobeNotification = (AdobeNotification) obj;
                    AdobeUploadSession adobeUploadSession = (AdobeUploadSession) adobeNotification.getInfo().get(AdobeUploadManager.UPLOAD_SESSION_KEY);
                    if ((adobeUploadSession.getDestinationFolder() instanceof AdobePhotoCollection) && PhotosAssetsFragment.this._targetCollection.isSameLocation((AdobePhotoCollection) adobeUploadSession.getDestinationFolder())) {
                        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted) {
                            PhotosAssetsFragment.this.setupUpload(adobeUploadSession);
                            return;
                        }
                        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete) {
                            PhotosAssetsFragment.this.cleanUpUpload();
                            PhotosAssetsFragment.this.showUploadSummaryBar(adobeUploadSession);
                        } else if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled) {
                            PhotosAssetsFragment.this.cleanUpUpload();
                        }
                    }
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted, this._photoUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, this._photoUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled, this._photoUploadObserver);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void unRegisterLocalNotifications() {
        super.unRegisterLocalNotifications();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, this._photoAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, this._photoAssetsSelectionCountChange);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted, this._photoUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, this._photoUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled, this._photoUploadObserver);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void hideFab() {
        if (this._floatingActionsMenu != null) {
            this._floatingActionsMenu.setVisibility(8);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void showFab() {
        if (this._floatingActionsMenu != null) {
            this._floatingActionsMenu.setVisibility(0);
        }
    }

    private void checkAndPrepareForAnyUploads() {
        if (this._targetCollection != null) {
            AdobeUploadSession<AdobePhotoCollection> uploadSessionOfEndPoint = AdobeUploadManager.getInstance(AdobePhotoCollection.class).getUploadSessionOfEndPoint(this._targetCollection);
            if (uploadSessionOfEndPoint != null) {
                setupUpload(uploadSessionOfEndPoint);
            } else if (uploadSessionOfEndPoint == null && this._isUploadInProgress) {
                cleanUpUpload();
            } else {
                setUploadInProgress(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupUpload(AdobeUploadSession<AdobePhotoCollection> adobeUploadSession) {
        setUploadInProgress(true);
        this._photoAssetsListViewController.setupUpload(adobeUploadSession);
        hideProgressView();
        hideEmptyStateView();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void showEmptyAssetsStateView() {
        if (!this._isUploadInProgress) {
            super.showEmptyAssetsStateView();
        }
    }

    protected void setUploadInProgress(boolean z) {
        this._isUploadInProgress = z;
        getActivity().invalidateOptionsMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanUpUpload() {
        if (this._isUploadInProgress) {
            this._photoAssetsListViewController.cleanUpUpload();
            setUploadInProgress(false);
            AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetsFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    PhotosAssetsFragment.this.reloadAssetItemsFromDataSourceDueToSwipeRefresh();
                }
            }, 400L);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOnStop() {
        super.handleOnStop();
        this._selectionTimeStampAtStop = AdobeStoragePhotoAssetSelectionState.getCurrentSelectionTimeStamp();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleAnyListCellViewsRefresh() {
        if (this._selectionTimeStampAtStop != -1 && this._currentAssetsViewController != null && this._selectionTimeStampAtStop != AdobeStoragePhotoAssetSelectionState.getCurrentSelectionTimeStamp()) {
            this._photoAssetsListViewController.refreshOnlyListView();
        }
        this._selectionTimeStampAtStop = -1;
    }

    class PhotoAssetsDataSourceDelegate implements IAdobePhotoAssetsDataSourceDelegate {
        private PhotoAssetsDataSourceDelegate() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoAssetsDataSourceDelegate
        public void willLoadFirstPage() {
            PhotosAssetsFragment.this.ds_willLoadDataFromScratch();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoAssetsDataSourceDelegate
        public void loadFirstPageSucceeded() {
            PhotosAssetsFragment.this.ds_didLoadMoreDataWithCount(PhotosAssetsFragment.this._photoAssetsDataSource.getCount(), null, null);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoAssetsDataSourceDelegate
        public void loadFirstPageFailed(AdobeCSDKException adobeCSDKException) {
            loadDataFailed(adobeCSDKException);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoAssetsDataSourceDelegate
        public void willLoadNextPage() {
            PhotosAssetsFragment.this.ds_willLoadNextPageForExistingCollection();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoAssetsDataSourceDelegate
        public void loadNextPageSucceeded() {
            loadFirstPageSucceeded();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobePhotoAssetsDataSourceDelegate
        public void loadNextPageFailed(AdobeCSDKException adobeCSDKException) {
            loadDataFailed(adobeCSDKException);
        }

        private void loadDataFailed(AdobeCSDKException adobeCSDKException) {
            PhotosAssetsFragment.this.ds_handleLoadDataErrorCommon();
            if ((adobeCSDKException instanceof AdobePhotoException) && ((AdobePhotoException) adobeCSDKException).getData().get("AdobeNetworkHTTPStatus").equals(600)) {
                PhotosAssetsFragment.this.markAsWentOffline();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AssetViewFragment.AssetsViewBaseActionBarController createActionBarController() {
        return ((getActivity() instanceof AdobeUxAssetBrowserV2Activity) || !AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getActivity())) ? new PhotoAssetsContainerCSDKActionBarController() : new PhotoAssetsContainerCCActionBarController();
    }

    public class PhotoAssetsContainerCSDKActionBarController extends AssetViewFragment.AssetsViewBaseActionBarController {
        protected PhotoAssetsContainerCSDKActionBarController() {
            super();
        }
    }

    public class PhotoAssetsContainerCCActionBarController extends AssetViewFragment.AssetsViewBaseActionBarController {
        private MenuItem _takePhotoButton;
        private MenuItem _uploadButton;

        protected PhotoAssetsContainerCCActionBarController() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            super.onCreateOptionsMenu(menu, menuInflater);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
            refreshOptionsInternal();
            super.refreshOptionItems();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            refreshOptionsInternal();
            super.onPrepareOptionsMenu(menu);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected boolean handleOptionItemSelect(int i) {
            return super.handleOptionItemSelect(i);
        }

        private void refreshOptionsInternal() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        checkAndPrepareForAnyUploads();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        this._isUploadInProgress = false;
        this._photoAssetsListViewController.cleanUpUpload();
        super.onDestroyView();
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.requestMade && i == 2) {
            this.requestMade = false;
            if (iArr.length == 1 && iArr[0] == 0) {
                postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_CANCEL_PHOTO_UPLOAD, this._targetCollection);
            } else {
                Toast.makeText(getActivity(), R.string.adobe_csdk_extract_permission_denied, 0).show();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleAppOrientationChange() {
        if (this._photoAssetsListViewController != null) {
            this._photoAssetsListViewController.refreshLayoutDueToOrientationChange();
        }
    }
}
