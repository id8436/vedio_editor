package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.R;
import android.app.ProgressDialog;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.internal.DragDrop.UploadDragDropEventListener;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEditOperationsEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationException;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationRemoveCollaboratorCallback;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationDataModel;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeAssetEditActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeAssetViewEditActivityConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeAssetViewEditFragmentExtraConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeAssetViewEditSelectedAssetsController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditOperation;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeAssetType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.IAdobeLongClickHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.CreativeSDKTextView;
import com.adobe.creativesdk.foundation.internal.utils.coachmarks.IAdobeCoachMarksProvider;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.getbase.floatingactionbutton.FloatingActionButton;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.getbase.floatingactionbutton.h;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class CCFilesWithUploadFragment extends CCFilesFragment {
    public static final int EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE = 0;
    private static String T = CCFilesWithUploadFragment.class.getSimpleName();
    IAdobeAssetViewBrowserFragmentExtraControlsHostActivity _adobeAssetViewBrowserFragmentExtraControls;
    protected View _alphaPane;
    private Menu _assetBrowserMenu;
    private Menu _ccFilesMenu;
    private Observer _ccfilesEditProgressObserver;
    private Observer _ccfilesUploadObserver;
    private Observer _collaborationVisibilityObserver;
    private MenuItem _collaboratorMenuItem;
    private FloatingActionButton _createFolderFAB;
    private ProgressDialog _editProgressDialogBar;
    private EditSummaryBanner _editSummaryBanner;
    protected FloatingActionsMenu _floatingActionsMenu;
    private ProgressBar _folderLoadingProgressBar;
    private MenuItem _leaveFolderMenuItem;
    private ImageButton _moveButton;
    private TextView _notificationCountTextView;
    private ImageView _notificationIcon;
    private MenuItem _notificationMenuItem;
    private View _notificationView;
    private ProgressBar _progressBar;
    private FloatingActionButton _takePhotoFAB;
    private UploadDetails _uploadDetails;
    private FloatingActionButton _uploadFAB;
    private FloatingActionButton _uploadImagesFAB;
    protected CCFilesEditCommandsHandler ccFilesEditCommandsHandler;
    private Handler handler;
    private boolean requestMade;
    private boolean _editMode = false;
    private boolean _editDialogVisible = false;
    private boolean _showNoFiles = true;
    private boolean isCurrentFolderOwner = false;

    class UploadDetails {
        public boolean isAnyUploadInProgress;
        public AdobeUploadSession<AdobeAssetFolder> uploadSession;

        UploadDetails() {
        }
    }

    private void createFolderLoadingProgressBar() {
        this._folderLoadingProgressBar = new ProgressBar(getHostActivity(), null, R.attr.progressBarStyleHorizontal);
        this._folderLoadingProgressBar.setProgressDrawable(getResources().getDrawable(com.adobe.creativesdk.foundation.assetux.R.drawable.asset_edit_progress_bar));
        this._folderLoadingProgressBar.setVisibility(8);
        this._folderLoadingProgressBar.setIndeterminateDrawable(getResources().getDrawable(com.adobe.creativesdk.foundation.assetux.R.drawable.asset_edit_progress_bar));
        this._folderLoadingProgressBar.setIndeterminate(false);
        this._folderLoadingProgressBar.setMax(100);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getPixelsFromDP(getResources().getDimension(com.adobe.creativesdk.foundation.assetux.R.dimen.adobe_csdk_asset_edit_move_progress_bar_size)));
        this._folderLoadingProgressBar.setProgress(0);
        layoutParams.addRule(10);
        this._folderLoadingProgressBar.setLayoutParams(layoutParams);
        getMainRootView().addView(this._folderLoadingProgressBar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void leaveFolder(final boolean z) {
        AdobeRemoveMyselfDialogFragment adobeRemoveMyselfDialogFragment = new AdobeRemoveMyselfDialogFragment();
        adobeRemoveMyselfDialogFragment.setFragmentCallback(new IAdobeAlertDialogFragmentCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAlertDialogFragmentCallback
            public void handlePositiveButtonClick() {
                CCFilesWithUploadFragment.this.showProgressView();
                CCFilesWithUploadFragment.this.setAssetMainRootFrameVisibility(false);
                AdobeCollaborationSession sharedSession = AdobeCollaborationSession.getSharedSession();
                String adobeID = AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
                final FragmentActivity activity = CCFilesWithUploadFragment.this.getActivity();
                sharedSession.removeCollaborator(CCFilesWithUploadFragment.this.getTargetCollection().getHref().toString(), adobeID, new IAdobeCollaborationRemoveCollaboratorCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.1.1
                    @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationRemoveCollaboratorCallback
                    public void onComplete() {
                        CCFilesWithUploadFragment.this.hideProgressView();
                        CCFilesWithUploadFragment.this.setAssetMainRootFrameVisibility(true);
                        if (z) {
                            CCFilesWithUploadFragment.this.getFragmentManager().popBackStack();
                        }
                        Toast.makeText(activity, com.adobe.creativesdk.foundation.assetux.R.string.IDS_COLLABORATOR_LEAVE_FOLDER_SUCCESS_MESSAGE, 1).show();
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationErrorCallback
                    public void onError(AdobeCollaborationException adobeCollaborationException) {
                        Toast.makeText(activity, com.adobe.creativesdk.foundation.assetux.R.string.IDS_COLLABORATOR_LEAVE_FOLDER_FAILURE_MESSAGE, 1).show();
                    }
                });
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAlertDialogFragmentCallback
            public void handleNegativeButtonClick() {
            }
        });
        adobeRemoveMyselfDialogFragment.show(getFragmentManager(), "Leave Folder Alert");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void leaveFolder(final boolean z, final String str) {
        AdobeRemoveMyselfDialogFragment adobeRemoveMyselfDialogFragment = new AdobeRemoveMyselfDialogFragment();
        adobeRemoveMyselfDialogFragment.setFragmentCallback(new IAdobeAlertDialogFragmentCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.2
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAlertDialogFragmentCallback
            public void handlePositiveButtonClick() {
                CCFilesWithUploadFragment.this.showProgressView();
                CCFilesWithUploadFragment.this.setAssetMainRootFrameVisibility(false);
                AdobeCollaborationSession sharedSession = AdobeCollaborationSession.getSharedSession();
                String adobeID = AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
                final FragmentActivity activity = CCFilesWithUploadFragment.this.getActivity();
                sharedSession.removeCollaborator(str, adobeID, new IAdobeCollaborationRemoveCollaboratorCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.2.1
                    @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationRemoveCollaboratorCallback
                    public void onComplete() {
                        CCFilesWithUploadFragment.this.hideProgressView();
                        CCFilesWithUploadFragment.this.setAssetMainRootFrameVisibility(true);
                        if (z) {
                            CCFilesWithUploadFragment.this.getFragmentManager().popBackStack();
                        }
                        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ASSETVIEW_BROWSER_CCFILES_FORCE_REFRESH_LIST);
                        Toast.makeText(activity, com.adobe.creativesdk.foundation.assetux.R.string.IDS_COLLABORATOR_LEAVE_FOLDER_SUCCESS_MESSAGE, 1).show();
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationErrorCallback
                    public void onError(AdobeCollaborationException adobeCollaborationException) {
                        Toast.makeText(activity, com.adobe.creativesdk.foundation.assetux.R.string.IDS_COLLABORATOR_LEAVE_FOLDER_FAILURE_MESSAGE, 1).show();
                    }
                });
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAlertDialogFragmentCallback
            public void handleNegativeButtonClick() {
            }
        });
        adobeRemoveMyselfDialogFragment.show(getFragmentManager(), "Leave Folder Alert");
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this._ccfilesUploadObserver == null) {
            this._ccfilesUploadObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.3
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AdobeNotification adobeNotification = (AdobeNotification) obj;
                    AdobeUploadSession<AdobeAssetFolder> adobeUploadSession = (AdobeUploadSession) adobeNotification.getInfo().get(AdobeUploadManager.UPLOAD_SESSION_KEY);
                    if ((adobeUploadSession.getDestinationFolder() instanceof AdobeAssetFolder) && CCFilesWithUploadFragment.this.getTargetCollection().isSameLocation((AdobeAssetFolder) adobeUploadSession.getDestinationFolder())) {
                        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted) {
                            CCFilesWithUploadFragment.this.upload_handleUploadStartedNotification(adobeUploadSession);
                        } else if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete) {
                            CCFilesWithUploadFragment.this.upload_handleUploadCompleteNotification(adobeUploadSession);
                        } else if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled) {
                            CCFilesWithUploadFragment.this.upload_handleUploadCancelledNotification(adobeUploadSession);
                        }
                    }
                }
            };
        }
        new ReusableImageBitmapCache.ImageCacheParams().setMemCacheSizePercent(0.1f);
        this.ccFilesEditCommandsHandler = getEditCommandsHandler();
        this.handler = new Handler();
    }

    protected CCFilesEditCommandsHandler getEditCommandsHandler() {
        return new CCFilesEditCommandsHandler();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        AdobeCSDKActionBarController.setVisible(getActivity().findViewById(R.id.content), true);
        KeyEvent.Callback hostActivity = getHostActivity();
        setVisibilityTab(!(hostActivity instanceof IAdobeAssetViewBrowserFragmentHostActivity ? ((IAdobeAssetViewBrowserFragmentHostActivity) hostActivity).isCollaborationFrameVisible() : false));
        if (!(getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity)) {
            this.ccFilesEditCommandsHandler.onStart();
            if (AdobeCCFilesEditManager.hasEditStarted()) {
                action_editStarted();
            }
            if (!AdobeCCFilesEditManager.hasEditCompletionHandled()) {
                action_editCompleted();
            }
        }
        if (AdobeCCFilesEditManager.isEditInProgress() && this._progressBar != null) {
            setEditProgress(AdobeCCFilesEditManager.getProgressValue());
        }
        if (!AdobeUploadManager._isFileUploadCompleteNotificationHandled) {
            setUploadInProgress(false);
            cleanUpUploadRelatedSetup();
            AdobeUploadManager._isFileUploadCompleteNotificationHandled = true;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void collapseFloatingActionMenu() {
        AdobeCSDKActionBarController.setVisible(getActivity().findViewById(R.id.content), true);
        setVisibilityTab(true);
        if (this._floatingActionsMenu != null) {
            this._floatingActionsMenu.a();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (!(getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity)) {
            this.ccFilesEditCommandsHandler.onStop();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleLongClickOnAsset(Object obj) {
        if ((getActivity() instanceof IAdobeLongClickHandler) && !AdobeCCFilesEditManager.isEditInProgress() && isNetworkOnline()) {
            ((IAdobeLongClickHandler) getActivity()).handleLongClick(obj, AdobeAssetType.ADOBE_ASSET_TYPE_FILE, this._assetViewConfiguration);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
        if ((getActivity() instanceof IAdobeLongClickHandler) && !AdobeCCFilesEditManager.isEditInProgress() && isNetworkOnline()) {
            ((IAdobeLongClickHandler) getActivity()).handlePopupClick(obj, this._assetViewConfiguration, view, AdobeAssetType.ADOBE_ASSET_TYPE_FILE);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected void ds_startedLoadingMoreFolders() {
        if (this._folderLoadingProgressBar != null) {
            this._folderLoadingProgressBar.setVisibility(0);
            this._folderLoadingProgressBar.setIndeterminate(true);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected void ds_stoppedLoadingMoreFolders() {
        if (this._folderLoadingProgressBar != null) {
            this._folderLoadingProgressBar.setIndeterminate(false);
            this._folderLoadingProgressBar.setProgress(100);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected int getEmptyStateViewId() {
        setFabNotAdded(true);
        return com.adobe.creativesdk.foundation.assetux.R.layout.adobe_storage_assetbrowser_empty_state_view;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void addFabToRootView() {
        if (Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext())).booleanValue() && !(getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity)) {
            RelativeLayout relativeLayout = (RelativeLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(com.adobe.creativesdk.foundation.assetux.R.layout.files_floating_menu, (ViewGroup) null);
            this._floatingActionsMenu = (FloatingActionsMenu) relativeLayout.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_files_uploadFAB);
            this._uploadFAB = (FloatingActionButton) relativeLayout.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_files_uploadAction);
            this._takePhotoFAB = (FloatingActionButton) relativeLayout.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_files_takePhoto);
            this._createFolderFAB = (FloatingActionButton) relativeLayout.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_files_createFolder);
            this._uploadImagesFAB = (FloatingActionButton) relativeLayout.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_files_uploadImages);
            this._alphaPane = relativeLayout.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_files_alpha_pane);
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
    protected void handlePostOnCreateView(Bundle bundle) {
        super.handlePostOnCreateView(bundle);
        this._notificationView = getLayoutInflater(null).inflate(com.adobe.creativesdk.foundation.assetux.R.layout.adobe_notification_icon_view, (ViewGroup) null);
        this._notificationIcon = (ImageView) this._notificationView.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_notification_icon);
        this._notificationCountTextView = (TextView) this._notificationView.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_notification_count);
        if (!this._isReadOnly) {
            addFabToRootView();
        }
        if (this._assetViewConfiguration.getCloud() != null && this._assetViewConfiguration.getCloud().isPrivateCloud()) {
            this._notificationIcon.setImageResource(com.adobe.creativesdk.foundation.assetux.R.drawable.ic_notif_black_24dp_disabled);
            this._notificationView.setEnabled(false);
            if (this._notificationCountTextView != null) {
                this._notificationCountTextView.setVisibility(4);
            }
        }
        checkAndPrepareforAnyUploadsInContainer();
        this._progressBar = new ProgressBar(getHostActivity(), null, R.attr.progressBarStyleHorizontal);
        this._progressBar.setProgressDrawable(getResources().getDrawable(com.adobe.creativesdk.foundation.assetux.R.drawable.asset_edit_progress_bar));
        this._progressBar.setVisibility(8);
        this._progressBar.setIndeterminateDrawable(getResources().getDrawable(com.adobe.creativesdk.foundation.assetux.R.drawable.asset_edit_progress_bar));
        this._progressBar.setIndeterminate(false);
        this._progressBar.setMax(100);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getPixelsFromDP(getResources().getDimension(com.adobe.creativesdk.foundation.assetux.R.dimen.adobe_csdk_asset_edit_progress_bar_size)));
        this._progressBar.setProgress(0);
        layoutParams.addRule(10);
        this._progressBar.setLayoutParams(layoutParams);
        getMainRootView().addView(this._progressBar);
        AdobeCollaborationType collaborationType = getTargetCollection().getCollaborationType();
        boolean z = collaborationType == null || collaborationType == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDBYUSER || collaborationType == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
        this.isCurrentFolderOwner = z;
        setDragDropEventListener();
    }

    private void setDragDropEventListener() {
        getMainRootView().setOnDragListener(new UploadDragDropEventListener(getTargetCollection(), UploadDragDropEventListener.ListenerType.ROOT, this));
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
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
        this._floatingActionsMenu.setOnFloatingActionsMenuUpdateListener(new FileFloatingActionMenuHandler());
        this._alphaPane.setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                    case 1:
                        CCFilesWithUploadFragment.this._alphaPane.setVisibility(4);
                        CCFilesWithUploadFragment.this._floatingActionsMenu.a();
                        return true;
                    default:
                        return false;
                }
            }
        });
        FABClickListener fABClickListener = new FABClickListener();
        this._createFolderFAB.setOnClickListener(fABClickListener);
        this._uploadFAB.setOnClickListener(fABClickListener);
        this._takePhotoFAB.setOnClickListener(fABClickListener);
        this._uploadImagesFAB.setOnClickListener(fABClickListener);
        if (!isNetworkOnline() || this._isReadOnly) {
            this._floatingActionsMenu.setVisibility(8);
        } else {
            this._floatingActionsMenu.setVisibility(0);
        }
    }

    class FileFloatingActionMenuHandler implements h {
        private boolean editOpsAllowed;
        private boolean isUploadInProgress;

        private FileFloatingActionMenuHandler() {
        }

        @Override // com.getbase.floatingactionbutton.h
        public void onMenuExpanded() {
            AdobeCSDKActionBarController.setVisible(CCFilesWithUploadFragment.this.getActivity().findViewById(R.id.content), false);
            CCFilesWithUploadFragment.this.setVisibilityTab(false);
            this.editOpsAllowed = !CCFilesWithUploadFragment.this._isReadOnly;
            this.isUploadInProgress = CCFilesWithUploadFragment.this.isAnyUploadInProgress();
            if (!CCFilesWithUploadFragment.this.isNetworkOnline()) {
                CCFilesWithUploadFragment.this._takePhotoFAB.setVisibility(8);
                CCFilesWithUploadFragment.this._createFolderFAB.setVisibility(8);
                CCFilesWithUploadFragment.this._uploadFAB.setVisibility(8);
                CCFilesWithUploadFragment.this._uploadImagesFAB.setVisibility(8);
                return;
            }
            CCFilesWithUploadFragment.this._takePhotoFAB.setVisibility(0);
            CCFilesWithUploadFragment.this._createFolderFAB.setVisibility(0);
            CCFilesWithUploadFragment.this._uploadFAB.setVisibility(0);
            CCFilesWithUploadFragment.this._uploadImagesFAB.setVisibility(0);
            CCFilesWithUploadFragment.this._alphaPane.setVisibility(0);
            if (this.isUploadInProgress) {
                CCFilesWithUploadFragment.this._uploadFAB.setTitle(CCFilesWithUploadFragment.this.getHostActivity().getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_CANCEL_UPLOAD_ASSET_BROWSER_BUTTON));
            } else {
                CCFilesWithUploadFragment.this._uploadFAB.setTitle(CCFilesWithUploadFragment.this.getHostActivity().getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_UPLOAD_ASSET_BROWSER_BUTTON));
            }
            if (this.isUploadInProgress || !this.editOpsAllowed) {
                CCFilesWithUploadFragment.this._createFolderFAB.setVisibility(8);
                CCFilesWithUploadFragment.this._takePhotoFAB.setVisibility(8);
                CCFilesWithUploadFragment.this._uploadImagesFAB.setVisibility(8);
            } else {
                CCFilesWithUploadFragment.this._createFolderFAB.setVisibility(0);
                CCFilesWithUploadFragment.this._takePhotoFAB.setVisibility(0);
                CCFilesWithUploadFragment.this._uploadImagesFAB.setVisibility(0);
            }
            if (!AdobeAssetViewUtils.deviceHasCameraFeature(CCFilesWithUploadFragment.this.getHostActivity())) {
                CCFilesWithUploadFragment.this._takePhotoFAB.setVisibility(8);
            }
        }

        @Override // com.getbase.floatingactionbutton.h
        public void onMenuCollapsed() {
            AdobeCSDKActionBarController.setVisible(CCFilesWithUploadFragment.this.getActivity().findViewById(R.id.content), true);
            KeyEvent.Callback hostActivity = CCFilesWithUploadFragment.this.getHostActivity();
            CCFilesWithUploadFragment.this.setVisibilityTab(hostActivity instanceof IAdobeAssetViewBrowserFragmentHostActivity ? ((IAdobeAssetViewBrowserFragmentHostActivity) hostActivity).isCollaborationFrameVisible() : false ? false : true);
            CCFilesWithUploadFragment.this._alphaPane.setVisibility(4);
        }
    }

    class FABClickListener implements View.OnClickListener {
        private FABClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == CCFilesWithUploadFragment.this._createFolderFAB.getId()) {
                CCFilesWithUploadFragment.this.handleCreateNewFolderButtonClick();
            } else if (view.getId() == CCFilesWithUploadFragment.this._uploadFAB.getId()) {
                if (CCFilesWithUploadFragment.this.isAnyUploadInProgress()) {
                    CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_CANCEL_UPLOAD, CCFilesWithUploadFragment.this.getTargetCollection());
                } else if (ContextCompat.checkSelfPermission(CCFilesWithUploadFragment.this.getActivity(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                    CCFilesWithUploadFragment.this.requestMade = true;
                    CCFilesWithUploadFragment.this.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
                } else {
                    CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_UPLOAD_FILES, CCFilesWithUploadFragment.this.getTargetCollection());
                }
            } else if (view.getId() != CCFilesWithUploadFragment.this._takePhotoFAB.getId()) {
                if (view.getId() == CCFilesWithUploadFragment.this._uploadImagesFAB.getId()) {
                    if (CCFilesWithUploadFragment.this.isAnyUploadInProgress()) {
                        CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_CANCEL_UPLOAD, CCFilesWithUploadFragment.this.getTargetCollection());
                    } else if (ContextCompat.checkSelfPermission(CCFilesWithUploadFragment.this.getActivity(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                        CCFilesWithUploadFragment.this.requestMade = true;
                        CCFilesWithUploadFragment.this.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
                    } else {
                        CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_UPLOAD_IMAGES, CCFilesWithUploadFragment.this.getTargetCollection());
                    }
                }
            } else {
                CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_UPLOAD_PHOTO_FROM_CAMERA, CCFilesWithUploadFragment.this.getTargetCollection());
            }
            CCFilesWithUploadFragment.this._floatingActionsMenu.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableCollaborationRelatedMenuItems() {
        this._collaboratorMenuItem.setVisible(false);
        this._leaveFolderMenuItem.setVisible(false);
    }

    private int getPixelsFromDP(float f2) {
        return Math.round(getHostActivity().getApplicationContext().getResources().getDisplayMetrics().density * f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEditProgress(double d2) {
        this._progressBar.setVisibility(0);
        this._progressBar.setProgress((int) (100.0d * d2));
    }

    protected void handleExtraConfigurations(AdobeAssetViewEditFragmentExtraConfiguration adobeAssetViewEditFragmentExtraConfiguration) {
        if (adobeAssetViewEditFragmentExtraConfiguration.getMoveButton()) {
            if (!(getHostActivity() instanceof AdobeAssetEditActivity) || ((AdobeAssetEditActivity) getHostActivity()).isMoveFragmentPresent()) {
                this._gridAssetsViewController.setMoveOperation(true);
                createFolderLoadingProgressBar();
                this._showNoFiles = false;
                if (!adobeAssetViewEditFragmentExtraConfiguration.shouldShowCreateNewFolder()) {
                    this._actionBarController = new CCFilesActionBarControllerWithEditControls(adobeAssetViewEditFragmentExtraConfiguration.getIsCopy());
                } else {
                    this._actionBarController = new CCFilesActionBarControllerWithShareControllers();
                }
                if (!isContainerShowingRootCollection()) {
                    AdobeCSDKActionBarController.setTitle(getActivity().findViewById(R.id.content), getTargetCollection().getName());
                } else {
                    AdobeCSDKActionBarController.setTitle(getActivity().findViewById(R.id.content), adobeAssetViewEditFragmentExtraConfiguration.getTitleForMainView());
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected AdobeStorageDataSource.DataSourceInternalFilters getInternalFilters() {
        if (getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity) {
            this._adobeAssetViewBrowserFragmentExtraControls = (IAdobeAssetViewBrowserFragmentExtraControlsHostActivity) getHostActivity();
            if (this._adobeAssetViewBrowserFragmentExtraControls.hasExtraControls() && this._adobeAssetViewBrowserFragmentExtraControls.getExtraConfiguration().shouldShowOnlyFolders()) {
                return AdobeStorageDataSource.DataSourceInternalFilters.FilterOnlyFolders;
            }
            return null;
        }
        return super.getInternalFilters();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void showCoachMarkForCellView(AssetBrowserCoachMarkData assetBrowserCoachMarkData) {
        String str;
        String string;
        String string2;
        View menuIconView;
        FragmentActivity activity = getActivity();
        if (activity != 0) {
            AssetListCellView cellView = assetBrowserCoachMarkData.getCellView();
            if (assetBrowserCoachMarkData.isScreenshotsFolder()) {
                str = "screenshots_folder";
                string = activity.getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_coach_mark_screenshot_folder_title);
                string2 = activity.getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_coach_mark_screenshot_folder_body);
                menuIconView = cellView.getRootView();
            } else {
                str = AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_ASSET;
                string = activity.getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_coach_mark_asset_title);
                string2 = activity.getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_coach_mark_asset_body);
                menuIconView = cellView.getMenuIconView();
            }
            if ((activity instanceof IAdobeCoachMarksProvider) && menuIconView != null) {
                ((IAdobeCoachMarksProvider) activity).showCoachMarks(activity, string, string2, activity.getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_coach_mark_common_footer), menuIconView, false, 0, null, str);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void hideCollaborationAndNotificationIcon() {
        if (this._collaboratorMenuItem != null) {
            disableCollaborationRelatedMenuItems();
        }
        if (this._notificationMenuItem != null) {
            this._notificationMenuItem.setVisible(false);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void showCollaborationAndNotificationIcon() {
        if (isContainerShowingRootCollection()) {
            this._notificationMenuItem.setVisible(!isSearchBarOpened());
            disableCollaborationRelatedMenuItems();
        }
        getActionBarController().refreshOptionItems();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handlePreOnStart() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    public void handleCurrentNetworkStatusWithUpload(boolean z) {
        if (isContainerShowingRootCollection()) {
            if (this._notificationMenuItem != null) {
                this._notificationMenuItem.setVisible(z);
            }
        } else if (this._collaboratorMenuItem != null) {
            this._collaboratorMenuItem.setVisible(z);
            handleLeaveFolderVisibility(z);
        }
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

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public Boolean isFloatingMenuExpanded() {
        return Boolean.valueOf(this._floatingActionsMenu != null && this._floatingActionsMenu.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLeaveFolderVisibility(boolean z) {
        this._leaveFolderMenuItem.setVisible(z && !isOwner());
    }

    private boolean isOwner() {
        return this.isCurrentFolderOwner;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleNetworkStatusChange(boolean z) {
        handleMoveButtonNetworkChange(z);
    }

    private void handleMoveButtonNetworkChange(boolean z) {
        if (this._moveButton != null) {
            this._moveButton.setEnabled(z);
            this._moveButton.setAlpha(z ? 1.0f : 0.4f);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getContainerNameForRoot() {
        return !(getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity) ? getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_cc_title) : getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_view_move_fragment_title);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected boolean isSearchBarOpened() {
        return super.isSearchBarOpened();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNotificationCount(final int i) {
        AdobeUxUtilMainUIThreadHandler.getHandler().post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.5
            @Override // java.lang.Runnable
            public void run() {
                if (i == 0 || CCFilesWithUploadFragment.this._assetViewConfiguration.getCloud().isPrivateCloud()) {
                    CCFilesWithUploadFragment.this._notificationCountTextView.setVisibility(4);
                } else {
                    CCFilesWithUploadFragment.this._notificationCountTextView.setVisibility(0);
                    CCFilesWithUploadFragment.this._notificationCountTextView.setText("" + i);
                }
            }
        });
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected void handleCollaborationVisibilty(boolean z) {
        boolean zIsSearchBarOpened = isSearchBarOpened();
        if (isContainerShowingRootCollection()) {
            this._notificationMenuItem.setVisible(zIsSearchBarOpened ? false : true);
            disableCollaborationRelatedMenuItems();
        } else {
            this._notificationMenuItem.setVisible(false);
            showCoachMarkForCollaboration(zIsSearchBarOpened ? false : true);
        }
    }

    private void showCoachMarkForCollaboration(boolean z) {
        if (getActivity() != null && z) {
        }
    }

    private void checkAndPrepareforAnyUploadsInContainer() {
        AdobeUploadSession<AdobeAssetFolder> uploadSessionOfEndPoint;
        if (this._uploadDetails == null && (uploadSessionOfEndPoint = AdobeUploadManager.getInstance(AdobeAssetFolder.class).getUploadSessionOfEndPoint(getTargetCollection())) != null && ((AdobeAssetFolder) uploadSessionOfEndPoint.getDestinationFolder()).getHref().equals(getTargetCollection().getHref())) {
            prepareForUploadInContainer(uploadSessionOfEndPoint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMoveButtonClick(boolean z) {
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(z ? AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_COPY_OPERATION : AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_MOVE_OPERATION, getTargetCollection().getHref().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleShareAdvanceButtonClick() {
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSET_VIEW_CC_SHARE_ADVANCE, getTargetCollection());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateNewFolderButtonClick() {
        AdobeAnalyticsSDKReporter.trackAction(AdobeAnalyticsSDKReporter.AnalyticCreateNewFolder, new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.6
            {
                put(AdobeAnalyticsSDKReporter.AnalyticArea, AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_OPERATIONS);
                put("type", "folder");
                put(AdobeAnalyticsSDKReporter.AnalyticAction, "create");
            }
        }, null);
        postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_CREATE_NEWFOLDER, getTargetCollection());
    }

    private void createEditSummaryView() {
        if (this._editSummaryBanner == null) {
            RelativeLayout relativeLayout = new RelativeLayout(getHostActivity());
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(com.adobe.creativesdk.foundation.assetux.R.dimen.adobe_csdk_theme_actionbar_size)));
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
            creativeSDKTextView.setTextSize(0, getResources().getDimension(com.adobe.creativesdk.foundation.assetux.R.dimen.adobe_csdk_assetbrowser_grid_text_size));
            relativeLayout.addView(creativeSDKTextView);
            this._editSummaryBanner = new EditSummaryBanner();
            this._editSummaryBanner.bannerTitle = creativeSDKTextView;
            this._editSummaryBanner.bannerView = relativeLayout;
            this._editSummaryBanner.bannerView.setVisibility(8);
            getMainRootView().addView(this._editSummaryBanner.bannerView);
        }
    }

    private void showEditSummaryBar(final AdobeCCFilesEditSession adobeCCFilesEditSession) {
        String str;
        String string;
        AdobeCCFilesEditSession.EditSummary editSummary = adobeCCFilesEditSession.getEditSummary();
        if (editSummary.hasMoveOperationInSameLocation()) {
            if (this._editProgressDialogBar != null) {
                this._editProgressDialogBar.dismiss();
            }
            if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_MOVE) {
                Toast.makeText(getHostActivity(), com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_move_error_same_location, 1).show();
                return;
            } else {
                Toast.makeText(getHostActivity(), com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_copy_error_same_location, 1).show();
                return;
            }
        }
        createEditSummaryView();
        int errorCount = editSummary.getErrorCount();
        String string2 = "";
        if (errorCount > 0) {
            this._editSummaryBanner.bannerView.setBackgroundResource(com.adobe.creativesdk.foundation.assetux.R.color.adobe_csdk_assetview_common_error_banner_background);
            if (errorCount == 1) {
                if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_RENAME) {
                    string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_EDIT_SINGLE_ERROR_MSG);
                } else if (editSummary.operation != AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE) {
                    string = "";
                } else {
                    string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_ARCHIVE_SINGLE_ERROR_MSG);
                }
                if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_DELETE) {
                    string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_DELETE_SINGLE_ERROR_MSG);
                } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_MOVE) {
                    string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_MOVE_SINGLE_ERROR_MSG);
                }
                if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_COPY) {
                    string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_COPY_SINGLE_ERROR_MSG);
                }
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_RENAME) {
                string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_EDIT_ERROR_MSG);
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE) {
                string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_ARCHIVE_MULTIPLE_ERROR_MSG);
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_DELETE) {
                string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_DELETE_ERROR_MSG);
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_MOVE) {
                string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_MOVE_ERROR_MSG);
            } else if (editSummary.operation != AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_COPY) {
                string = "";
            } else {
                string = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_COPY_MULTIPLE_ERROR_MSG);
            }
            str = String.format(string, Integer.toString(errorCount));
            this._editSummaryBanner.bannerView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_SHOW_ERROR_DETAILS, adobeCCFilesEditSession.getEditSummary());
                }
            });
        } else {
            if (this._progressBar != null) {
                this._progressBar.setVisibility(0);
                this._progressBar.setProgress(100);
            }
            this._editSummaryBanner.bannerView.setBackgroundResource(com.adobe.creativesdk.foundation.assetux.R.color.adobe_csdk_assetview_common_success_banner_background);
            if (editSummary.getSuccessCount() == 1) {
                if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_RENAME) {
                    string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_EDIT_SINGLE_SUCCESS_MSG);
                } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE) {
                    string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_ARCHIVE_SINGLE_SUCCESS_MSG);
                } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_DELETE) {
                    string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_DELETE_SINGLE_SUCCESS_MSG);
                } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_MOVE) {
                    string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_MOVE_SINGLE_SUCCESS_MSG);
                } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_COPY) {
                    string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_COPY_SINGLE_SUCCESS_MSG);
                }
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_RENAME) {
                string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_EDIT_SUCCESS_MSG);
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE) {
                string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_ARCHIVE_MULTIPLE_SUCCESS_MSG);
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_DELETE) {
                string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_DELETE_SUCCESS_MSG);
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_MOVE) {
                string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_MOVE_SUCCESS_MSG);
            } else if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_COPY) {
                string2 = getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_IDS_COPY_MULTIPLE_SUCCESS_MSG);
            }
            str = String.format(string2, Integer.toString(editSummary.getSuccessCount()));
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
        AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.8
            @Override // java.lang.Runnable
            public void run() {
                if (CCFilesWithUploadFragment.this._editSummaryBanner != null && CCFilesWithUploadFragment.this._editSummaryBanner.bannerView != null) {
                    CCFilesWithUploadFragment.this._editSummaryBanner.bannerView.setVisibility(8);
                }
            }
        }, 5000L);
    }

    private void prepareForUploadInContainer(AdobeUploadSession<AdobeAssetFolder> adobeUploadSession) {
        this._uploadDetails = new UploadDetails();
        this._uploadDetails.uploadSession = adobeUploadSession;
        this._uploadDetails.isAnyUploadInProgress = true;
        this._gridAssetsViewController.set_targetCollection(getTargetCollection());
        this._gridAssetsViewController.setUpListViewToTrackActiveUploads(adobeUploadSession);
        this._listAssetsViewController.set_targetCollection(getTargetCollection());
        this._listAssetsViewController.setUpListViewToTrackActiveUploads(adobeUploadSession);
    }

    protected void cleanUpUploadRelatedSetup() {
        this._gridAssetsViewController.cleanUpUploadRelatedSetup();
        this._listAssetsViewController.cleanUpUploadRelatedSetup();
        this._uploadDetails = null;
        reloadAssetItemsFromDataSourceDueToSwipeRefresh();
    }

    protected void setUploadInProgress(boolean z) {
        if (this._uploadDetails != null) {
            this._uploadDetails.isAnyUploadInProgress = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAnyUploadInProgress() {
        return this._uploadDetails != null && this._uploadDetails.isAnyUploadInProgress;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void hideEmptyStateView() {
        super.hideEmptyStateView();
    }

    protected void upload_handleUploadStartedNotification(AdobeUploadSession<AdobeAssetFolder> adobeUploadSession) {
        prepareForUploadInContainer(adobeUploadSession);
        setUploadInProgress(true);
        hideProgressView();
        hideEmptyStateView();
    }

    protected void upload_handleUploadCompleteNotification(AdobeUploadSession<AdobeAssetFolder> adobeUploadSession) {
        setUploadInProgress(false);
        cleanUpUploadRelatedSetup();
        showUploadSummaryBar(adobeUploadSession);
        AdobeUploadManager._isFileUploadCompleteNotificationHandled = true;
        KeyEvent.Callback activity = getActivity();
        if (activity != null && (activity instanceof IAdobeAssetViewBrowserFragmentHostActivity)) {
            ((IAdobeAssetViewBrowserFragmentHostActivity) activity).updateUploadCountForAppRater();
        }
    }

    protected void upload_handleUploadCancelledNotification(AdobeUploadSession<AdobeAssetFolder> adobeUploadSession) {
        setUploadInProgress(false);
        cleanUpUploadRelatedSetup();
        AdobeUploadManager._isFileUploadCompleteNotificationHandled = true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void reloadAssetItemsFromDataSourceDueToSwipeRefresh() {
        super.reloadAssetItemsFromDataSourceDueToSwipeRefresh();
        AdobeNotificationManager notificationManager = AdobeNotificationManager.getNotificationManager();
        if (notificationManager != null) {
            setNotificationCount(notificationManager.getUnreadCount());
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void showEmptyAssetsStateView() {
        if (!isAnyUploadInProgress()) {
            super.showEmptyAssetsStateView();
        }
    }

    public boolean isEmptyFolder() {
        return getDataSource().getCount() == 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void registerLocalNofications() {
        super.registerLocalNofications();
        if (this._collaborationVisibilityObserver == null) {
            this._collaborationVisibilityObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.9
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    String currentTargetCollectionName;
                    CCFilesWithUploadFragment.this._assetViewConfiguration.getCloud();
                    AdobeNotification adobeNotification = (AdobeNotification) obj;
                    if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesCollaborationChangeTitleToCollaborator) {
                        CCFilesWithUploadFragment.this.hideMenu();
                        AdobeCSDKActionBarController.setTitle(CCFilesWithUploadFragment.this.getActivity().findViewById(R.id.content), CCFilesWithUploadFragment.this.getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_collaborator));
                    } else if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeCCFilesCollaborationChangeTitleToTargetAsset) {
                        if (CCFilesWithUploadFragment.this.isContainerShowingRootCollection()) {
                            currentTargetCollectionName = CCFilesWithUploadFragment.this.getContainerNameForRoot();
                        } else {
                            currentTargetCollectionName = CCFilesWithUploadFragment.this.getCurrentTargetCollectionName();
                        }
                        AdobeCSDKActionBarController.setTitle(CCFilesWithUploadFragment.this.getActivity().findViewById(R.id.content), currentTargetCollectionName);
                        CCFilesWithUploadFragment.this.showMenu();
                    }
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesRefreshNotificationCount, new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.10
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                CCFilesWithUploadFragment.this.setNotificationCount(((Integer) ((AdobeNotification) obj).getInfo().get(AdobePushNotificationDataModel.UNREAD_COUNT)).intValue());
            }
        });
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesCollaborationChangeTitleToCollaborator, this._collaborationVisibilityObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesCollaborationChangeTitleToTargetAsset, this._collaborationVisibilityObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted, this._ccfilesUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, this._ccfilesUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled, this._ccfilesUploadObserver);
        if (!(getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity)) {
            if (this._ccfilesEditProgressObserver == null) {
                this._ccfilesEditProgressObserver = new EditProgressNotificationObserver();
            }
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAssetEditProgressChanged, this._ccfilesEditProgressObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideMenu() {
        if (this._assetBrowserMenu != null) {
            hideMenuItemsUtil(this._assetBrowserMenu);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMenu() {
        if (this._assetBrowserMenu != null) {
            showMenuItemsUtil(this._assetBrowserMenu);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted, this._ccfilesUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, this._ccfilesUploadObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled, this._ccfilesUploadObserver);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void unRegisterLocalNotifications() {
        super.unRegisterLocalNotifications();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesCollaborationChangeTitleToCollaborator, this._collaborationVisibilityObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeCCFilesCollaborationChangeTitleToTargetAsset, this._collaborationVisibilityObserver);
        if (!(getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity) && this._ccfilesEditProgressObserver != null) {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAssetEditProgressChanged, this._ccfilesEditProgressObserver);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void configureEmptyStateView(View view) {
        if (!getTargetCollection().isReadOnly() && !isContainerReadOnly()) {
            ((TextView) view.findViewById(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_storage_asset_browser_empty_state_message)).setVisibility(this._showNoFiles ? 0 : 4);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AssetViewFragment.AssetsViewBaseActionBarController createActionBarController() {
        return new CCFilesActionBarControllerWithUploadControls();
    }

    class EditSummaryBanner {
        public TextView bannerTitle;
        public View bannerView;

        EditSummaryBanner() {
        }
    }

    class CCFilesActionBarControllerWithEditControls extends AssetViewFragment.AssetsViewBaseActionBarController {
        protected boolean _isCopy;
        protected MenuItem _moveMenuItem;

        private CCFilesActionBarControllerWithEditControls(boolean z) {
            super();
            this._isCopy = z;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            if (!(CCFilesWithUploadFragment.this.getHostActivity() instanceof AdobeAssetEditActivity) || ((AdobeAssetEditActivity) CCFilesWithUploadFragment.this.getHostActivity()).isMoveFragmentPresent()) {
                menu.clear();
                menuInflater.inflate(com.adobe.creativesdk.foundation.assetux.R.menu.adobe_asset_edit_move_menu, menu);
                this._moveMenuItem = menu.findItem(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_uxassetbrowser_loki_assets_view_move_asset);
                this._moveMenuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.CCFilesActionBarControllerWithEditControls.1
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        CCFilesWithUploadFragment.this.handleMoveButtonClick(CCFilesActionBarControllerWithEditControls.this._isCopy);
                        return true;
                    }
                });
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            if (!(CCFilesWithUploadFragment.this.getHostActivity() instanceof AdobeAssetEditActivity) || ((AdobeAssetEditActivity) CCFilesWithUploadFragment.this.getHostActivity()).isMoveFragmentPresent()) {
                this._moveMenuItem.setVisible(true);
                refreshOptionItems();
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected boolean handleOptionItemSelect(int i) {
            if (i != com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_uxassetbrowser_loki_assets_view_move_asset) {
                return false;
            }
            CCFilesWithUploadFragment.this.handleMoveButtonClick(this._isCopy);
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
            super.refreshOptionItems();
            if (!CCFilesWithUploadFragment.this.isNetworkOnline()) {
                this._moveMenuItem.setVisible(false);
            }
        }
    }

    class CCFilesActionBarControllerWithShareControllers extends AssetViewFragment.AssetsViewBaseActionBarController {
        protected MenuItem _advanceMenuItem;
        protected MenuItem _createNewFolderItem;

        private CCFilesActionBarControllerWithShareControllers() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            menuInflater.inflate(com.adobe.creativesdk.foundation.assetux.R.menu.adobe_menu_share, menu);
            this._advanceMenuItem = menu.findItem(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_menu_advance);
            this._advanceMenuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.CCFilesActionBarControllerWithShareControllers.1
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem menuItem) {
                    CCFilesWithUploadFragment.this.handleShareAdvanceButtonClick();
                    return true;
                }
            });
            this._createNewFolderItem = menu.findItem(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_menu_create_new_folder);
            this._createNewFolderItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.CCFilesActionBarControllerWithShareControllers.2
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem menuItem) {
                    CCFilesWithUploadFragment.this.handleCreateNewFolderButtonClick();
                    return true;
                }
            });
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            if (this._advanceMenuItem != null) {
                this._advanceMenuItem.setVisible(true);
            }
            if (this._createNewFolderItem != null) {
                this._createNewFolderItem.setVisible(true);
            }
            refreshOptionItems();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected boolean handleOptionItemSelect(int i) {
            if (i == com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_menu_advance) {
                CCFilesWithUploadFragment.this.handleShareAdvanceButtonClick();
                return true;
            }
            if (i == com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_menu_create_new_folder) {
                CCFilesWithUploadFragment.this.handleCreateNewFolderButtonClick();
                return true;
            }
            return false;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
            super.refreshOptionItems();
            if (!CCFilesWithUploadFragment.this.isNetworkOnline()) {
                if (this._advanceMenuItem != null) {
                    this._advanceMenuItem.setVisible(false);
                }
                if (this._createNewFolderItem != null) {
                    this._createNewFolderItem.setVisible(false);
                }
            }
        }
    }

    public class CCFilesActionBarControllerWithUploadControls extends CCFilesFragment.CCFilesActionBarController {
        private MenuItem _editAssets;

        protected CCFilesActionBarControllerWithUploadControls() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            super.onCreateOptionsMenu(menu, menuInflater);
            CCFilesWithUploadFragment.this._assetBrowserMenu = menu;
            menuInflater.inflate(com.adobe.creativesdk.foundation.assetux.R.menu.adobe_assetview_loki_upload_menu, menu);
            this._editAssets = menu.findItem(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_uxassetbrowser_assets_view_edit_asset);
            CCFilesWithUploadFragment.this._notificationMenuItem = menu.findItem(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_asset_browser_adobe_notification);
            CCFilesWithUploadFragment.this._collaboratorMenuItem = menu.findItem(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_asset_browser_collaborator_menu);
            CCFilesWithUploadFragment.this._leaveFolderMenuItem = menu.findItem(com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_asset_browser_collaborator_leave_folder_menu);
            if (CCFilesWithUploadFragment.this._collaboratorMenuItem == null || !CCFilesWithUploadFragment.this._assetViewConfiguration.getCloud().isPrivateCloud()) {
                CCFilesWithUploadFragment.this.handleLeaveFolderVisibility(CCFilesWithUploadFragment.this.isContainerShowingRootCollection() ? false : true);
            } else {
                CCFilesWithUploadFragment.this.disableCollaborationRelatedMenuItems();
                CCFilesWithUploadFragment.this.handleLeaveFolderVisibility(false);
            }
            CCFilesWithUploadFragment.this._ccFilesMenu = menu;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handlePostOnCreate(Bundle bundle) {
            super.handlePostOnCreate(bundle);
        }

        public void setEditMenuVisibilty(boolean z) {
            if (this._editAssets != null) {
                this._editAssets.setVisible(z);
            }
        }

        private void refreshOptionsInternal() {
            if (this._editAssets != null) {
                AdobeNotificationManager notificationManager = AdobeNotificationManager.getNotificationManager();
                if (notificationManager != null) {
                    CCFilesWithUploadFragment.this.setNotificationCount(notificationManager.getUnreadCount());
                }
                boolean zIsAnyUploadInProgress = CCFilesWithUploadFragment.this.isAnyUploadInProgress();
                CCFilesWithUploadFragment.this.getTargetCollection();
                boolean z = !CCFilesWithUploadFragment.this._isReadOnly;
                if (this._editAssets != null) {
                    this._editAssets.setTitle(CCFilesWithUploadFragment.this.getAdobeFormattedString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_uxassetbrowser_action_select_assets));
                    this._editAssets.setVisible((CCFilesWithUploadFragment.this.isSearchBarOpened() || zIsAnyUploadInProgress || AdobeCCFilesEditManager.isEditInProgress() || !CCFilesWithUploadFragment.this.isNetworkOnline() || !z) ? false : true);
                }
                if (CCFilesWithUploadFragment.this._collaboratorMenuItem != null) {
                    CCFilesWithUploadFragment.this._collaboratorMenuItem.setTitle(CCFilesWithUploadFragment.this.getAdobeFormattedString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_collaborator));
                }
                if (CCFilesWithUploadFragment.this._notificationView != null) {
                    CCFilesWithUploadFragment.this._notificationMenuItem.setActionView(CCFilesWithUploadFragment.this._notificationView);
                    CCFilesWithUploadFragment.this._notificationView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.CCFilesActionBarControllerWithUploadControls.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_NOTIFICATION, null);
                        }
                    });
                }
                CCFilesWithUploadFragment.this.handleLeaveFolderVisibility(!CCFilesWithUploadFragment.this.isContainerShowingRootCollection());
                if (CCFilesWithUploadFragment.this.isContainerShowingRootCollection()) {
                    CCFilesWithUploadFragment.this._notificationMenuItem.setVisible(CCFilesWithUploadFragment.this.isSearchBarOpened() ? false : true);
                    CCFilesWithUploadFragment.this._collaboratorMenuItem.setVisible(false);
                } else {
                    CCFilesWithUploadFragment.this._notificationMenuItem.setVisible(false);
                    CCFilesWithUploadFragment.this._collaboratorMenuItem.setVisible(true);
                }
                if (CCFilesWithUploadFragment.this._assetViewConfiguration.getCloud() != null && CCFilesWithUploadFragment.this._assetViewConfiguration.getCloud().isPrivateCloud()) {
                    CCFilesWithUploadFragment.this._notificationMenuItem.setVisible(false);
                    CCFilesWithUploadFragment.this._collaboratorMenuItem.setVisible(false);
                }
                if (!CCFilesWithUploadFragment.this.isNetworkOnline()) {
                    CCFilesWithUploadFragment.this._notificationMenuItem.setVisible(false);
                    CCFilesWithUploadFragment.this._collaboratorMenuItem.setVisible(false);
                    this._editAssets.setVisible(false);
                }
                if (!AdobeAssetViewUtils.deviceHasCameraFeature(CCFilesWithUploadFragment.this.getHostActivity())) {
                    CCFilesWithUploadFragment.this._takePhotoFAB.setVisibility(8);
                }
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
            super.refreshOptionItems();
            refreshOptionsInternal();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            super.onPrepareOptionsMenu(menu);
            refreshOptionsInternal();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public boolean handleOptionItemSelect(int i) {
            if (i == com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_uxassetbrowser_assets_view_edit_asset) {
                CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_OPEN_MULTI_SELECT_EDIT_WINDOW, CCFilesWithUploadFragment.this.getTargetCollection().getHref().toString());
                return true;
            }
            if (i == com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_asset_browser_adobe_notification) {
                CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_NOTIFICATION, null);
                return true;
            }
            if (i == com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_asset_browser_collaborator_menu) {
                CCFilesWithUploadFragment.this.postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_MENU_COLLABORATION, CCFilesWithUploadFragment.this.getTargetCollection().getHref().toString());
                return true;
            }
            if (i == com.adobe.creativesdk.foundation.assetux.R.id.adobe_csdk_asset_browser_collaborator_leave_folder_menu) {
                CCFilesWithUploadFragment.this.leaveFolder(true);
            }
            return super.handleOptionItemSelect(i);
        }
    }

    public class CCFilesEditCommandsHandler extends AdobeAssetViewCommandsHandler {
        protected CCFilesEditCommandsHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ASSETVIEW_BROWSER_CCFILES_FORCE_REFRESH_LIST, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_COMPLETED, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_STARTED, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_LEAVE_FOLDER);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ASSETVIEW_BROWSER_CCFILES_FORCE_REFRESH_LIST) {
                CCFilesWithUploadFragment.this.action_forceRefresh();
                return;
            }
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_STARTED) {
                CCFilesWithUploadFragment.this.action_editStarted();
            } else if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_COMPLETED) {
                CCFilesWithUploadFragment.this.action_editCompleted();
            } else if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_LEAVE_FOLDER) {
                CCFilesWithUploadFragment.this.leaveFolder(false, (String) obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void action_editStarted() {
        if (AdobeCCFilesEditManager.hasEditStarted()) {
            AdobeCCFilesEditManager.setEditStarted(false);
            if (this._actionBarController instanceof CCFilesActionBarControllerWithUploadControls) {
                ((CCFilesActionBarControllerWithUploadControls) this._actionBarController).setEditMenuVisibilty(false);
            }
            showProgressDialogBar();
        }
    }

    private void showProgressDialogBar() {
        this._editProgressDialogBar = createEditProgressDialogBar();
        this._editProgressDialogBar.show();
    }

    private ProgressDialog createEditProgressDialogBar() {
        this._editProgressDialogBar = new ProgressDialog(getHostActivity());
        this._editProgressDialogBar.setMessage(getEditProgressString(AdobeCCFilesEditManager.getLastSession()));
        this._editProgressDialogBar.setIndeterminate(true);
        this._editProgressDialogBar.setCancelable(false);
        return this._editProgressDialogBar;
    }

    private String getEditProgressString(AdobeCCFilesEditSession adobeCCFilesEditSession) {
        AdobeCCFilesEditSession.EditSummary editSummary = adobeCCFilesEditSession.getEditSummary();
        if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_RENAME) {
            return getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_rename_in_progress);
        }
        if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_MOVE) {
            return getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_move_in_progress);
        }
        if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_COPY) {
            return getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_copy_in_progress);
        }
        if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE) {
            return getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_archive_in_progress);
        }
        if (editSummary.operation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_DELETE) {
            return getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_delete_in_progress);
        }
        return getResources().getString(com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_edit_in_progress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void action_editCompleted() {
        if (!AdobeCCFilesEditManager.hasEditCompletionHandled()) {
            AdobeCCFilesEditManager.setEditCompletionHandled(true);
            AdobeCCFilesEditManager.setEditInProgress(false);
            AdobeAssetViewEditSelectedAssetsController.clearSelection();
            showEditSummaryBar(AdobeCCFilesEditManager.getLastSession());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void action_forceRefresh() {
        reloadDataFromDataSource();
    }

    class EditProgressNotificationObserver implements Observer {
        EditProgressNotificationObserver() {
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAssetEditProgressChanged) {
                Map<String, Object> info = adobeNotification.getInfo();
                if (info.containsKey(AdobeAssetViewEditActivityConfiguration.EDIT_PROGRESS_KEY)) {
                    CCFilesWithUploadFragment.this.setEditProgress(((Double) info.get(AdobeAssetViewEditActivityConfiguration.EDIT_PROGRESS_KEY)).doubleValue());
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity) {
            this._adobeAssetViewBrowserFragmentExtraControls = (IAdobeAssetViewBrowserFragmentExtraControlsHostActivity) getHostActivity();
            if (this._adobeAssetViewBrowserFragmentExtraControls.hasExtraControls()) {
                handleExtraConfigurations(this._adobeAssetViewBrowserFragmentExtraControls.getExtraConfiguration());
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.requestMade && i == 0) {
            this.requestMade = false;
            if (iArr.length == 1 && iArr[0] == 0) {
                postActionCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_UPLOAD_FILES, getTargetCollection());
            } else {
                Toast.makeText(getActivity(), com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_extract_permission_denied, 0).show();
            }
        }
    }
}
