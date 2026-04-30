package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.ACEventBus;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.ACLibraryManagerAppBridge;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerAppBridgeDelegate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerSyncDelegate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerLibOpEvent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeInternal;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAssetBrowserViewEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEditOperationsEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationPublicLinkCallBack;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerControllerConfigurations;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerLibraryConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.actionbar.AdobeUxActionBarController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeAssetViewEditSelectedAssetsController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesRenameDialogDismissController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditOperation;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeLibraryDeleteAlert;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeLibraryElementWithParent;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeLibraryItemMoveExtraConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeEditLibraryCallback;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeLibraryExtraControlsHostActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeAssetType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.IAdobeLongClickHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.LibraryDesignItemsOneUpData;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.CreativeSDKTextView;
import com.adobe.creativesdk.foundation.internal.utils.NavBarUtil;
import com.adobe.creativesdk.foundation.internal.utils.UiUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.getbase.floatingactionbutton.FloatingActionButton;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.getbase.floatingactionbutton.h;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class DesignLibraryItemsFragment extends AssetViewFragment {
    public static final int EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE = 1;
    private AdobeCloud _cloud;
    private DesignLibraryItemsDataSourceDelegate _designLibraryCollectionsDataSourceDelegate;
    DesignLibraryItemsListView _designLibraryItemsListViewController;
    private DesignLibraryItemsDataSourceWrapper _designLibraryItemsWrapperDataSource;
    private ProgressDialog _editProgressDialogBar;
    private EditSummaryBanner _editSummaryBanner;
    private Observer _imagesUploadObserver;
    private ProgressBar _progressBar;
    ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    private boolean _searchBarOpened;
    private AdobeLibraryComposite _targetLibrary;
    private AdobeDCXManifest _targetManifest;
    private ProgressDialog fetchLinkDialog;
    protected LibraryItemEditCommandsHandler libraryItemEditCommandsHandler;
    View mAlphaPane;
    FloatingActionsMenu mFloatingActionsMenu;
    FloatingActionButton mPhotoButton;
    FloatingActionButton mUploadButton;
    private boolean requestMade;
    private boolean _isUploadInProgress = false;
    private boolean _isClipboardPresent = false;

    class EditSummaryBanner {
        public TextView bannerTitle;
        public View bannerView;

        EditSummaryBanner() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AdobeAssetsViewContainerConfiguration getAssetViewConfiguration(Bundle bundle) {
        AdobeDesignLibraryCollectionConfiguration adobeDesignLibraryCollectionConfiguration = new AdobeDesignLibraryCollectionConfiguration();
        adobeDesignLibraryCollectionConfiguration.createFromBundle(getArguments());
        this._cloud = adobeDesignLibraryCollectionConfiguration.getCloud();
        return adobeDesignLibraryCollectionConfiguration;
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

    public static AdobeLibraryComposite getLibraryCompositeFromID(String str) {
        return ACLibraryManagerAppBridge.getInstance().getLibraryManager().getLibraryWithId(str);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void initializeFromViewConfiguration(AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration) {
        this._targetLibrary = AdobeLibraryManager.getSharedInstance().getLibraryWithId(((AdobeDesignLibraryCollectionConfiguration) adobeAssetsViewContainerConfiguration).getTargetLibraryCompositeId());
        if (this._targetLibrary instanceof AdobeLibraryCompositeInternal) {
            this._targetManifest = ((AdobeLibraryCompositeInternal) this._targetLibrary).getDcxComposite().getManifest();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void reloadAssetItemsFromDataSourceDueToSwipeRefresh() {
        this._designLibraryItemsListViewController.stopRefreshAnimation();
        this._designLibraryCollectionsDataSourceDelegate.willLoadDataFromScratch();
        ACLibraryManagerAppBridge.getInstance().getLibraryController().forceSync(new IACLibraryManagerSyncDelegate() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.1
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerSyncDelegate
            public void handleSyncFinished() {
                if (DesignLibraryItemsFragment.this._designLibraryItemsListViewController != null) {
                    DesignLibraryItemsFragment.this.forceRefreshLibrary("");
                    DesignLibraryItemsFragment.this._designLibraryCollectionsDataSourceDelegate.didFinishLoading();
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerSyncDelegate
            public void handleSyncError(AdobeLibraryException adobeLibraryException) {
                if (DesignLibraryItemsFragment.this._designLibraryItemsListViewController != null) {
                    DesignLibraryItemsFragment.this._designLibraryCollectionsDataSourceDelegate.didFailToLoadMoreDataWithError(null);
                }
            }
        });
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean isContainerShowingRootCollection() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void setupAssetsDataSourceAndListViewControllers() {
        this._designLibraryItemsWrapperDataSource = new DesignLibraryItemsDataSourceWrapper();
        this._designLibraryCollectionsDataSourceDelegate = new DesignLibraryItemsDataSourceDelegate();
        this._designLibraryItemsWrapperDataSource.setDelegate(this._designLibraryCollectionsDataSourceDelegate);
        ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
        imageCacheParams.setMemCacheSizePercent(0.1f);
        this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(getActivity());
        this._reusableBitmapCacheWorker.addImageCache(getActivity().getSupportFragmentManager(), imageCacheParams);
        this._designLibraryItemsListViewController = new DesignLibraryItemsListView(getHostActivity());
        this._designLibraryItemsListViewController.setClientViewConfiguration((AdobeDesignLibraryCollectionConfiguration) this._assetViewConfiguration);
        this._designLibraryItemsListViewController.setContainerController(this);
        this._designLibraryItemsListViewController.setTargetLibraryComposite(this._targetLibrary);
        this._designLibraryItemsListViewController.setReusableImageWorker(this._reusableBitmapCacheWorker);
        this._designLibraryItemsListViewController.performInitialization(getHostActivity());
        this._designLibraryItemsWrapperDataSource.loadItemsFromScratch();
        new AdobeAnalyticsETSAssetBrowserViewEvent(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_GRID, AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT).endAndTrackEvent();
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView concreteRecyclerView = this._designLibraryItemsListViewController.getConcreteRecyclerView(getContext());
        concreteRecyclerView.setClipToPadding(false);
        concreteRecyclerView.setPadding(concreteRecyclerView.getPaddingLeft(), concreteRecyclerView.getPaddingTop(), concreteRecyclerView.getPaddingRight(), UiUtils.getNavBarHeightInternal(getActivity()));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getEmptyStateViewId() {
        return R.layout.adobe_library_items_emptycollectioncell;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected IAdobeAssetDataSource getDataSource() {
        return this._designLibraryItemsWrapperDataSource;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hookUpDataSourceDelegate(boolean z) {
        if (z) {
            this._designLibraryItemsWrapperDataSource.setDelegate(this._designLibraryCollectionsDataSourceDelegate);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleAppOrientationChange() {
        this._designLibraryItemsListViewController.refreshLayoutDueToOrientationChange();
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
        return this._targetLibrary.getName();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void resetAssetsListViewVisualLayout() {
        View mainView = this._designLibraryItemsListViewController.getMainView();
        if (getAssetsMainRootFrame().indexOfChild(mainView) == -1) {
            getAssetsMainRootFrame().addView(mainView);
        }
        this._currentAssetsViewController = this._designLibraryItemsListViewController;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOpenCurrentSelectedFilesUserAction() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleCancelSelectionUserAction() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean handleSearchFunctionality(String str) {
        if (this._designLibraryItemsListViewController == null) {
            return false;
        }
        this._designLibraryItemsListViewController.searchInLibrary(str);
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleAssetClickAction(Object obj) {
        int csdkConfigurationKey;
        LibraryDesignItemsOneUpData libraryDesignItemsOneUpData = (LibraryDesignItemsOneUpData) obj;
        if (!(getActivity() instanceof AdobeUxAssetBrowserV2Activity) && AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getActivity())) {
            csdkConfigurationKey = AdobeOneUpViewerControllerConfigurations.getLokiConfigurationKey();
        } else {
            csdkConfigurationKey = AdobeOneUpViewerControllerConfigurations.getCsdkConfigurationKey();
        }
        AdobeOneUpViewerLibraryConfiguration adobeOneUpViewerLibraryConfiguration = (AdobeOneUpViewerLibraryConfiguration) AdobeOneUpViewerConfigurationFactory.getOneUpViewerController(csdkConfigurationKey).getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_LIBRARY_CONFIGURATION_KEY);
        adobeOneUpViewerLibraryConfiguration.setItemsList(libraryDesignItemsOneUpData._itemsList);
        adobeOneUpViewerLibraryConfiguration.setLibrary(libraryDesignItemsOneUpData.library);
        adobeOneUpViewerLibraryConfiguration.setStartIndex(libraryDesignItemsOneUpData.startIndex);
        Intent intent = new Intent();
        intent.setClass(getActivity(), AdobeUXLibraryItemCollectionOneUpViewerActivity.class);
        intent.putExtra("one_up_controller_code", csdkConfigurationKey);
        getActivity().startActivityForResult(intent, AdobeAssetViewUtils.LIBRARY_ITEMS_ONE_UP_ACTIVITY_REQUEST);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleLongClickOnAsset(Object obj) {
        if (getActivity() instanceof IAdobeLongClickHandler) {
            ((IAdobeLongClickHandler) getActivity()).handleLongClick(new AdobeLibraryElementWithParent((AdobeLibraryElement) obj, this._targetLibrary), AdobeAssetType.ADOBE_ASSET_TYPE_LIBRARY_ITEMS, this._assetViewConfiguration);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
        if (getActivity() instanceof IAdobeLongClickHandler) {
            ((IAdobeLongClickHandler) getActivity()).handlePopupClick(new AdobeLibraryElementWithParent((AdobeLibraryElement) obj, this._targetLibrary), this._assetViewConfiguration, view, AdobeAssetType.ADOBE_ASSET_TYPE_LIBRARY_ITEMS);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void configureEmptyStateView(View view) {
        if (getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity) {
            ((TextView) view.findViewById(R.id.adobe_csdk_storage_asset_browser_empty_state_message)).setVisibility(8);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handlePostOnCreateView(Bundle bundle) {
        super.handlePostOnCreateView(bundle);
        if (getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity) {
            showEmptyAssetsStateView();
        } else if (!this._targetLibrary.isReadOnly() && !this._targetLibrary.isPublic() && !(getActivity() instanceof AdobeUxAssetBrowserV2Activity) && AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getActivity())) {
            RelativeLayout relativeLayout = (RelativeLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.design_library_item_upload_floating_menu, (ViewGroup) null);
            this.mFloatingActionsMenu = (FloatingActionsMenu) relativeLayout.findViewById(R.id.adobe_library_item_uploadFAB);
            this.mUploadButton = (FloatingActionButton) relativeLayout.findViewById(R.id.adobe_library_item_uploadAction);
            this.mPhotoButton = (FloatingActionButton) relativeLayout.findViewById(R.id.adobe_library_item_takePhoto);
            this.mAlphaPane = relativeLayout.findViewById(R.id.adobe_library_item_alpha_pane);
            attachFunctionalityWithFloatingButton();
            relativeLayout.removeView(this.mFloatingActionsMenu);
            relativeLayout.removeView(this.mAlphaPane);
            getMainRootView().addView(this.mAlphaPane);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            layoutParams.setMargins(0, 0, getFabPaddingWidth(), getNavBarHeight(getActivity()));
            getMainRootView().addView(this.mFloatingActionsMenu, layoutParams);
        }
        this._progressBar = new ProgressBar(getHostActivity(), null, android.R.attr.progressBarStyleHorizontal);
        this._progressBar.setProgressDrawable(getResources().getDrawable(R.drawable.asset_edit_progress_bar));
        this._progressBar.setVisibility(8);
        this._progressBar.setIndeterminateDrawable(getResources().getDrawable(R.drawable.asset_edit_progress_bar));
        this._progressBar.setIndeterminate(false);
        this._progressBar.setMax(100);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, getPixelsFromDP(getResources().getDimension(R.dimen.adobe_csdk_asset_edit_progress_bar_size)));
        this._progressBar.setProgress(0);
        layoutParams2.addRule(10);
        this._progressBar.setLayoutParams(layoutParams2);
        getMainRootView().addView(this._progressBar);
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Boolean.valueOf(NavBarUtil.getHasTranslucentNav(getHostActivity()));
        int fabPaddingWidth = getFabPaddingWidth();
        int navBarHeight = getNavBarHeight(getActivity());
        if (!this._targetLibrary.isReadOnly() && this.mFloatingActionsMenu != null) {
            setLayoutMargin(fabPaddingWidth, navBarHeight);
        }
        super.onConfigurationChanged(configuration);
    }

    private void setLayoutMargin(int i, int i2) {
        ((RelativeLayout.LayoutParams) this.mFloatingActionsMenu.getLayoutParams()).setMargins(0, 0, i, i2);
    }

    private void attachFunctionalityWithFloatingButton() {
        this.mFloatingActionsMenu.setOnFloatingActionsMenuUpdateListener(new h() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.2
            @Override // com.getbase.floatingactionbutton.h
            public void onMenuExpanded() {
                DesignLibraryItemsFragment.this.mAlphaPane.setVisibility(0);
                if (DesignLibraryItemsFragment.this._isUploadInProgress) {
                    DesignLibraryItemsFragment.this.mPhotoButton.setVisibility(4);
                    DesignLibraryItemsFragment.this.mUploadButton.setVisibility(4);
                } else {
                    DesignLibraryItemsFragment.this.mPhotoButton.setVisibility(0);
                    DesignLibraryItemsFragment.this.mUploadButton.setTitle(DesignLibraryItemsFragment.this.getResources().getString(R.string.adobe_csdk_UPLOAD_IMAGE_TO_LIBRARY_MENU_TITLE));
                }
            }

            @Override // com.getbase.floatingactionbutton.h
            public void onMenuCollapsed() {
                DesignLibraryItemsFragment.this.mAlphaPane.setVisibility(4);
            }
        });
        this.mAlphaPane.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DesignLibraryItemsFragment.this.mAlphaPane.setVisibility(4);
                DesignLibraryItemsFragment.this.mFloatingActionsMenu.a();
            }
        });
        this.mUploadButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DesignLibraryItemsFragment.this._targetLibrary != null && DesignLibraryItemsFragment.this._targetManifest != null) {
                    if (DesignLibraryItemsFragment.this._isUploadInProgress) {
                        DesignLibraryItemsFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_CANCEL_LIBRARY_UPLOAD, DesignLibraryItemsFragment.this._targetManifest);
                    } else if (ContextCompat.checkSelfPermission(DesignLibraryItemsFragment.this.getActivity(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                        DesignLibraryItemsFragment.this.requestMade = true;
                        DesignLibraryItemsFragment.this.getParentFragment().requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 1);
                    } else {
                        DesignLibraryItemsFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_UPLOAD_FILES, DesignLibraryItemsFragment.this._targetManifest);
                    }
                }
                DesignLibraryItemsFragment.this.mAlphaPane.setVisibility(4);
                DesignLibraryItemsFragment.this.mFloatingActionsMenu.a();
            }
        });
        this.mPhotoButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DesignLibraryItemsFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_UPLOAD_FILES_FROM_CAMERA, DesignLibraryItemsFragment.this._targetManifest);
                DesignLibraryItemsFragment.this.mAlphaPane.setVisibility(4);
                DesignLibraryItemsFragment.this.mFloatingActionsMenu.a();
            }
        });
    }

    protected void handleExtraConfigurations(AdobeLibraryItemMoveExtraConfiguration adobeLibraryItemMoveExtraConfiguration) {
        if (adobeLibraryItemMoveExtraConfiguration.getMoveButton()) {
            this._actionBarController = new LibraryItemContainerMoveActionBarController();
            AdobeCSDKActionBarController.setTitle(getActivity().findViewById(android.R.id.content), this._targetLibrary.getName());
        }
    }

    class DesignLibraryItemsDataSourceWrapper implements IAdobeAssetDataSource {
        DesignLibraryItemsDataSourceDelegate _delegate;

        private DesignLibraryItemsDataSourceWrapper() {
        }

        public void setDelegate(DesignLibraryItemsDataSourceDelegate designLibraryItemsDataSourceDelegate) {
            this._delegate = designLibraryItemsDataSourceDelegate;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
        public int getCount() {
            return DesignLibraryItemsFragment.this._targetLibrary.getCountOfAllElements();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource
        public boolean loadItemsFromScratch() {
            if (ACLibraryManagerAppBridge.hasValidInstance()) {
                ACLibraryManagerAppBridge.getInstance().start(new IACLibraryManagerAppBridgeDelegate() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.DesignLibraryItemsDataSourceWrapper.1
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerAppBridgeDelegate
                    public void handleFirstSyncWithServerInitiated() {
                        if (DesignLibraryItemsDataSourceWrapper.this._delegate != null) {
                            DesignLibraryItemsDataSourceWrapper.this._delegate.willLoadDataFromScratch();
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerAppBridgeDelegate
                    public void handleResumeAppWorkflow() {
                        DesignLibraryItemsFragment.this.setContainerFragmentTitle(DesignLibraryItemsFragment.this._targetLibrary.getName());
                        DesignLibraryItemsDataSourceWrapper.this._delegate.didLoadMoreDataWithCount(DesignLibraryItemsFragment.this._targetLibrary.getCountOfAllElements());
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerAppBridgeDelegate
                    public void handleLibraryEvent(ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent) {
                    }
                });
            }
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

    class DesignLibraryItemsDataSourceDelegate implements IAdobeAssetDataSourceDelegate {
        private DesignLibraryItemsDataSourceDelegate() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void willLoadDataFromScratch() {
            DesignLibraryItemsFragment.this.ds_willLoadDataFromScratch();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void willLoadNextPageForExistingPackage() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didLoadMoreDataWithCount(int i) {
            DesignLibraryItemsFragment.this.ds_didLoadMoreDataWithCount(i, null, null);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException) {
            DesignLibraryItemsFragment.this.ds_didFailToLoadMoreDataWithError(adobeAssetException);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didFinishLoading() {
            DesignLibraryItemsFragment.this.ds_didFinishLoading(DesignLibraryItemsFragment.this._designLibraryItemsWrapperDataSource.getCount());
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AssetViewFragment.AssetsViewBaseActionBarController createActionBarController() {
        return ((getActivity() instanceof AdobeUxAssetBrowserV2Activity) || !AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getActivity())) ? new LibraryItemContainerCSDKActionBarController() : new LibraryItemsContainerCCActionBarController();
    }

    private void checkAndPrepareForAnyUploads() {
        if (this._targetManifest != null) {
            AdobeUploadSession<AdobeDCXManifest> uploadSessionOfEndPoint = AdobeUploadManager.getInstance(AdobeDCXManifest.class).getUploadSessionOfEndPoint(this._targetManifest);
            if (uploadSessionOfEndPoint != null) {
                setupUpload(uploadSessionOfEndPoint);
            } else {
                cleanUpUpload();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupUpload(AdobeUploadSession<AdobeDCXManifest> adobeUploadSession) {
        if (!this._isUploadInProgress) {
            setUploadInProgress(true);
            this._designLibraryItemsListViewController.setupUpload(adobeUploadSession);
            hideProgressView();
            hideEmptyStateView();
        }
    }

    protected void setUploadInProgress(boolean z) {
        this._isUploadInProgress = z;
        getActivity().invalidateOptionsMenu();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void registerLocalNofications() {
        super.registerLocalNofications();
        if (this._imagesUploadObserver == null) {
            this._imagesUploadObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.6
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AdobeNotification adobeNotification = (AdobeNotification) obj;
                    AdobeUploadSession adobeUploadSession = (AdobeUploadSession) adobeNotification.getInfo().get(AdobeUploadManager.UPLOAD_SESSION_KEY);
                    if ((adobeUploadSession.getDestinationFolder() instanceof AdobeDCXManifest) && DesignLibraryItemsFragment.this._targetManifest.isSameLocation((AdobeDCXManifest) adobeUploadSession.getDestinationFolder())) {
                        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted) {
                            DesignLibraryItemsFragment.this.setupUpload(adobeUploadSession);
                            return;
                        }
                        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete) {
                            DesignLibraryItemsFragment.this.forceRefreshLibrary(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType);
                            DesignLibraryItemsFragment.this.cleanUpUpload();
                            DesignLibraryItemsFragment.this.showUploadSummaryBar(adobeUploadSession);
                            AdobeDesignLibraryEditManager.setUpdateCollectionDueToItemEdit(true);
                            DesignLibraryItemsFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_ITEM_EDIT, null);
                            return;
                        }
                        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled) {
                            DesignLibraryItemsFragment.this.cleanUpUpload();
                        }
                    }
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted, this._imagesUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, this._imagesUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled, this._imagesUploadObserver);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void unRegisterLocalNotifications() {
        super.unRegisterLocalNotifications();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted, this._imagesUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, this._imagesUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled, this._imagesUploadObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanUpUpload() {
        if (this._isUploadInProgress) {
            this._designLibraryItemsListViewController.cleanUpUpload();
            setUploadInProgress(false);
            forceRefreshLibrary(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType);
        }
    }

    class LibraryItemContainerMoveActionBarController extends AssetViewFragment.AssetsViewBaseActionBarController {
        protected MenuItem _moveMenuItem;

        private LibraryItemContainerMoveActionBarController() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            menuInflater.inflate(R.menu.adobe_asset_edit_move_menu, menu);
            this._moveMenuItem = menu.findItem(R.id.adobe_csdk_uxassetbrowser_loki_assets_view_move_asset);
            this._moveMenuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.LibraryItemContainerMoveActionBarController.1
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem menuItem) {
                    DesignLibraryItemsFragment.this.handleMoveButtonClick();
                    return true;
                }
            });
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            this._moveMenuItem.setVisible(true);
            refreshOptionItems();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected boolean handleOptionItemSelect(int i) {
            if (i != R.id.adobe_csdk_uxassetbrowser_loki_assets_view_move_asset) {
                return false;
            }
            DesignLibraryItemsFragment.this.handleMoveButtonClick();
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
            super.refreshOptionItems();
            if (!DesignLibraryItemsFragment.this.isNetworkOnline()) {
                this._moveMenuItem.setVisible(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMoveButtonClick() {
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ELEMENT_EDIT_MOVE_OPERATION, this._targetLibrary.getLibraryId());
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hideFab() {
        if (this.mFloatingActionsMenu != null) {
            this.mFloatingActionsMenu.setVisibility(4);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void showFab() {
        if (this.mFloatingActionsMenu != null) {
            this.mFloatingActionsMenu.setVisibility(0);
        }
    }

    public class LibraryItemContainerCSDKActionBarController extends AssetViewFragment.AssetsViewBaseActionBarController {
        protected LibraryItemContainerCSDKActionBarController() {
            super();
        }
    }

    public class LibraryItemsContainerCCActionBarController extends AssetViewFragment.AdobeCCActionBarController {
        private MenuItem _collaboratorMenuItem;
        private MenuItem _deleteItem;
        private MenuItem _renameItem;
        private MenuItem _shareItem;
        private MenuItem _unsuscribeItem;

        protected LibraryItemsContainerCCActionBarController() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AdobeCCActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            super.onCreateOptionsMenu(menu, menuInflater);
            menuInflater.inflate(R.menu.adobe_assetview_library_items_container_menu, menu);
            this._unsuscribeItem = menu.findItem(R.id.adobe_library_collection_unsuscribe);
            this._collaboratorMenuItem = menu.findItem(R.id.adobe_csdk_asset_browser_collaborator_menu);
            this._renameItem = menu.findItem(R.id.adobe_library_collection_rename);
            this._shareItem = menu.findItem(R.id.adobe_library_collection_share);
            this._deleteItem = menu.findItem(R.id.adobe_library_collection_delete);
            if (DesignLibraryItemsFragment.this._cloud != null && DesignLibraryItemsFragment.this._cloud.isPrivateCloud()) {
                this._collaboratorMenuItem.setVisible(false);
                this._shareItem.setVisible(false);
            }
            AdobeCollaborationType collaboration = DesignLibraryItemsFragment.this._targetLibrary.getCollaboration();
            if (DesignLibraryItemsFragment.this._targetLibrary.isPublic()) {
                this._renameItem.setVisible(false);
                this._shareItem.setVisible(false);
                this._collaboratorMenuItem.setVisible(false);
                this._deleteItem.setVisible(false);
                this._unsuscribeItem.setVisible(true);
            }
            this._unsuscribeItem.setVisible(false);
            switch (collaboration) {
                case ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:
                    if (DesignLibraryItemsFragment.this._targetLibrary.isReadOnly()) {
                        this._renameItem.setVisible(false);
                        this._shareItem.setVisible(false);
                        this._deleteItem.setTitle(DesignLibraryItemsFragment.this.getResources().getString(R.string.adobe_csdk_library_remove_myself));
                    } else {
                        this._deleteItem.setTitle(DesignLibraryItemsFragment.this.getResources().getString(R.string.adobe_csdk_leave_library));
                    }
                    break;
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handlePostOnCreate(Bundle bundle) {
            super.handlePostOnCreate(bundle);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AdobeCCActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected boolean handleOptionItemSelect(int i) {
            if (i == R.id.adobe_csdk_asset_browser_collaborator_menu) {
                if (DesignLibraryItemsFragment.this._targetManifest.getCompositeHref() != null) {
                    String string = DesignLibraryItemsFragment.this._targetManifest.getCompositeHref().toString();
                    if (!string.startsWith(URIUtil.SLASH)) {
                        string = URIUtil.SLASH + string;
                    }
                    DesignLibraryItemsFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_COLLABORATION, string);
                    return true;
                }
                Toast.makeText(DesignLibraryItemsFragment.this.getActivity(), R.string.adobe_csdk_library_not_synced_yet, 0).show();
                return true;
            }
            if (i == R.id.adobe_library_collection_rename) {
                AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticLibraryRename, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.LibraryItemsContainerCCActionBarController.1
                    {
                        put(AdobeAnalyticsSDKReporter.AnalyticArea, AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_OPERATIONS);
                        put("type", "library");
                        put(AdobeAnalyticsSDKReporter.AnalyticAction, "rename");
                    }
                }, null);
                AdobeDesignLibraryEditManager.createSession(DesignLibraryItemsFragment.this._targetLibrary.getLibraryId(), DesignLibraryItemsFragment.this.getFragmentManager(), AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_RENAME, new IAdobeEditLibraryCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.LibraryItemsContainerCCActionBarController.2
                    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeEditLibraryCallback
                    public void onComplete() {
                        Bundle bundle = new Bundle();
                        bundle.putString("LIBRARY_COMP_ID", DesignLibraryItemsFragment.this._targetLibrary.getLibraryId());
                        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_COMPLTED, bundle);
                    }
                }).startEditSession(new IAdobeCCFilesRenameDialogDismissController() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.LibraryItemsContainerCCActionBarController.3
                    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesRenameDialogDismissController
                    public void dialogClosed() {
                        if (DesignLibraryItemsFragment.this._editProgressDialogBar != null) {
                            DesignLibraryItemsFragment.this._editProgressDialogBar.dismiss();
                        }
                    }
                });
                return true;
            }
            if (i == R.id.adobe_library_collection_share) {
                DesignLibraryItemsFragment.this.handlePublicLinkEvent();
                return true;
            }
            if (i == R.id.adobe_library_collection_delete) {
                AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticLibraryDelete, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.LibraryItemsContainerCCActionBarController.4
                    {
                        put(AdobeAnalyticsSDKReporter.AnalyticArea, AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_OPERATIONS);
                        put("type", "library");
                        put(AdobeAnalyticsSDKReporter.AnalyticAction, "delete");
                    }
                }, null);
                FragmentManager fragmentManager = DesignLibraryItemsFragment.this.getFragmentManager();
                AdobeLibraryDeleteAlert adobeLibraryDeleteAlert = new AdobeLibraryDeleteAlert();
                adobeLibraryDeleteAlert.setLibraryComposite(DesignLibraryItemsFragment.this._targetLibrary);
                adobeLibraryDeleteAlert.show(fragmentManager, "Delete Library");
                return true;
            }
            if (i == R.id.adobe_library_collection_unsuscribe) {
                FragmentManager fragmentManager2 = DesignLibraryItemsFragment.this.getFragmentManager();
                AdobeLibraryDeleteAlert adobeLibraryDeleteAlert2 = new AdobeLibraryDeleteAlert();
                adobeLibraryDeleteAlert2.setLibraryComposite(DesignLibraryItemsFragment.this._targetLibrary);
                adobeLibraryDeleteAlert2.show(fragmentManager2, "Unsuscribe Library");
                return true;
            }
            return super.handleOptionItemSelect(i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AdobeCCActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
            super.refreshOptionItems();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AdobeCCActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            super.onPrepareOptionsMenu(menu);
            if (DesignLibraryItemsFragment.this._targetLibrary != null) {
                AdobeCloud adobeCloud = null;
                if (0 != 0 && adobeCloud.isPrivateCloud()) {
                    menu.findItem(R.id.adobe_csdk_asset_browser_collaborator_menu).setVisible(false);
                }
            }
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
        this._designLibraryItemsListViewController.cleanUpUpload();
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
        }
        this._reusableBitmapCacheWorker = null;
        getMainRootView().removeView(this.mAlphaPane);
        getMainRootView().removeView(this.mFloatingActionsMenu);
        this._designLibraryItemsListViewController = null;
        super.onDestroyView();
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.requestMade && i == 1) {
            this.requestMade = false;
            if (iArr.length == 1 && iArr[0] == 0) {
                postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_UPLOAD_FILES, this._targetManifest);
            } else {
                Toast.makeText(getActivity(), R.string.adobe_csdk_extract_permission_denied, 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePublicLinkEvent() {
        this.fetchLinkDialog = ProgressDialog.show(getActivity(), null, getString(R.string.adobe_csdk_asset_view_dialog_fetch_link));
        final String libraryId = this._targetLibrary.getLibraryId();
        final AdobeCollaborationSession sharedSession = AdobeCollaborationSession.getSharedSession();
        sharedSession.retrieveLink(libraryId, "application/vnd.adobe.library+dcx", new IAdobeCollaborationPublicLinkCallBack() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.7
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationPublicLinkCallBack
            public void onError(int i) {
                if (i == 404) {
                    if (DesignLibraryItemsFragment.this._targetLibrary.isReadOnly()) {
                        DesignLibraryItemsFragment.this.errorFetchLinkReadOnly();
                        return;
                    } else {
                        sharedSession.createNewLink(libraryId, "application/vnd.adobe.library+dcx", DesignLibraryItemsFragment.this._targetLibrary.getName(), true, true, new IAdobeCollaborationPublicLinkCallBack() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.7.1
                            @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationPublicLinkCallBack
                            public void onError(int i2) {
                                if (i2 == 403) {
                                    DesignLibraryItemsFragment.this.errorFetchLinkSharingRestriction();
                                } else {
                                    DesignLibraryItemsFragment.this.errorFetchLink();
                                }
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationPublicLinkCallBack
                            public void onComplete(String str) {
                                DesignLibraryItemsFragment.this.openShareChooser(str);
                            }
                        });
                        return;
                    }
                }
                DesignLibraryItemsFragment.this.errorFetchLink();
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationPublicLinkCallBack
            public void onComplete(String str) {
                DesignLibraryItemsFragment.this.openShareChooser(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openShareChooser(String str) {
        if (this.fetchLinkDialog != null) {
            this.fetchLinkDialog.dismiss();
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(MimeTypes.TEXT_PLAIN);
        if (getActivity() instanceof IAdobeAppRater) {
            ((IAdobeAppRater) getActivity()).setAppRater();
        }
        List<ResolveInfo> listQueryIntentActivities = getActivity().getPackageManager().queryIntentActivities(intent, 0);
        Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().activityInfo.packageName.equals("com.google.android.apps.docs")) {
                    this._isClipboardPresent = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (this._isClipboardPresent) {
            ArrayList arrayList = new ArrayList();
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                String str2 = resolveInfo.activityInfo.packageName;
                String str3 = resolveInfo.activityInfo.name;
                if (!str3.equals("com.adobe.cc.share.CopyToClipboardActivity")) {
                    Intent intent2 = new Intent("android.intent.action.SEND");
                    intent2.setType(MimeTypes.TEXT_PLAIN);
                    intent2.putExtra("android.intent.extra.TEXT", str);
                    intent2.setPackage(str2);
                    intent2.setClassName(str2, str3);
                    arrayList.add(intent2);
                }
            }
            Intent intentCreateChooser = Intent.createChooser((Intent) arrayList.remove(0), null);
            intentCreateChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
            startActivity(intentCreateChooser);
            return;
        }
        intent.putExtra("android.intent.extra.TEXT", str);
        startActivity(Intent.createChooser(intent, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void errorFetchLink() {
        if (this.fetchLinkDialog != null) {
            this.fetchLinkDialog.dismiss();
        }
        Toast.makeText(getActivity(), getResources().getString(R.string.adobe_csdk_asset_view_error_fetch_link), 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void errorFetchLinkReadOnly() {
        if (this.fetchLinkDialog != null) {
            this.fetchLinkDialog.dismiss();
        }
        Toast.makeText(getActivity(), getResources().getString(R.string.adobe_read_only_library_error_fetch_link), 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void errorFetchLinkSharingRestriction() {
        if (this.fetchLinkDialog != null) {
            this.fetchLinkDialog.dismiss();
        }
        Toast.makeText(getActivity(), getResources().getString(R.string.IDS_COLLABORATION_SHARING_RESTRICTED_ERROR), 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forceRefreshLibrary(String str) {
        this._designLibraryItemsListViewController.generateLibraryItemListofType(str);
        this._designLibraryItemsListViewController.refreshDueToDataChange();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.libraryItemEditCommandsHandler = new LibraryItemEditCommandsHandler();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (!(getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity)) {
            this.libraryItemEditCommandsHandler.onStart();
            if (AdobeDesignLibraryEditManager.hasEditStarted()) {
                action_editStarted();
            }
            if (!AdobeDesignLibraryEditManager.hasEditCompletionHandled()) {
                action_editCompleted(null);
            }
        }
        if (AdobeDesignLibraryEditManager.isEditInProgress() && this._progressBar != null) {
            setEditProgress(AdobeDesignLibraryEditManager.getProgressValue());
        }
        if (getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity) {
            handleExtraConfigurations(((IAdobeLibraryExtraControlsHostActivity) getHostActivity()).getExtraConfiguration());
        }
        ACEventBus.getDefault().register(this);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (!(getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity)) {
            this.libraryItemEditCommandsHandler.onStop();
        }
        ACEventBus.getDefault().unregister(this);
    }

    public void onEvent(ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent) {
        ACLibraryManagerLibOpEvent.Type eventType = aCLibraryManagerLibOpEvent.getEventType();
        String str = aCLibraryManagerLibOpEvent.libraryId;
        if (eventType == ACLibraryManagerLibOpEvent.Type.kLibraryUpdated) {
            if (str.equals(this._targetLibrary.getLibraryId())) {
                this._designLibraryItemsListViewController.refreshDueToDataChange();
            }
        } else if ((eventType == ACLibraryManagerLibOpEvent.Type.kLibraryUnShared || eventType == ACLibraryManagerLibOpEvent.Type.kLibraryDeleted) && str.equals(this._targetLibrary.getLibraryId())) {
            FragmentManager fragmentManager = getFragmentManager();
            DesignLibraryCollectionListView.setShouldInvalidateCollection(true);
            fragmentManager.popBackStackImmediate();
        }
    }

    private int getPixelsFromDP(float f2) {
        return Math.round(getHostActivity().getApplicationContext().getResources().getDisplayMetrics().density * f2);
    }

    private void setEditProgress(double d2) {
        this._progressBar.setVisibility(0);
        this._progressBar.setProgress((int) (100.0d * d2));
    }

    class LibraryItemEditCommandsHandler extends AdobeAssetViewCommandsHandler {
        private LibraryItemEditCommandsHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ITEM_EDIT_COMPLETED, AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ITEM_EDIT_STARTED, AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_STARTED, AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_COMPLTED);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            Bundle bundle;
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ITEM_EDIT_STARTED || adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_STARTED) {
                DesignLibraryItemsFragment.this.action_editStarted();
                return;
            }
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ITEM_EDIT_COMPLETED) {
                Bundle bundle2 = (Bundle) obj;
                String string = null;
                if (bundle2 != null) {
                    string = bundle2.getString("LIBRARY_ELEMENT_TYPE");
                }
                DesignLibraryItemsFragment.this.action_editCompleted(string);
                return;
            }
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_COMPLTED && (bundle = (Bundle) obj) != null) {
                DesignLibraryItemsFragment.this.action_compEditCompleted(AdobeLibraryManager.getSharedInstance().getLibraryWithId(bundle.getString("LIBRARY_COMP_ID")));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void action_editStarted() {
        if (AdobeDesignLibraryEditManager.hasEditStarted()) {
            AdobeDesignLibraryEditManager.setEditStarted(false);
            showProgressDialogBar();
        }
    }

    private void showProgressDialogBar() {
        this._editProgressDialogBar = createEditProgressDialogBar();
        this._editProgressDialogBar.show();
    }

    private ProgressDialog createEditProgressDialogBar() {
        this._editProgressDialogBar = new ProgressDialog(getHostActivity());
        this._editProgressDialogBar.setMessage(getResources().getString(R.string.adobe_csdk_asset_edit_in_progress));
        this._editProgressDialogBar.setIndeterminate(true);
        this._editProgressDialogBar.setCancelable(false);
        return this._editProgressDialogBar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void action_editCompleted(String str) {
        if (!AdobeDesignLibraryEditManager.hasEditCompletionHandled()) {
            AdobeDesignLibraryEditManager.setEditCompletionHandled(true);
            AdobeDesignLibraryEditManager.setEditStarted(false);
            AdobeDesignLibraryEditManager.setEditInProgress(false);
            AdobeAssetViewEditSelectedAssetsController.clearSelection();
            forceRefreshLibrary(str);
            showEditSummaryBar(AdobeDesignLibraryEditManager.getLastSession());
            AdobeDesignLibraryEditManager.setUpdateCollectionDueToItemEdit(true);
            postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_ITEM_EDIT, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void action_compEditCompleted(AdobeLibraryComposite adobeLibraryComposite) {
        boolean z = false;
        if (!AdobeDesignLibraryEditManager.hasEditCompletionHandled()) {
            AdobeDesignLibraryEditManager.setEditCompletionHandled(true);
            AdobeDesignLibraryEditManager.setEditStarted(false);
            AdobeDesignLibraryEditManager.setEditInProgress(false);
            AdobeAssetViewEditSelectedAssetsController.clearSelection();
            if (this._editProgressDialogBar != null) {
                this._editProgressDialogBar.dismiss();
            }
            if (adobeLibraryComposite == null) {
                z = true;
            } else {
                AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
                if (adobeLibraryCompositeInternal.getDcxComposite() == null || adobeLibraryCompositeInternal.isSelfUnshared() || adobeLibraryCompositeInternal.getDcxComposite().getCurrent().getCompositeState() == AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete || adobeLibraryCompositeInternal.getDcxComposite().getCurrent().getCompositeState() == AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) {
                    z = true;
                }
            }
            AdobeDesignLibraryEditManager.setUpdateCollectionDueToItemEdit(true);
            if (z) {
                FragmentManager fragmentManager = getFragmentManager();
                DesignLibraryCollectionListView.setShouldInvalidateCollection(true);
                fragmentManager.popBackStackImmediate();
                return;
            }
            AdobeUxActionBarController.setTitle(this._targetLibrary.getName());
        }
    }

    private void createEditSummaryView() {
        if (this._editSummaryBanner == null) {
            RelativeLayout relativeLayout = new RelativeLayout(getHostActivity());
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.adobe_csdk_theme_actionbar_size)));
            relativeLayout.setGravity(17);
            CreativeSDKTextView creativeSDKTextView = new CreativeSDKTextView(getHostActivity());
            ViewGroup.LayoutParams layoutParams = creativeSDKTextView.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            } else {
                layoutParams.height = -2;
                layoutParams.width = -2;
            }
            creativeSDKTextView.setLayoutParams(layoutParams);
            creativeSDKTextView.setTextColor(-1);
            creativeSDKTextView.setTextSize(0, getResources().getDimension(R.dimen.adobe_csdk_assetbrowser_grid_text_size));
            relativeLayout.addView(creativeSDKTextView);
            this._editSummaryBanner = new EditSummaryBanner();
            this._editSummaryBanner.bannerTitle = creativeSDKTextView;
            this._editSummaryBanner.bannerView = relativeLayout;
            this._editSummaryBanner.bannerView.setVisibility(8);
            getMainRootView().addView(this._editSummaryBanner.bannerView);
        }
    }

    private void showEditSummaryBar(AdobeDesignLibraryEditSession adobeDesignLibraryEditSession) {
        String str;
        String string;
        AdobeDesignLibraryEditSession.EditSummary editSummary = adobeDesignLibraryEditSession.getEditSummary();
        if (editSummary.hasMoveOperationInSameLocation()) {
            if (this._editProgressDialogBar != null) {
                this._editProgressDialogBar.dismiss();
            }
            if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_MOVE) {
                Toast.makeText(getHostActivity(), R.string.adobe_csdk_asset_move_error_same_location, 1).show();
                return;
            } else {
                if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_COPY) {
                    Toast.makeText(getHostActivity(), R.string.adobe_csdk_asset_copy_error_same_location, 1).show();
                    return;
                }
                return;
            }
        }
        createEditSummaryView();
        String string2 = "";
        if (!editSummary.isEditSucceeded()) {
            this._editSummaryBanner.bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_error_banner_background);
            if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_RENAME) {
                string = getResources().getString(R.string.adobe_csdk_IDS_EDIT_SINGLE_ERROR_MSG);
            } else if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_ERASE) {
                string = getResources().getString(R.string.adobe_csdk_IDS_ARCHIVE_SINGLE_ERROR_MSG);
            } else if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_MOVE) {
                string = getResources().getString(R.string.adobe_csdk_IDS_MOVE_SINGLE_ERROR_MSG);
            } else if (editSummary.operation != AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_COPY) {
                string = "";
            } else {
                string = getResources().getString(R.string.adobe_csdk_IDS_COPY_SINGLE_ERROR_MSG);
            }
            str = String.format(string, Integer.toString(1));
        } else {
            if (this._progressBar != null) {
                this._progressBar.setVisibility(0);
                this._progressBar.setProgress(100);
            }
            this._editSummaryBanner.bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_success_banner_background);
            if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_RENAME) {
                string2 = getResources().getString(R.string.adobe_csdk_IDS_EDIT_SINGLE_SUCCESS_MSG);
            } else if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_ERASE) {
                string2 = getResources().getString(R.string.adobe_csdk_IDS_ARCHIVE_SINGLE_SUCCESS_MSG);
            } else if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_MOVE) {
                string2 = getResources().getString(R.string.adobe_csdk_IDS_MOVE_SINGLE_SUCCESS_MSG);
            } else if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_COPY) {
                string2 = getResources().getString(R.string.adobe_csdk_IDS_COPY_SINGLE_SUCCESS_MSG);
            }
            str = String.format(string2, Integer.toString(1));
        }
        reloadDataFromDataSource();
        if (this._editProgressDialogBar != null) {
            this._editProgressDialogBar.dismiss();
        }
        if (this._progressBar != null) {
            this._progressBar.setVisibility(8);
        }
        this._editSummaryBanner.bannerTitle.setText(str);
        this._editSummaryBanner.bannerView.setVisibility(0);
        AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment.8
            @Override // java.lang.Runnable
            public void run() {
                if (DesignLibraryItemsFragment.this._editSummaryBanner != null && DesignLibraryItemsFragment.this._editSummaryBanner.bannerView != null) {
                    DesignLibraryItemsFragment.this._editSummaryBanner.bannerView.setVisibility(8);
                }
            }
        }, 5000L);
    }
}
