package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.SearchView;
import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import c.a.a.a.a.b.a;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAssetBrowserSearchEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.base.AdobeCSDKBaseActivity;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationDataModel;
import com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSource;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.notificationlistener.AdobeInternalNotificationListener;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeCSDKInternalClientsPreferences;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeListIndexPath;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeListSectionsIndexSet;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKTypeFace;
import com.adobe.creativesdk.foundation.internal.utils.AdobeLocalizedMgr;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.CreativeSDKTextView;
import com.adobe.creativesdk.foundation.internal.utils.NavBarUtil;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AssetViewFragment extends AssetViewBaseFragment implements IAdobeAssetContainerListViewDelegate {
    private static final String T = AssetViewFragment.class.getSimpleName();
    protected AssetsViewBaseActionBarController _actionBarController;
    private Observer _app_orientation_changed_observer;
    protected AdobeAssetsViewContainerConfiguration _assetViewConfiguration;
    private FrameLayout _assetsMainRootFrame;
    private LinearLayout _cancelSelectionBtn;
    private View _cloud_not_reachable_view;
    private boolean _containerIsVisibleRunning;
    protected AssetsListView _currentAssetsViewController;
    private View _emptyFolderView;
    private AssetsViewContainerInstanceState _fragmentStateWhenStopped;
    protected AdobeInternalNotificationListener _internalNotificationListener;
    AssetsListView.InstanceState _listControllerSavedInstanceState;
    private RelativeLayout _mainContentView;
    private RelativeLayout _mainRootView;
    private boolean[] _menuStates;
    private Observer _network_reachability_observer;
    private View _no_network_full_view;
    private View _no_network_notification_bar;
    private TextView _notificationCountTextView;
    private ImageView _notificationIcon;
    private MenuItem _notificationMenuItem;
    private View _notificationView;
    private LinearLayout _openFileBtn;
    private TextView _openFileBtnTextView;
    private int _orientationOnPause;
    private View _restricted_region_error_layout;
    private boolean _searchBarOpened;
    private View _selectionBottomBarView;
    private UploadSummaryBanner _uploadSummaryBanner;
    private MenuItem _uploadTasksMenuItem;
    private Observer _upload_sessions_observer;
    private final String ORIENTATION_KEY = "orientation";
    protected boolean _isRestoredFragment = false;
    private boolean _isFragmentStopped = false;
    private boolean _dataLoaded = false;
    private boolean _suppressFooterSpinner = false;
    private boolean _supressProgress = false;
    private boolean _isNetworkOnline = true;
    private boolean _fabNotAdded = false;
    private View _progressSpinner = null;

    protected abstract int getAssetSelectionCount();

    protected abstract AdobeAssetsViewContainerConfiguration getAssetViewConfiguration(Bundle bundle);

    protected abstract String getContainerNameForRoot();

    protected abstract String getCurrentTargetCollectionName();

    protected abstract IAdobeAssetDataSource getDataSource();

    protected abstract void handleCancelSelectionUserAction();

    protected abstract void handleOpenCurrentSelectedFilesUserAction();

    protected abstract boolean handleSearchFunctionality(String str);

    protected abstract boolean hasActionBarOptions();

    protected abstract void hookUpDataSourceDelegate(boolean z);

    protected abstract void initializeFromViewConfiguration(AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration);

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public abstract void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData);

    protected abstract void resetAssetsListViewVisualLayout();

    protected abstract void setupAssetsDataSourceAndListViewControllers();

    protected void collapseFloatingActionMenu() {
    }

    protected Boolean isFloatingMenuExpanded() {
        return false;
    }

    protected void restoreContainerFromSavedInstance(Bundle bundle) {
        initializeFromViewConfiguration(this._assetViewConfiguration);
    }

    private void refreshAssetsListViewVisualLayout() {
        resetAssetsListViewVisualLayout();
        restoreCurrentAssetsListControllerState();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(hasActionBarOptions());
        this._assetViewConfiguration = getAssetViewConfiguration(getArguments());
        if (bundle != null) {
            restoreContainerFromSavedInstance(bundle);
        } else {
            initializeFromViewConfiguration(this._assetViewConfiguration);
        }
        handlePostOnCreate(bundle);
        this._internalNotificationListener = new AdobeInternalNotificationListener();
    }

    private int getAppCurrentOrientation() {
        return getResources().getConfiguration().orientation;
    }

    protected void handlePostOnCreate(Bundle bundle) {
    }

    protected boolean isNetworkOnline() {
        return this._isNetworkOnline;
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        storeInstanceState(bundle);
    }

    protected void storeInstanceState(Bundle bundle) {
        bundle.putInt("orientation", getAppCurrentOrientation());
    }

    private void setUpSelectionBottomBar() {
        if (this._selectionBottomBarView == null) {
            this._selectionBottomBarView = LayoutInflater.from(getActivity()).inflate(R.layout.adobe_assetview_container_selection_bottom_bar, (ViewGroup) this._mainRootView, false);
            this._openFileBtn = (LinearLayout) this._selectionBottomBarView.findViewById(R.id.adobe_csdk_storage_selection_open_file_btn);
            this._cancelSelectionBtn = (LinearLayout) this._selectionBottomBarView.findViewById(R.id.adobe_csdk_storage_selection_cancel_btn);
            this._openFileBtnTextView = (TextView) this._selectionBottomBarView.findViewById(R.id.adobe_csdk_storage_selection_open_file_btn_title);
            this._openFileBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AssetViewFragment.this.handleOpenCurrentSelectedFilesUserAction();
                }
            });
            this._cancelSelectionBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AssetViewFragment.this.handleCancelSelectionUserAction();
                }
            });
            this._selectionBottomBarView.setVisibility(8);
            this._mainContentView.addView(this._selectionBottomBarView);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(hasActionBarOptions());
        this._mainRootView = (RelativeLayout) layoutInflater.inflate(R.layout.adobe_assetview_main_container, viewGroup, false);
        this._progressSpinner = this._mainRootView.findViewById(R.id.adobe_csdk_assetview_container_progressBar);
        this._assetsMainRootFrame = (FrameLayout) this._mainRootView.findViewById(R.id.adobe_csdk_assetview_container_content_assetsview);
        this._mainContentView = (RelativeLayout) this._mainRootView.findViewById(R.id.adobe_csdk_assetview_container_content_rootview);
        this._isRestoredFragment = getDataSource() != null;
        setupAssetsDataSourceAndListViewControllers();
        this._orientationOnPause = getAppCurrentOrientation();
        handlePostOnCreateView(bundle);
        return this._mainRootView;
    }

    protected void handlePostOnCreateView(Bundle bundle) {
        HashMap map = new HashMap();
        map.put(AdobeAssetViewUtils.ASSETVIEW_NAVIGATE_ISROOT_KEY, Boolean.valueOf(isContainerShowingRootCollection()));
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAssetViewNavigateToCollectionNotification, map));
        checkForAnyOrientationChange(bundle);
    }

    protected int getNavBarHeight(Activity activity) {
        Boolean boolValueOf = Boolean.valueOf(getResources().getConfiguration().orientation == 1);
        Boolean boolValueOf2 = Boolean.valueOf(NavBarUtil.getHasTranslucentNav(getHostActivity()));
        float f2 = getContext().getResources().getDisplayMetrics().density;
        int navBarHeightInternal = (isTablet(activity) || getResources().getConfiguration().orientation != 2) ? getNavBarHeightInternal(activity) : 0;
        if (!boolValueOf2.booleanValue()) {
            if (isTablet(getContext())) {
                return (int) ((24.0f * f2) + 0.5f);
            }
            if (boolValueOf.booleanValue()) {
                return (int) ((16.0f * f2) + 0.5f);
            }
            return navBarHeightInternal;
        }
        return navBarHeightInternal;
    }

    protected int getFabPaddingWidth() {
        float f2 = getContext().getResources().getDisplayMetrics().density;
        if (isTablet(getContext())) {
            return (int) ((f2 * 24.0f) + 0.5f);
        }
        return (int) ((f2 * 9.0f) + 0.5f);
    }

    private int getNavBarHeightInternal(Context context) {
        int identifier;
        boolean zHasPermanentMenuKey = ViewConfiguration.get(context).hasPermanentMenuKey();
        boolean zDeviceHasKey = KeyCharacterMap.deviceHasKey(4);
        if (!zHasPermanentMenuKey || !zDeviceHasKey) {
            Resources resources = getContext().getResources();
            int i = getResources().getConfiguration().orientation;
            if (isTablet(context)) {
                identifier = resources.getIdentifier(i == 1 ? "navigation_bar_height" : "navigation_bar_height_landscape", "dimen", a.ANDROID_CLIENT_TYPE);
            } else {
                identifier = resources.getIdentifier(i == 1 ? "navigation_bar_height" : "navigation_bar_width", "dimen", a.ANDROID_CLIENT_TYPE);
            }
            if (identifier > 0) {
                return getResources().getDimensionPixelSize(identifier);
            }
        }
        return 0;
    }

    protected boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    private void checkForAnyOrientationChange(Bundle bundle) {
        if (bundle != null || this._fragmentStateWhenStopped != null) {
            int i = bundle != null ? bundle.getInt("orientation", -1) : this._fragmentStateWhenStopped.orientation;
            if (i != -1 && i != getAppCurrentOrientation()) {
                handleAppOrientationChange();
            }
        }
    }

    private void showErrorMessageForRestrictedRegion() {
        if (isUserFromRestrictedRegion()) {
            this._restricted_region_error_layout = LayoutInflater.from(getActivity()).inflate(R.layout.adobe_csdk_restricted_region_error, (ViewGroup) this._assetsMainRootFrame, false);
            getMainRootView().addView(this._restricted_region_error_layout);
        }
    }

    private boolean isUserFromRestrictedRegion() {
        AdobeAuthUserProfile userProfile = AdobeAuthManager.sharedAuthManager().getUserProfile();
        String countryCode = userProfile != null ? userProfile.getCountryCode() : null;
        if (countryCode != null) {
            return countryCode.equalsIgnoreCase(Locale.SIMPLIFIED_CHINESE.getCountry());
        }
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        getActionBarController().onCreateOptionsMenu(menu, menuInflater);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        getActionBarController().onPrepareOptionsMenu(menu);
        if (isCloudError() || isInProgress()) {
            for (int i = 0; i < menu.size(); i++) {
                menu.getItem(i).setEnabled(false);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (getActionBarController().onOptionsItemSelected(menuItem)) {
            return true;
        }
        if (menuItem.getItemId() == 16908332 && isContainerShowingRootCollection()) {
            postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_BACK, null);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    protected void refreshEditMenuItems() {
        getActionBarController().refreshEditMenuItems();
    }

    protected boolean isContainerShowingRootCollection() {
        return true;
    }

    protected void hideProgressView() {
        this._progressSpinner.setVisibility(4);
        setHasOptionsMenu(hasActionBarOptions());
    }

    protected void showProgressView() {
        this._progressSpinner.setVisibility(0);
        setHasOptionsMenu(false);
    }

    protected SpannableString getAdobeFormattedString(int i) {
        return getAdobeFormattedString(getLocalizedStringUtil(i));
    }

    protected SpannableString getAdobeFormattedString(String str) {
        return AdobeAssetViewUtils.getAdobeFontFormattedString(str, getActivity());
    }

    protected void hideMenuItemsUtil(Menu menu) {
        int size = menu.size();
        this._menuStates = new boolean[size];
        for (int i = 0; i < size; i++) {
            MenuItem item = menu.getItem(i);
            this._menuStates[i] = item.isVisible();
            item.setVisible(false);
        }
    }

    protected String getLocalizedStringUtil(int i) {
        return getResources().getString(i);
    }

    protected void showMenuItemsUtil(Menu menu) {
        if (this._menuStates != null) {
            int size = menu.size();
            if (this._menuStates.length != size) {
                this._menuStates = null;
            }
            for (int i = 0; i < size; i++) {
                menu.getItem(i).setVisible(this._menuStates[i] && isNetworkOnline());
            }
            this._menuStates = null;
        }
    }

    protected RelativeLayout getMainRootView() {
        return this._mainRootView;
    }

    protected FrameLayout getAssetsMainRootFrame() {
        return this._assetsMainRootFrame;
    }

    protected AssetsViewBaseActionBarController getActionBarController() {
        if (this._actionBarController == null) {
            this._actionBarController = createActionBarController();
        }
        return this._actionBarController;
    }

    protected AssetsViewBaseActionBarController createActionBarController() {
        return ((getActivity() instanceof AdobeUxAssetBrowserV2Activity) || !AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getActivity())) ? new AssetsViewBaseActionBarController() : new AdobeCCActionBarController();
    }

    protected boolean isAssetsMainFrameVisible() {
        return this._assetsMainRootFrame.getVisibility() == 0;
    }

    private boolean isNetworkViewSetuped() {
        return this._no_network_full_view != null;
    }

    private void setupNetworkRelatedViews() {
        if (this._no_network_full_view == null) {
            this._no_network_full_view = LayoutInflater.from(getActivity()).inflate(R.layout.adobe_csdk_common_errorview, (ViewGroup) this._assetsMainRootFrame, false);
            this._no_network_notification_bar = LayoutInflater.from(getActivity()).inflate(R.layout.adobe_csdk_common_popup_bannerview, (ViewGroup) this._assetsMainRootFrame, false);
            this._cloud_not_reachable_view = LayoutInflater.from(getActivity()).inflate(R.layout.adobe_cloud_not_reachable, (ViewGroup) this._assetsMainRootFrame, false);
            this._no_network_full_view.setVisibility(8);
            this._no_network_notification_bar.setVisibility(8);
            this._cloud_not_reachable_view.setVisibility(8);
            if (!AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
                getMainRootView().addView(this._no_network_full_view);
                getMainRootView().addView(this._no_network_notification_bar);
            } else {
                getMainRootView().addView(this._cloud_not_reachable_view);
                getMainRootView().findViewById(R.id.adobe_csdk_cloud_not_reachable_retry_btn).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AssetViewFragment.this.retryClickHandler(view);
                    }
                });
            }
        }
    }

    public void retryClickHandler(View view) {
        hideCloudNotReachable();
        reloadAssetItemsFromDataSourceDueToSwipeRefresh();
    }

    protected void wentOnline(boolean z) {
        this._isNetworkOnline = true;
        showFab();
        if (!isAssetsMainFrameVisible() && isNetworkViewSetuped() && this._no_network_full_view.getVisibility() == 0) {
            setAssetMainRootFrameVisibility(true);
            this._no_network_full_view.setVisibility(8);
            getActionBarController().handleCurrentNetworkStatus(true);
            showProgressView();
        }
        if (isNetworkViewSetuped()) {
            this._no_network_notification_bar.setVisibility(8);
        }
        if (z) {
            reloadAssetItemsFromDataSourceDueToSwipeRefresh();
        }
        handleNetworkStatusChange(true);
    }

    protected void handleNetworkStatusChange(boolean z) {
    }

    public boolean isEmptyFolderViewVisible() {
        return this._emptyFolderView != null && this._emptyFolderView.getVisibility() == 0;
    }

    private boolean isRestrictedRegionErrorVisible() {
        return this._restricted_region_error_layout != null && this._restricted_region_error_layout.getVisibility() == 0;
    }

    protected void handlePostOffline() {
    }

    protected void markAsWentOffline() {
        wentOffline(true);
    }

    private void showCloudNotReachable() {
        setupNetworkRelatedViews();
        CreativeSDKTextView creativeSDKTextView = (CreativeSDKTextView) getMainRootView().findViewById(R.id.adobe_csdk_cloud_not_reachable_error_message);
        if (this._assetViewConfiguration.getCloud() != null && !this._assetViewConfiguration.getCloud().isPrivateCloud()) {
            creativeSDKTextView.setText(R.string.adobe_csdk_cloud_not_reachable_public_cloud);
        }
        this._cloud_not_reachable_view.setVisibility(0);
    }

    private boolean isCloudError() {
        return this._cloud_not_reachable_view != null && this._cloud_not_reachable_view.getVisibility() == 0;
    }

    private boolean isInProgress() {
        return this._progressSpinner != null && this._progressSpinner.getVisibility() == 0;
    }

    private void hideCloudNotReachable() {
        this._cloud_not_reachable_view.setVisibility(8);
    }

    protected void wentOffline(boolean z) {
        this._isNetworkOnline = false;
        setupNetworkRelatedViews();
        hideFab();
        if (isAssetsMainFrameVisible() || isEmptyFolderViewVisible()) {
            this._no_network_notification_bar.setVisibility(0);
        } else {
            hideProgressView();
            setAssetMainRootFrameVisibility(false);
            this._no_network_full_view.setVisibility(0);
            this._no_network_notification_bar.setVisibility(8);
            this._cloud_not_reachable_view.setVisibility(8);
            getActionBarController().handleCurrentNetworkStatus(false);
        }
        stopRefreshAnimationOnCurrentListController();
        handlePostOffline();
        handleNetworkStatusChange(false);
    }

    protected void registerLocalNofications() {
        if (this._network_reachability_observer == null) {
            this._network_reachability_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.4
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    switch (((AdobeNetworkReachability.AdobeNetworkStatus) ((AdobeNotification) obj).getInfo().get(AdobeNetworkReachability.AdobeNetworkReachabilityStatusKey)).networkStatusCode) {
                        case AdobeNetworkReachableNonMetered:
                        case AdobeNetworkReachableMetered:
                            AssetViewFragment.this.wentOnline(true);
                            break;
                        default:
                            AssetViewFragment.this.wentOffline(false);
                            break;
                    }
                }
            };
        }
        if (this._app_orientation_changed_observer == null) {
            this._app_orientation_changed_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.5
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AssetViewFragment.this.handleAppOrientationChange();
                }
            };
        }
        if (this._internalNotificationListener == null) {
            this._internalNotificationListener = new AdobeInternalNotificationListener();
        }
        if (this._upload_sessions_observer == null) {
            this._upload_sessions_observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.6
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AssetViewFragment.this._actionBarController.showOrHideUploadMenuItem();
                }
            };
        }
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this._network_reachability_observer);
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged, this._app_orientation_changed_observer);
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeNoUploadSessions, this._upload_sessions_observer);
        this._internalNotificationListener.registerForNotification(AdobeInternalNotificationID.AdobeUploadSessionsActive, this._upload_sessions_observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesRefreshNotificationCount, new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.7
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AssetViewFragment.this.setNotificationCount(((Integer) ((AdobeNotification) obj).getInfo().get(AdobePushNotificationDataModel.UNREAD_COUNT)).intValue());
            }
        });
    }

    protected void handleAppOrientationChange() {
    }

    protected void unRegisterLocalNotifications() {
        if (this._internalNotificationListener != null) {
            this._internalNotificationListener.unregisterForNotification(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification);
            this._internalNotificationListener.unregisterForNotification(AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged);
        }
    }

    protected void configureMultiSelectViews() {
        String localizedString;
        setUpSelectionBottomBar();
        int assetSelectionCount = getAssetSelectionCount();
        this._selectionBottomBarView.setVisibility(assetSelectionCount > 0 ? 0 : 8);
        if (assetSelectionCount <= 1) {
            localizedString = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_storage_open_files);
        } else if (assetSelectionCount > 99) {
            localizedString = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_storage_open_multiple_files_99);
        } else {
            localizedString = String.format(AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_storage_open_multiple_files), Integer.toString(assetSelectionCount));
        }
        this._openFileBtnTextView.setText(localizedString);
    }

    private void setActionBarDropDownDetails(String str) {
        AdobeCSDKActionBarController.setTitle(getActivity().findViewById(android.R.id.content), str);
    }

    protected void setContainerFragmentTitle(String str) {
        setActionBarDropDownDetails(str);
    }

    private void prepareActionBarForCurrentCollection() {
        ActionBar supportActionBar = ((AdobeCSDKBaseActivity) getActivity()).getSupportActionBar();
        if (supportActionBar != null) {
            if (isContainerShowingRootCollection()) {
                setActionBarDropDownDetails(getContainerNameForRoot());
                return;
            }
            if (Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext())).booleanValue()) {
                if (Build.VERSION.SDK_INT >= 21) {
                    supportActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_arrow_back_white_24dp, null));
                } else {
                    supportActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_arrow_back_white_24dp));
                }
            } else if (Build.VERSION.SDK_INT >= 21) {
                supportActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_arrow_back_black_24dp, null));
            } else {
                supportActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_arrow_back_black_24dp));
            }
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            setActionBarDropDownDetails(getCurrentTargetCollectionName());
        }
    }

    private void initializeOtherAccessoryViews() {
        getActionBarController().handleOnStart();
        prepareActionBarForCurrentCollection();
        configureMultiSelectViews();
    }

    protected boolean isRestoredDataSourceChanged() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        boolean zHandleAnyListConfigChange;
        super.onStart();
        handlePreOnStart();
        this._isFragmentStopped = false;
        hookUpDataSourceDelegate(true);
        if (this._actionBarController != null) {
            this._actionBarController.showOrHideUploadMenuItem();
        }
        handleNotificationQueue();
        registerLocalNofications();
        initializeOtherAccessoryViews();
        showErrorMessageForRestrictedRegion();
        boolean zIsOnline = AdobeNetworkReachabilityUtil.getSharedInstance().isOnline();
        if (zIsOnline) {
            wentOnline(false);
            refreshAssetsListViewVisualLayout();
            handleAnyListCellViewsRefresh();
            zHandleAnyListConfigChange = handleAnyListConfigChange();
        } else {
            wentOffline(true);
            zHandleAnyListConfigChange = false;
        }
        if (this._isRestoredFragment && !zHandleAnyListConfigChange) {
            hideProgressView();
            if ((getDataSource().getCount() == 0 || !this._dataLoaded || isRestoredDataSourceChanged()) && zIsOnline) {
                this._dataLoaded = false;
                reloadDataFromDataSource();
                return;
            }
            return;
        }
        if (!this._dataLoaded) {
            this._dataLoaded = false;
            reloadDataFromDataSource();
        }
    }

    protected void handleNotificationQueue() {
        if (this._internalNotificationListener != null) {
            this._internalNotificationListener.clearQueue(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification);
            this._internalNotificationListener.clearQueue(AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged);
        }
    }

    protected void handleAnyListCellViewsRefresh() {
    }

    protected void handlePreOnStart() {
    }

    protected void reloadDataFromDataSource() {
        getDataSource().loadItemsFromScratch();
    }

    protected boolean handleAnyListConfigChange() {
        return false;
    }

    protected boolean isContainerVisibleRunning() {
        return this._containerIsVisibleRunning;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        if (this._orientationOnPause != getAppCurrentOrientation()) {
            handleAppOrientationChange();
        }
        this._containerIsVisibleRunning = true;
        super.onResume();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        this._containerIsVisibleRunning = false;
        this._orientationOnPause = getAppCurrentOrientation();
        super.onPause();
    }

    private void saveContainerState(AssetsViewContainerInstanceState assetsViewContainerInstanceState) {
        assetsViewContainerInstanceState._dataSourceCount = getDataSource() != null ? getDataSource().getCount() : -1;
        assetsViewContainerInstanceState.orientation = getAppCurrentOrientation();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        getDataSource().resetDelegate();
        getActionBarController().saveActionBarInstanceState();
        AdobeNetworkReachabilityUtil.destorySharedInstance();
        unRegisterLocalNotifications();
        this._isFragmentStopped = true;
        handleOnStop();
        super.onStop();
    }

    protected void handleOnStop() {
        this._fragmentStateWhenStopped = new AssetsViewContainerInstanceState();
        saveContainerState(this._fragmentStateWhenStopped);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        saveCurrentAssetsListControllerState();
        this._selectionBottomBarView = null;
        getDataSource().resetDelegate();
        closeSearchBarIfOpen();
        clearAllAccessoryViews();
        this._assetsMainRootFrame.removeAllViews();
    }

    private void clearAllAccessoryViews() {
        this._no_network_notification_bar = null;
        this._no_network_full_view = null;
        this._emptyFolderView = null;
    }

    protected void saveCurrentAssetsListControllerState() {
        this._listControllerSavedInstanceState = this._currentAssetsViewController != null ? this._currentAssetsViewController.getInstanceState() : null;
    }

    protected void restoreCurrentAssetsListControllerState() {
        if (this._listControllerSavedInstanceState != null) {
            this._currentAssetsViewController.restoreFromState(this._listControllerSavedInstanceState);
            this._listControllerSavedInstanceState = null;
        }
    }

    protected void postActionCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(adobeAssetViewBrowserCommandName, obj);
    }

    private void createUploadSummaryBannerView() {
        if (this._uploadSummaryBanner == null) {
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
            this._uploadSummaryBanner = new UploadSummaryBanner();
            this._uploadSummaryBanner.bannerTitle = creativeSDKTextView;
            this._uploadSummaryBanner.bannerView = relativeLayout;
            this._uploadSummaryBanner.bannerView.setVisibility(8);
            getMainRootView().addView(this._uploadSummaryBanner.bannerView);
        }
    }

    protected void showUploadSummaryBar(final AdobeUploadSession adobeUploadSession) {
        String string;
        String string2;
        String string3;
        boolean z = true;
        createUploadSummaryBannerView();
        AdobeUploadSession.UploadSummary uploadSummary = adobeUploadSession.getUploadSummary();
        int errorCount = uploadSummary.getErrorCount();
        boolean z2 = errorCount > 0;
        boolean zIsStorageFull = uploadSummary.isStorageFull();
        if (z2) {
            this._uploadSummaryBanner.bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_error_banner_background);
            if (errorCount == 1) {
                string3 = getResources().getString(R.string.adobe_csdk_IDS_UPLOAD_SINGLE_ERROR_MSG);
            } else {
                string3 = getResources().getString(R.string.adobe_csdk_IDS_UPLOAD_ERROR_MSG);
            }
            string2 = String.format(string3, Integer.toString(errorCount));
            this._uploadSummaryBanner.bannerView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AssetViewFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_UPLOAD_SHOW_ERROR_DETAILS, adobeUploadSession.getUploadSummary());
                }
            });
        } else if (zIsStorageFull) {
            this._uploadSummaryBanner.bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_error_banner_background);
            string2 = getResources().getString(R.string.adobe_csdk_IDS_UPLOAD_STORAGE_FULL_MSG);
        } else {
            this._uploadSummaryBanner.bannerView.setBackgroundResource(R.color.adobe_csdk_assetview_common_success_banner_background);
            if (uploadSummary.getSuccessCount() == 1) {
                string = getResources().getString(R.string.adobe_csdk_IDS_UPLOAD_SINGLE_SUCCESS_MSG);
            } else {
                string = getResources().getString(R.string.adobe_csdk_IDS_UPLOAD_SUCCESS_MSG);
            }
            string2 = String.format(string, Integer.toString(uploadSummary.getSuccessCount()));
            if (uploadSummary.getSuccessCount() == 0) {
                z = false;
            }
        }
        if (z) {
            this._uploadSummaryBanner.bannerTitle.setText(string2);
            this._uploadSummaryBanner.bannerView.setVisibility(0);
            AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.9
                @Override // java.lang.Runnable
                public void run() {
                    if (AssetViewFragment.this._uploadSummaryBanner != null && AssetViewFragment.this._uploadSummaryBanner.bannerView != null) {
                        AssetViewFragment.this._uploadSummaryBanner.bannerView.setVisibility(8);
                    }
                }
            }, 7000L);
        }
    }

    protected void closeSearchBarIfOpen() {
        if (this._actionBarController != null) {
            this._actionBarController.closeSearchViewIfOpen();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void reloadAssetItemsFromDataSourceDueToSwipeRefresh() {
        closeSearchBarIfOpen();
        boolean z = this._supressProgress;
        this._supressProgress = true;
        if (!getDataSource().loadItemsFromScratch()) {
            this._supressProgress = z;
        } else {
            setMultiSelectContainerVisibility(false);
        }
        stopRefreshAnimationOnCurrentListController();
        AdobeNotificationManager notificationManager = AdobeNotificationManager.getNotificationManager();
        if (notificationManager != null) {
            setNotificationCount(notificationManager.getUnreadCount());
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public FragmentActivity getHostActivity() {
        return getActivity();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void loadMoreItemsFromDataSource() {
        getDataSource().loadNextPageOfData();
    }

    protected int getEmptyStateViewId() {
        return R.layout.adobe_storage_assetbrowser_empty_state_view;
    }

    protected void setAssetMainRootFrameVisibility(boolean z) {
        this._assetsMainRootFrame.setVisibility(z ? 0 : 8);
    }

    protected void setNoNetworkViews(boolean z) {
        if (this._no_network_full_view != null) {
            this._no_network_full_view.setVisibility(z ? 0 : 8);
        }
        if (this._no_network_notification_bar != null) {
            this._no_network_notification_bar.setVisibility(z ? 0 : 8);
        }
    }

    private void handleFolderDataCommon(boolean z) {
        if (!isRestrictedRegionErrorVisible()) {
            if (this._emptyFolderView == null) {
                this._emptyFolderView = LayoutInflater.from(getActivity()).inflate(getEmptyStateViewId(), (ViewGroup) this._assetsMainRootFrame, false);
                configureEmptyStateView(this._emptyFolderView);
                getMainRootView().addView(this._emptyFolderView);
                if (this._fabNotAdded) {
                    addFabToRootView();
                    this._fabNotAdded = false;
                }
            }
            this._emptyFolderView.setVisibility(z ? 0 : 8);
            setAssetMainRootFrameVisibility(z ? false : true);
            getActionBarController().refreshOptionItems();
        }
    }

    protected void configureEmptyStateView(View view) {
    }

    protected void showEmptyAssetsStateView() {
        handleFolderDataCommon(true);
    }

    public void setFabNotAdded(boolean z) {
        this._fabNotAdded = z;
    }

    protected void addFabToRootView() {
    }

    protected void hideEmptyStateView() {
        if (this._emptyFolderView == null) {
            setAssetMainRootFrameVisibility(true);
            getActionBarController().refreshOptionItems();
        } else {
            handleFolderDataCommon(false);
        }
    }

    private void setContainerLoadingAssetsFromScratch() {
        showProgressView();
        setAssetMainRootFrameVisibility(false);
        getActionBarController().refreshOptionItems();
    }

    private void setMultiSelectContainerVisibility(boolean z) {
        if (this._selectionBottomBarView != null && this._selectionBottomBarView.getVisibility() != 8) {
            this._selectionBottomBarView.setVisibility(z ? 0 : 4);
        }
    }

    protected void refreshCurrentListViewController() {
        this._currentAssetsViewController.refreshDueToDataChange();
    }

    protected void ds_willLoadDataFromScratch() {
        this._dataLoaded = false;
        this._suppressFooterSpinner = true;
        if (this._currentAssetsViewController != null && !this._supressProgress) {
            refreshCurrentListViewController();
        }
        setContainerLoadingAssetsFromScratch();
    }

    private void showLoadingFooter() {
        if (!this._suppressFooterSpinner && this._currentAssetsViewController != null) {
            this._currentAssetsViewController.showLoadingFooter();
        }
    }

    protected void ds_willLoadNextPageForExistingCollection() {
        if (getDataSource().getCount() <= 0 && !this._supressProgress) {
            showProgressView();
            setAssetMainRootFrameVisibility(false);
        }
        showLoadingFooter();
        refreshAssetsListViewVisualLayout();
    }

    protected void ds_willLoadNextPageForNonExistingCollection() {
        if (!this._supressProgress) {
            showProgressView();
            setAssetMainRootFrameVisibility(false);
        }
        showLoadingFooter();
    }

    protected void ds_didFinishLoading(int i) {
        this._supressProgress = false;
        hideProgressView();
        if (i > 0) {
            hideEmptyStateView();
        } else {
            this._dataLoaded = false;
            showEmptyAssetsStateView();
        }
    }

    protected void ds_didLoadMoreDataWithCount(int i, AdobeListSectionsIndexSet adobeListSectionsIndexSet, ArrayList<AdobeListIndexPath> arrayList) {
        stopRefreshAnimationOnCurrentListController();
        this._supressProgress = false;
        hideProgressView();
        if (i > 0) {
            hideEmptyStateView();
            refreshAssetsListViewVisualLayout();
            if (this._containerIsVisibleRunning && this._dataLoaded) {
                this._currentAssetsViewController.refreshDueToNewItemsInsertion();
            } else {
                refreshCurrentListViewController();
            }
            this._dataLoaded = true;
        } else if (getDataSource().getCount() == 0) {
            this._dataLoaded = false;
            showEmptyAssetsStateView();
        }
        checkMultiSelectionState();
    }

    private void checkMultiSelectionState() {
        if (this._selectionBottomBarView != null && this._selectionBottomBarView.getVisibility() == 4 && getAssetSelectionCount() > 0) {
            this._selectionBottomBarView.setVisibility(0);
        }
    }

    protected void ds_handleLoadDataErrorShowEmptyAssetsView() {
        this._dataLoaded = false;
        showEmptyAssetsStateView();
    }

    protected void stopRefreshAnimationOnCurrentListController() {
        if (this._currentAssetsViewController != null) {
            this._currentAssetsViewController.stopRefreshAnimation();
        }
    }

    protected void ds_handleLoadDataErrorCommon() {
        this._supressProgress = false;
        hideProgressView();
        stopRefreshAnimationOnCurrentListController();
    }

    protected void ds_didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException) {
        ds_handleLoadDataErrorCommon();
        if (adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorOffline || !AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
            wentOffline(true);
        } else if (adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorTimeout) {
            showCloudNotReachable();
        }
    }

    protected void ds_didFilterResults() {
        refreshCurrentListViewController();
    }

    protected void ds_didClearFilterString() {
        showEmptySearchView();
        refreshCurrentListViewController();
    }

    protected void showEmptySearchView() {
    }

    public class AssetsViewContainerInstanceState {
        public int _dataSourceCount;
        public int orientation;

        protected AssetsViewContainerInstanceState() {
        }
    }

    protected boolean isSearchBarOpened() {
        return this._searchBarOpened;
    }

    protected void hideCollaborationAndNotificationIcon() {
    }

    protected void showCollaborationAndNotificationIcon() {
    }

    protected void hideFab() {
    }

    protected void showFab() {
    }

    public class AssetsViewBaseActionBarController {
        private final String EMPTY_STRING = "";
        private String _lastSearchString = "";
        protected MenuItem _myAccountMenuItem;
        private boolean _restoreActionBar;
        FragmentActionBarInstanceData _savedFragmentActionBarInstanceData;
        private MenuItem _searchIcon;

        protected AssetsViewBaseActionBarController() {
        }

        class FragmentActionBarInstanceData {
            public boolean isLastFilteredBySearch;
            public String lastSearchedText;

            FragmentActionBarInstanceData() {
            }
        }

        public void onCreateOptionsMenu(final Menu menu, MenuInflater menuInflater) {
            menuInflater.inflate(R.menu.adobe_assetview_common_menu, menu);
            this._myAccountMenuItem = menu.findItem(R.id.adobe_csdk_uxassetbrowser_sdk_common_menu_myaccount);
            this._myAccountMenuItem.setVisible(shouldEnableMyAccountMenu());
            AssetViewFragment.this._uploadTasksMenuItem = menu.findItem(R.id.adobe_csdk_asset_browser_adobe_upload_tasks);
            this._searchIcon = menu.findItem(R.id.adobe_csdk_common_search);
            if (!Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(AssetViewFragment.this.getContext())).booleanValue()) {
                this._searchIcon.setIcon(AssetViewFragment.this.getResources().getDrawable(R.drawable.ic_search_black_24dp));
            }
            final SearchView searchView = (SearchView) MenuItemCompat.getActionView(this._searchIcon);
            final View viewFindViewById = searchView.findViewById(R.id.search_plate);
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundResource(R.drawable.search_box_appearance);
            }
            final EditText editText = (EditText) searchView.findViewById(R.id.search_src_text);
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController.1
                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view, boolean z) {
                    if (!z) {
                        ((InputMethodManager) AssetViewFragment.this.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
                    }
                }
            });
            editText.setOnKeyListener(new View.OnKeyListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController.2
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i, KeyEvent keyEvent) {
                    if (i == 111) {
                        AssetViewFragment.this.closeSearchBarIfOpen();
                        return false;
                    }
                    return false;
                }
            });
            MenuItemCompat.setOnActionExpandListener(this._searchIcon, new MenuItemCompat.OnActionExpandListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController.3
                @Override // android.support.v4.view.MenuItemCompat.OnActionExpandListener
                public boolean onMenuItemActionExpand(MenuItem menuItem) {
                    AssetViewFragment.this._searchBarOpened = true;
                    if (AssetViewFragment.this.isContainerShowingRootCollection()) {
                        editText.requestFocus();
                    }
                    AssetViewFragment.this.hideMenuItemsUtil(menu);
                    AssetViewFragment.this.hideFab();
                    AssetViewFragment.this.hideCollaborationAndNotificationIcon();
                    return true;
                }

                @Override // android.support.v4.view.MenuItemCompat.OnActionExpandListener
                public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                    if ((AssetViewFragment.this._searchBarOpened && AssetViewFragment.this.isContainerShowingRootCollection()) || AssetViewFragment.this._searchBarOpened) {
                        AssetViewFragment.this._searchBarOpened = false;
                    }
                    AssetViewFragment.this.showMenuItemsUtil(menu);
                    AssetViewFragment.this.showFab();
                    AssetViewFragment.this.showCollaborationAndNotificationIcon();
                    searchView.setQuery("", false);
                    searchView.setIconified(false);
                    return true;
                }
            });
            final FragmentActivity activity = AssetViewFragment.this.getActivity();
            SearchView.OnQueryTextListener onQueryTextListener = new SearchView.OnQueryTextListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController.4
                @Override // android.support.v7.widget.SearchView.OnQueryTextListener
                public boolean onQueryTextChange(String str) {
                    if (str == null || !str.equalsIgnoreCase(AssetsViewBaseActionBarController.this._lastSearchString)) {
                        AssetsViewBaseActionBarController.this._lastSearchString = str;
                        AssetViewFragment.this.handleSearchFunctionality(str);
                        return true;
                    }
                    return false;
                }

                @Override // android.support.v7.widget.SearchView.OnQueryTextListener
                public boolean onQueryTextSubmit(String str) {
                    InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
                    View currentFocus = activity.getCurrentFocus();
                    if (currentFocus != null) {
                        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
                    }
                    AssetViewFragment.this._mainContentView.requestFocus();
                    return true;
                }
            };
            if (editText != null) {
                try {
                    editText.setTypeface(AdobeCSDKTypeFace.getTypeface(AssetViewFragment.this.getActivity()));
                    editText.setTextColor(AssetViewFragment.this.getResources().getColor(R.color.adobe_csdk_asset_browser_dark_text));
                    editText.setTextSize(21.0f);
                    editText.addTextChangedListener(new TextWatcher() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController.5
                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                            if (viewFindViewById != null) {
                                if (!editable.toString().equals("")) {
                                    viewFindViewById.setBackgroundResource(R.drawable.search_box_appearance_query);
                                } else {
                                    viewFindViewById.setBackgroundResource(R.drawable.search_box_appearance);
                                }
                            }
                        }
                    });
                } catch (ClassNotFoundException e2) {
                    e2.printStackTrace();
                } catch (IllegalAccessException e3) {
                    e3.printStackTrace();
                } catch (NoSuchMethodException e4) {
                    e4.printStackTrace();
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                }
            }
            Class<?> cls = Class.forName("android.widget.SearchView$SearchAutoComplete");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("");
            spannableStringBuilder.append((CharSequence) AssetViewFragment.this.getAdobeFormattedString(AssetViewFragment.this.getResources().getString(R.string.adobe_csdk_search_query_hint)));
            spannableStringBuilder.setSpan(new ForegroundColorSpan(AssetViewFragment.this.getResources().getColor(R.color.adobe_csdk_asset_browser_light_text)), 0, spannableStringBuilder.length(), 33);
            cls.getMethod("setHint", CharSequence.class).invoke(editText, spannableStringBuilder);
            searchView.setOnQueryTextListener(onQueryTextListener);
        }

        public void onPrepareOptionsMenu(Menu menu) {
            this._myAccountMenuItem.setTitle(AdobeAssetViewUtils.getAdobeFontFormattedString(AssetViewFragment.this.getResources().getString(R.string.adobe_csdk_uxassetbrowser_sdk_myaccount), AssetViewFragment.this.getActivity()));
            this._myAccountMenuItem.setVisible(shouldEnableMyAccountMenu());
            showOrHideUploadMenuItem();
            if (AssetViewFragment.this.getAssetsMainRootFrame() != null) {
                this._searchIcon = menu.findItem(R.id.adobe_csdk_common_search);
                boolean z = AssetViewFragment.this._isRestoredFragment || this._restoreActionBar;
                boolean zIsActionViewExpanded = MenuItemCompat.isActionViewExpanded(this._searchIcon);
                if (!zIsActionViewExpanded && z && this._savedFragmentActionBarInstanceData == null) {
                    AssetViewFragment.this._searchBarOpened = false;
                }
                refreshOptionItems();
                if (z) {
                    restoreFragmentActionBarFromSavedData();
                    this._restoreActionBar = false;
                } else if (zIsActionViewExpanded) {
                    MenuItemCompat.collapseActionView(this._searchIcon);
                }
                if (!AssetViewFragment.this._searchBarOpened) {
                    if (AssetViewFragment.this.isNetworkOnline()) {
                        AssetViewFragment.this.showFab();
                    } else {
                        AssetViewFragment.this.hideFab();
                    }
                }
            }
        }

        public void closeSearchViewIfOpen() {
            if (this._searchIcon != null && MenuItemCompat.isActionViewExpanded(this._searchIcon)) {
                MenuItemCompat.collapseActionView(this._searchIcon);
            }
        }

        protected void restoreFragmentActionBarFromSavedData() {
            if (this._savedFragmentActionBarInstanceData != null) {
                SearchView searchView = (SearchView) MenuItemCompat.getActionView(this._searchIcon);
                searchView.setIconified(!this._savedFragmentActionBarInstanceData.isLastFilteredBySearch);
                if (this._savedFragmentActionBarInstanceData.isLastFilteredBySearch) {
                    MenuItemCompat.expandActionView(this._searchIcon);
                    searchView.setQuery(this._savedFragmentActionBarInstanceData.lastSearchedText, false);
                }
                this._savedFragmentActionBarInstanceData = null;
            }
        }

        protected boolean shouldEnableMyAccountMenu() {
            return !AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(AssetViewFragment.this.getHostActivity()) && AdobeCSDKInternalClientsPreferences.hasClientPreferenceToEnableMyAccountOption();
        }

        public void handleCurrentNetworkStatus(boolean z) {
            if (this._searchIcon != null) {
                this._searchIcon.setVisible(z);
            }
        }

        public void handlePostOnCreate(Bundle bundle) {
            if (this._savedFragmentActionBarInstanceData == null && bundle.containsKey("SEARCH_TEXT")) {
                this._restoreActionBar = true;
                this._lastSearchString = bundle.getString("SEARCH_TEXT");
                saveActionBarInstanceState();
                this._lastSearchString = "";
            }
        }

        protected boolean handleOptionItemSelect(int i) {
            if (i == R.id.adobe_csdk_uxassetbrowser_sdk_common_menu_myaccount) {
                AssetViewFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_SHOW_MY_ACCOUNT, null);
                return true;
            }
            if (i == R.id.adobe_csdk_common_search) {
                AdobeAnalyticsSDKReporter.trackAssetBrowserAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsSearchButtonTapped);
                AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticSearchBarTapped, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController.6
                    {
                        put(AdobeAnalyticsSDKReporter.AnalyticArea, "browser");
                        put("type", "assets");
                        put(AdobeAnalyticsSDKReporter.AnalyticAction, "searchBarTapped");
                    }
                }, null);
                new AdobeAnalyticsETSAssetBrowserSearchEvent(AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_CC_FILE).endAndTrackEvent();
                ((SearchView) MenuItemCompat.getActionView(this._searchIcon)).setOnSearchClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController.7
                    private boolean extended = false;

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (!this.extended) {
                            this.extended = true;
                            view.getLayoutParams().width = -1;
                        }
                    }
                });
                return true;
            }
            if (i == R.id.adobe_csdk_asset_browser_adobe_upload_tasks) {
                AssetViewFragment.this.startActivity(new Intent(AssetViewFragment.this.getContext(), (Class<?>) AdobeShowUploadTasksActivity.class));
            }
            return false;
        }

        public boolean onOptionsItemSelected(MenuItem menuItem) {
            return handleOptionItemSelect(menuItem.getItemId());
        }

        public void refreshOptionItems() {
            if (this._searchIcon != null) {
                this._searchIcon.setVisible(AssetViewFragment.this.isAssetsMainFrameVisible());
            }
        }

        public void refreshEditMenuItems() {
        }

        public void showOrHideUploadMenuItem() {
            if (AssetViewFragment.this._uploadTasksMenuItem != null) {
                if (!AdobeUploadManager.showLastUploads) {
                    AssetViewFragment.this._uploadTasksMenuItem.setVisible(false);
                } else {
                    AdobeUploadManager.showLastUploads = true;
                    AssetViewFragment.this._uploadTasksMenuItem.setVisible(true);
                }
            }
        }

        public void handleOnStart() {
        }

        public void saveActionBarInstanceState() {
            this._savedFragmentActionBarInstanceData = new FragmentActionBarInstanceData();
            this._savedFragmentActionBarInstanceData.isLastFilteredBySearch = !this._lastSearchString.equalsIgnoreCase("");
            this._savedFragmentActionBarInstanceData.lastSearchedText = this._lastSearchString;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNotificationCount(final int i) {
        if (this._notificationCountTextView != null) {
            if (this._assetViewConfiguration.getCloud() == null || !this._assetViewConfiguration.getCloud().isPrivateCloud()) {
                AdobeUxUtilMainUIThreadHandler.getHandler().post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i == 0) {
                            AssetViewFragment.this._notificationCountTextView.setVisibility(4);
                        } else {
                            AssetViewFragment.this._notificationCountTextView.setVisibility(0);
                            AssetViewFragment.this._notificationCountTextView.setText("" + i);
                        }
                    }
                });
            }
        }
    }

    public class AdobeCCActionBarController extends AssetsViewBaseActionBarController {
        protected AdobeCCActionBarController() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            menuInflater.inflate(R.menu.adobe_loki_notification_menu, menu);
            AssetViewFragment.this._notificationMenuItem = menu.findItem(R.id.adobe_notification_bell);
            AssetViewFragment.this._notificationView = AssetViewFragment.this.getLayoutInflater(null).inflate(R.layout.adobe_notification_icon_view, (ViewGroup) null);
            AssetViewFragment.this._notificationIcon = (ImageView) AssetViewFragment.this._notificationView.findViewById(R.id.adobe_csdk_notification_icon);
            AssetViewFragment.this._notificationCountTextView = (TextView) AssetViewFragment.this._notificationView.findViewById(R.id.adobe_csdk_notification_count);
            if (AssetViewFragment.this._assetViewConfiguration.getCloud() != null && AssetViewFragment.this._assetViewConfiguration.getCloud().isPrivateCloud()) {
                AssetViewFragment.this._notificationMenuItem.setVisible(false);
                AssetViewFragment.this._notificationIcon.setImageResource(R.drawable.ic_notif_black_24dp_disabled);
                AssetViewFragment.this._notificationView.setEnabled(false);
                if (AssetViewFragment.this._notificationCountTextView != null) {
                    AssetViewFragment.this._notificationCountTextView.setVisibility(4);
                }
            }
            if (!AssetViewFragment.this.isContainerShowingRootCollection()) {
                AssetViewFragment.this._notificationMenuItem.setVisible(false);
            }
            super.onCreateOptionsMenu(menu, menuInflater);
        }

        private void refreshOptionsInternal() {
            AdobeNotificationManager notificationManager = AdobeNotificationManager.getNotificationManager();
            if (notificationManager != null) {
                AssetViewFragment.this.setNotificationCount(notificationManager.getUnreadCount());
            }
            if (AssetViewFragment.this._notificationView != null) {
                AssetViewFragment.this._notificationMenuItem.setActionView(AssetViewFragment.this._notificationView);
                AssetViewFragment.this._notificationView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AdobeCCActionBarController.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AssetViewFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_NOTIFICATION, null);
                    }
                });
            }
            if (AssetViewFragment.this._notificationMenuItem != null) {
                if (!AssetViewFragment.this.isNetworkOnline() || (AssetViewFragment.this._assetViewConfiguration.getCloud() != null && AssetViewFragment.this._assetViewConfiguration.getCloud().isPrivateCloud())) {
                    AssetViewFragment.this._notificationMenuItem.setVisible(false);
                }
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
            super.refreshOptionItems();
            refreshOptionsInternal();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            super.onPrepareOptionsMenu(menu);
            refreshOptionsInternal();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected boolean handleOptionItemSelect(int i) {
            if (i != R.id.adobe_csdk_asset_browser_adobe_notification) {
                return super.handleOptionItemSelect(i);
            }
            AssetViewFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_NOTIFICATION, null);
            return true;
        }
    }

    class UploadSummaryBanner {
        public TextView bannerTitle;
        public View bannerView;

        UploadSummaryBanner() {
        }
    }
}
