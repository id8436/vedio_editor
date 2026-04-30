package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.ProgressDialog;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.ACEventBus;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.ACLibraryManagerAppBridge;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerSyncDelegate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerLibOpEvent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeInternal;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAssetBrowserViewEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEditOperationsEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetLibraryDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateToDesignLibraryCollectionCommand;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeAssetViewEditSelectedAssetsController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditOperation;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeLibraryExtraControlsHostActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeAssetType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.IAdobeLongClickHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.CreativeSDKTextView;
import com.adobe.creativesdk.foundation.internal.utils.NavBarUtil;
import com.adobe.creativesdk.foundation.internal.utils.UiUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.getbase.floatingactionbutton.h;
import java.util.EnumSet;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class DesignLibraryCollectionFragment extends AssetViewFragment {
    private View _alphaPane;
    private AdobeCloud _cloud;
    private AdobeAssetLibraryDataSource _designDataSource;
    private DesignLibraryCollectionListView _designLibraryCollectionListViewController;
    private DesignLibraryCollectionsDataSourceDelegate _designLibraryCollectionsDataSourceDelegate;
    private ProgressDialog _editProgressDialogBar;
    private EditSummaryBanner _editSummaryBanner;
    private FloatingActionsMenu _fabLayout;
    private ProgressBar _progressBar;
    ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    protected LibraryCollectionForItemEditCommandsHandler libraryCollectionForItemEditCommandsHandler;
    protected LibraryCompEditCommandsHandler libraryCompEditCommandsHandler;

    class EditSummaryBanner {
        public TextView bannerTitle;
        public View bannerView;

        EditSummaryBanner() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AdobeAssetsViewContainerConfiguration getAssetViewConfiguration(Bundle bundle) {
        AdobePhotosViewContainerConfiguration adobePhotosViewContainerConfiguration = new AdobePhotosViewContainerConfiguration();
        adobePhotosViewContainerConfiguration.createFromBundle(getArguments());
        this._cloud = adobePhotosViewContainerConfiguration.getCloud();
        return adobePhotosViewContainerConfiguration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleLongClickOnAsset(Object obj) {
        if (getActivity() instanceof IAdobeLongClickHandler) {
            ((IAdobeLongClickHandler) getActivity()).handleLongClick(obj, AdobeAssetType.ADOBE_ASSET_TYPE_LIBRARIES, this._assetViewConfiguration);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
        if (getActivity() instanceof IAdobeLongClickHandler) {
            ((IAdobeLongClickHandler) getActivity()).handlePopupClick(obj, this._assetViewConfiguration, view, AdobeAssetType.ADOBE_ASSET_TYPE_LIBRARIES);
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
    public boolean isContainerShowingRootCollection() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleAppOrientationChange() {
        this._designLibraryCollectionListViewController.refreshLayoutDueToOrientationChange();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
            this._reusableBitmapCacheWorker = null;
        }
        super.onDestroyView();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this._designLibraryCollectionsDataSourceDelegate = null;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void setupAssetsDataSourceAndListViewControllers() {
        if (this._designLibraryCollectionListViewController != null) {
            DesignLibraryCollectionListView designLibraryCollectionListView = this._designLibraryCollectionListViewController;
            if (DesignLibraryCollectionListView.souldInvalidateCollection()) {
                this._designLibraryCollectionListViewController.invalidateCollectionList();
                DesignLibraryCollectionListView designLibraryCollectionListView2 = this._designLibraryCollectionListViewController;
                DesignLibraryCollectionListView.setShouldInvalidateCollection(false);
                return;
            }
            return;
        }
        this._designLibraryCollectionListViewController = new DesignLibraryCollectionListView(getActivity());
        this._designLibraryCollectionListViewController.setContainerController(this);
        ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
        imageCacheParams.setMemCacheSizePercent(0.1f);
        this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(getActivity());
        this._reusableBitmapCacheWorker.addImageCache(getActivity().getSupportFragmentManager(), imageCacheParams);
        this._designLibraryCollectionsDataSourceDelegate = new DesignLibraryCollectionsDataSourceDelegate();
        this._designDataSource = new AdobeAssetLibraryDataSource(this._assetViewConfiguration.getCloud());
        this._designDataSource.setDelegate(this._designLibraryCollectionsDataSourceDelegate);
        this._designLibraryCollectionListViewController.setDesignLibraryCollectionsDataSource(this._designDataSource);
        this._designLibraryCollectionListViewController.setReusableImageWorker(this._reusableBitmapCacheWorker);
        this._designLibraryCollectionListViewController.performInitialization(getActivity());
        this._currentAssetsViewController = this._designLibraryCollectionListViewController;
        this._designDataSource.loadItemsFromScratch();
        new AdobeAnalyticsETSAssetBrowserViewEvent(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_GRID, "library").endAndTrackEvent();
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView concreteRecyclerView = this._designLibraryCollectionListViewController.getConcreteRecyclerView(getContext());
        concreteRecyclerView.setClipToPadding(false);
        concreteRecyclerView.setPadding(concreteRecyclerView.getPaddingLeft(), concreteRecyclerView.getPaddingTop(), concreteRecyclerView.getPaddingRight(), UiUtils.getNavBarHeightInternal(getActivity()));
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getEmptyStateViewId() {
        setFabNotAdded(true);
        return R.layout.adobe_photo_assetbrowser_empty_state_view;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void addFabToRootView() {
        if (Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext())).booleanValue() && !(getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity)) {
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

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void configureEmptyStateView(View view) {
        ImageView imageView = (ImageView) view.findViewById(R.id.adobe_csdk_photo_asset_browser_empty_state_icon);
        imageView.setVisibility(0);
        imageView.setImageResource(R.drawable.adobe_emptystate_libraries);
        ((TextView) view.findViewById(R.id.adobe_csdk_photo_asset_browser_empty_state_message)).setText(getResources().getString(R.string.adobe_csdk_my_libraries_empty_collection));
    }

    class LibraryCollectionForItemEditCommandsHandler extends AdobeAssetViewCommandsHandler {
        private LibraryCollectionForItemEditCommandsHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_ITEM_EDIT, AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_SHARE_MODIFY);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_ITEM_EDIT || adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_SHARE_MODIFY) {
                DesignLibraryCollectionFragment.this._designLibraryCollectionListViewController.refreshDueToDataChange();
            }
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

    class LibraryCompEditCommandsHandler extends AdobeAssetViewCommandsHandler {
        private LibraryCompEditCommandsHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_STARTED, AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_COMPLTED);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            Bundle bundle;
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ASSETVIEW_BROWSER_CCFILES_FORCE_REFRESH_LIST) {
                DesignLibraryCollectionFragment.this.action_forceRefresh();
                return;
            }
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_STARTED) {
                DesignLibraryCollectionFragment.this.action_editStarted();
            } else if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_COMPLTED && (bundle = (Bundle) obj) != null) {
                DesignLibraryCollectionFragment.this.action_editCompleted(AdobeLibraryManager.getSharedInstance().getLibraryWithId(bundle.getString("LIBRARY_COMP_ID")));
            }
        }
    }

    public void navigateToDesignLibraryCollection(AdobeLibraryComposite adobeLibraryComposite) {
        AdobeAssetViewNavigateToDesignLibraryCollectionCommand adobeAssetViewNavigateToDesignLibraryCollectionCommand = new AdobeAssetViewNavigateToDesignLibraryCollectionCommand();
        adobeAssetViewNavigateToDesignLibraryCollectionCommand.setCollectionGUID(adobeLibraryComposite.getLibraryId());
        adobeAssetViewNavigateToDesignLibraryCollectionCommand.setCollectionName(adobeLibraryComposite.getName());
        adobeAssetViewNavigateToDesignLibraryCollectionCommand.setLibrary(adobeLibraryComposite);
        postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_DESIGNLIBRARY_COLLECTION, adobeAssetViewNavigateToDesignLibraryCollectionCommand);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected IAdobeAssetDataSource getDataSource() {
        return this._designDataSource;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hookUpDataSourceDelegate(boolean z) {
        if (z) {
            this._designDataSource.setDelegate(this._designLibraryCollectionsDataSourceDelegate);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void reloadAssetItemsFromDataSourceDueToSwipeRefresh() {
        this._designLibraryCollectionListViewController.stopRefreshAnimation();
        this._designLibraryCollectionsDataSourceDelegate.willLoadDataFromScratch();
        ACLibraryManagerAppBridge.getInstance().getLibraryController().forceSync(new IACLibraryManagerSyncDelegate() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionFragment.1
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerSyncDelegate
            public void handleSyncFinished() {
                if (DesignLibraryCollectionFragment.this._designLibraryCollectionsDataSourceDelegate != null) {
                    DesignLibraryCollectionFragment.this._designLibraryCollectionsDataSourceDelegate.didFinishLoading();
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerSyncDelegate
            public void handleSyncError(AdobeLibraryException adobeLibraryException) {
                if (DesignLibraryCollectionFragment.this._designLibraryCollectionsDataSourceDelegate != null) {
                    DesignLibraryCollectionFragment.this._designLibraryCollectionsDataSourceDelegate.didFailToLoadMoreDataWithError(null);
                }
            }
        });
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getAssetSelectionCount() {
        return 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getContainerNameForRoot() {
        if (AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getHostActivity())) {
            if (!(getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity)) {
                return getResources().getString(R.string.adobe_csdk_cc_title);
            }
            return getResources().getString(R.string.adobe_csdk_library_chooser);
        }
        return getResources().getString(R.string.adobe_csdk_asset_browser_title);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getCurrentTargetCollectionName() {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void resetAssetsListViewVisualLayout() {
        View mainView = this._designLibraryCollectionListViewController.getMainView();
        if (getAssetsMainRootFrame().indexOfChild(mainView) == -1) {
            if (mainView.getParent() != null) {
                ((ViewGroup) mainView.getParent()).removeView(mainView);
            }
            getAssetsMainRootFrame().addView(mainView);
        }
        this._currentAssetsViewController = this._designLibraryCollectionListViewController;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleOpenCurrentSelectedFilesUserAction() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleCancelSelectionUserAction() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean handleSearchFunctionality(String str) {
        if (this._designLibraryCollectionListViewController == null) {
            return false;
        }
        this._designLibraryCollectionListViewController.searchLibraryCollections(str);
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData) {
        AdobeAssetViewNavigateCommands.NavToDesignLibraryCollectionData navToDesignLibraryCollectionData = (AdobeAssetViewNavigateCommands.NavToDesignLibraryCollectionData) navBaseCommandData;
        AdobeAssetViewNavigateToDesignLibraryCollectionCommand adobeAssetViewNavigateToDesignLibraryCollectionCommand = new AdobeAssetViewNavigateToDesignLibraryCollectionCommand();
        adobeAssetViewNavigateToDesignLibraryCollectionCommand.setCollectionGUID(navToDesignLibraryCollectionData.getCollectionGUID());
        adobeAssetViewNavigateToDesignLibraryCollectionCommand.setCollectionName(navToDesignLibraryCollectionData.getCollectionName());
        adobeAssetViewNavigateToDesignLibraryCollectionCommand.setLibrary(navToDesignLibraryCollectionData.getLibrary());
        postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_DESIGNLIBRARY_COLLECTION, adobeAssetViewNavigateToDesignLibraryCollectionCommand);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleAssetClickAction(Object obj) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.libraryCompEditCommandsHandler = new LibraryCompEditCommandsHandler();
        this.libraryCollectionForItemEditCommandsHandler = new LibraryCollectionForItemEditCommandsHandler();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (!(getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity)) {
            this.libraryCompEditCommandsHandler.onStart();
            this.libraryCollectionForItemEditCommandsHandler.onStart();
            if (AdobeDesignLibraryEditManager.isUpdateCollectionDueToItemEdit()) {
                this._designLibraryCollectionListViewController.refreshDueToDataChange();
                AdobeDesignLibraryEditManager.setUpdateCollectionDueToItemEdit(false);
            }
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
        ACEventBus.getDefault().register(this);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (!(getHostActivity() instanceof IAdobeLibraryExtraControlsHostActivity)) {
            this.libraryCompEditCommandsHandler.onStop();
            this.libraryCollectionForItemEditCommandsHandler.onStop();
        }
        ACEventBus.getDefault().unregister(this);
    }

    public void onEvent(ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent) {
        ACLibraryManagerLibOpEvent.Type eventType = aCLibraryManagerLibOpEvent.getEventType();
        if (eventType == ACLibraryManagerLibOpEvent.Type.kLibraryUpdated) {
            String str = aCLibraryManagerLibOpEvent.libraryId;
            this._designLibraryCollectionListViewController.getConcreteRecyclerView(getHostActivity()).findViewWithTag(str);
            AdobeLibraryManager.getSharedInstance().getLibraryWithId(str);
            this._designLibraryCollectionListViewController.refreshDueToDataChange();
            return;
        }
        if (eventType == ACLibraryManagerLibOpEvent.Type.kLibraryUnShared || eventType == ACLibraryManagerLibOpEvent.Type.kLibraryDeleted || eventType == ACLibraryManagerLibOpEvent.Type.kLibraryAdded) {
            String str2 = aCLibraryManagerLibOpEvent.libraryId;
            this._designLibraryCollectionListViewController.refreshDueToDataChange();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handlePostOnCreateView(Bundle bundle) {
        super.handlePostOnCreateView(bundle);
        this._progressBar = new ProgressBar(getHostActivity(), null, android.R.attr.progressBarStyleHorizontal);
        this._progressBar.setProgressDrawable(getResources().getDrawable(R.drawable.asset_edit_progress_bar));
        this._progressBar.setVisibility(8);
        this._progressBar.setIndeterminateDrawable(getResources().getDrawable(R.drawable.asset_edit_progress_bar));
        this._progressBar.setIndeterminate(false);
        this._progressBar.setMax(100);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getPixelsFromDP(getResources().getDimension(R.dimen.adobe_csdk_asset_edit_progress_bar_size)));
        this._progressBar.setProgress(0);
        layoutParams.addRule(10);
        this._progressBar.setLayoutParams(layoutParams);
        getMainRootView().addView(this._progressBar);
        addFabToRootView();
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Boolean.valueOf(NavBarUtil.getHasTranslucentNav(getHostActivity()));
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

    private void handleFABMenu() {
        this._alphaPane.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DesignLibraryCollectionFragment.this._alphaPane.setVisibility(4);
                DesignLibraryCollectionFragment.this._fabLayout.a();
            }
        });
        this._fabLayout.setOnFloatingActionsMenuUpdateListener(new h() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionFragment.3
            @Override // com.getbase.floatingactionbutton.h
            public void onMenuExpanded() {
                DesignLibraryCollectionFragment.this._alphaPane.setVisibility(0);
                DesignLibraryCollectionFragment.this.handleCreateNewLibraryButtonClick();
                DesignLibraryCollectionFragment.this._alphaPane.callOnClick();
            }

            @Override // com.getbase.floatingactionbutton.h
            public void onMenuCollapsed() {
                DesignLibraryCollectionFragment.this._alphaPane.setVisibility(4);
            }
        });
        if (!isNetworkOnline()) {
            this._fabLayout.setVisibility(8);
        } else {
            this._fabLayout.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateNewLibraryButtonClick() {
        AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticCreateNewLibrary, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionFragment.4
            {
                put(AdobeAnalyticsSDKReporter.AnalyticArea, AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_OPERATIONS);
                put("type", "library");
                put(AdobeAnalyticsSDKReporter.AnalyticAction, "create");
            }
        }, null);
        postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_CREATE_NEWLIBRARY, null);
    }

    private int getPixelsFromDP(float f2) {
        return Math.round(getHostActivity().getApplicationContext().getResources().getDisplayMetrics().density * f2);
    }

    private void setEditProgress(double d2) {
        this._progressBar.setVisibility(0);
        this._progressBar.setProgress((int) (100.0d * d2));
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
    public void action_editCompleted(AdobeLibraryComposite adobeLibraryComposite) {
        boolean z = true;
        if (!AdobeDesignLibraryEditManager.hasEditCompletionHandled()) {
            AdobeDesignLibraryEditManager.setEditCompletionHandled(true);
            AdobeDesignLibraryEditManager.setEditStarted(false);
            AdobeDesignLibraryEditManager.setEditInProgress(false);
            AdobeAssetViewEditSelectedAssetsController.clearSelection();
            if (adobeLibraryComposite != null) {
                AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
                z = adobeLibraryCompositeInternal.getDcxComposite() == null || adobeLibraryCompositeInternal.getDcxComposite().getCurrent().getCompositeState() == AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete || adobeLibraryCompositeInternal.getDcxComposite().getCurrent().getCompositeState() == AdobeDCXConstants.AdobeDCXAssetStatePendingDelete;
            }
            if (z) {
                this._designLibraryCollectionListViewController.refreshDueToDataChange();
            } else {
                View viewFindViewWithTag = this._designLibraryCollectionListViewController.getConcreteRecyclerView(getHostActivity()).findViewWithTag(adobeLibraryComposite.getLibraryId());
                if (viewFindViewWithTag != null) {
                    this._designLibraryCollectionListViewController.updateItemViewForLib(viewFindViewWithTag, adobeLibraryComposite);
                } else {
                    refreshCurrentListViewController();
                }
            }
            showEditSummaryBar(AdobeDesignLibraryEditManager.getLastSession());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void action_forceRefresh() {
        reloadDataFromDataSource();
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
        createEditSummaryView();
        String string2 = "";
        if (!editSummary.isEditSucceeded()) {
            this._editSummaryBanner.bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_error_banner_background);
            if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_RENAME) {
                string = getResources().getString(R.string.adobe_csdk_IDS_EDIT_SINGLE_ERROR_MSG);
            } else if (editSummary.operation != AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_DELETE) {
                string = "";
            } else {
                string = getResources().getString(R.string.adobe_csdk_IDS_DELETE_SINGLE_ERROR_MSG);
            }
            str = String.format(string, Integer.toString(1));
        } else {
            if (this._progressBar != null) {
                this._progressBar.setVisibility(0);
                this._progressBar.setProgress(100);
            }
            this._editSummaryBanner.bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_success_banner_background);
            if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_RENAME) {
                string2 = getResources().getString(R.string.adobe_csdk_IDS_EDIT_SINGLE_SUCCESS_MSG);
            } else if (editSummary.operation == AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_DELETE) {
                string2 = getResources().getString(R.string.adobe_csdk_IDS_DELETE_SINGLE_SUCCESS_MSG);
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
        AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryCollectionFragment.5
            @Override // java.lang.Runnable
            public void run() {
                if (DesignLibraryCollectionFragment.this._editSummaryBanner != null && DesignLibraryCollectionFragment.this._editSummaryBanner.bannerView != null) {
                    DesignLibraryCollectionFragment.this._editSummaryBanner.bannerView.setVisibility(8);
                }
            }
        }, 5000L);
    }

    class DesignLibraryCollectionsDataSourceDelegate implements IAdobeAssetDataSourceDelegate {
        private DesignLibraryCollectionsDataSourceDelegate() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void willLoadDataFromScratch() {
            DesignLibraryCollectionFragment.this.ds_willLoadDataFromScratch();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void willLoadNextPageForExistingPackage() {
            DesignLibraryCollectionFragment.this.ds_willLoadNextPageForExistingCollection();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didLoadMoreDataWithCount(int i) {
            DesignLibraryCollectionFragment.this.ds_didLoadMoreDataWithCount(DesignLibraryCollectionFragment.this._designDataSource.getCount(), null, null);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException) {
            DesignLibraryCollectionFragment.this.ds_didFailToLoadMoreDataWithError(adobeAssetException);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
        public void didFinishLoading() {
            DesignLibraryCollectionFragment.this.resetAssetsListViewVisualLayout();
            DesignLibraryCollectionFragment.this.ds_didFinishLoading(DesignLibraryCollectionFragment.this._designDataSource.getCount());
        }
    }
}
