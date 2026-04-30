package com.behance.sdk.ui.fragments;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.Toast;
import android.widget.ViewFlipper;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowserOption;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.R;
import com.behance.sdk.factory.BehanceSDKImageValidatorFactory;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKProjectPublishWFManager;
import com.behance.sdk.mobeta.android.dslv.DragSortListView;
import com.behance.sdk.project.modules.CreativeCloudAssetModule;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.project.modules.ProjectModule;
import com.behance.sdk.project.modules.ProjectModuleTypes;
import com.behance.sdk.ui.activities.BehanceSDKCCLauncherActivity;
import com.behance.sdk.ui.activities.BehanceSDKPublishProjectActivity;
import com.behance.sdk.ui.adapters.BehanceSDKPublishProjectEditAdapter;
import com.behance.sdk.ui.adapters.BehanceSDKPublishProjectPreviewAdapter;
import com.behance.sdk.ui.dialogs.BehanceSDKEmbedModuleDialog;
import com.behance.sdk.util.BehanceSDKPermissionHelper;
import com.behance.sdk.util.BehanceSDKUtils;
import java.io.File;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectPreviewFragment extends BehanceSDKPublishProjectBaseFragment implements View.OnKeyListener, BehanceSDKProjectPublishWFManager.ProjectModuleChangeListener, DragSortListView.RemoveListener, BehanceSDKPublishProjectEditAdapter.Callbacks, BehanceSDKPublishProjectPreviewAdapter.Callbacks {
    private static final int ACTIVITY_RESULT_REQUEST_CODE_CC_ASSET_BROWSER = 6787;
    private static final int ACTIVITY_RESULT_REQUEST_CODE_PICK_PICTURE_FROM_CAMERA = 1;
    private static final String BUNDLE_KEY_CAMERA_IMAGE_URI_EDIT_PREVIEW_FRAGMENT = "BUNDLE_KEY_CAMERA_IMAGE_URI_EDIT_FRAGMENT";
    private static final String BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX_EDIT_PREVIEW_FRAGMENT = "BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX_EDIT_PREVIEW_FRAGMENT";
    private static final String BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH = "BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH";
    private static final int VIEW_FLIPPER_EDIT_MODULES_VIEW_INDEX = 1;
    private static final int VIEW_FLIPPER_PREVIEW_MODULES_VIEW_INDEX = 0;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKPublishProjectPreviewFragment.class);
    private View editEmptyProjectMessage;
    private BehanceSDKPublishProjectEditAdapter editImageAdapter;
    private DragSortListView editModulesDragSortListView;
    String mCurrentPhotoPath;
    private ViewFlipper previewEditViewFlipper;
    private BehanceSDKPublishProjectPreviewAdapter previewImageAdapter;
    private ListView previewModulesListView;
    private ProgressBar progressBar;
    private BehanceSDKProjectPublishWFManager publishProjectManager = BehanceSDKProjectPublishWFManager.getInstance();
    private Uri selectedCameraImageUri;

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getLayout() {
        return R.layout.bsdk_dialog_fragment_publish_project_preview;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment, android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.publishProjectManager.addProjectModuleChangeListener(this);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.publishProjectManager.removeProjectModuleChangeListener(this);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        super.onCreateView(layoutInflater, viewGroup, bundle);
        this.previewEditViewFlipper = (ViewFlipper) this.rootView.findViewById(R.id.bsdkPublishProjectPreviewAndEditViewFlipper);
        initializePreviewProjectScreen();
        initializeEditProjectScreen();
        if (bundle != null) {
            this.selectedCameraImageUri = (Uri) bundle.getParcelable(BUNDLE_KEY_CAMERA_IMAGE_URI_EDIT_PREVIEW_FRAGMENT);
            i = bundle.getInt(BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX_EDIT_PREVIEW_FRAGMENT, 0);
            this.mCurrentPhotoPath = bundle.getString(BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH);
        } else {
            i = isEmptyProject() ? 1 : 0;
        }
        if (i == 0) {
            displayPreviewModulesView(false, true);
            enableActionBarRightNav();
        } else {
            displayEditModulesView(false);
        }
        this.rootView.setFocusableInTouchMode(true);
        this.rootView.setOnKeyListener(this);
        return this.rootView;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() == 0) {
            return false;
        }
        backButtonPressed();
        return true;
    }

    private void initializePreviewProjectScreen() {
        this.previewModulesListView = (ListView) this.rootView.findViewById(R.id.bsdkPublishProjectPreviewProjectModulesListView);
        this.progressBar = (ProgressBar) this.rootView.findViewById(R.id.bsdkPublishProjectPreviewPrgressBar);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKPublishProjectPreviewAdapter.Callbacks
    public void onViewLoadingComplete() {
        this.progressBar.setVisibility(8);
        this.previewModulesListView.setVisibility(0);
    }

    private void initializeEditProjectScreen() {
        this.editModulesDragSortListView = (DragSortListView) this.rootView.findViewById(R.id.bsdkPublishProjectEditProjectModulesListView);
        this.editEmptyProjectMessage = this.rootView.findViewById(R.id.bsdkPublishProjectEditEmptyProjectMessageLayout);
        this.rootView.findViewById(R.id.bsdkPublishProjectEditOptionAlbums).setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectPreviewFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BehanceSDKPublishProjectActivity) BehanceSDKPublishProjectPreviewFragment.this.getActivity()).launchImageSelectionDialogForEditScreen();
            }
        });
        this.rootView.findViewById(R.id.bsdkPublishProjectEditOptionCamera).setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectPreviewFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BehanceSDKPermissionHelper.checkPermission(BehanceSDKPublishProjectPreviewFragment.this.getActivity(), 2)) {
                    BehanceSDKPublishProjectPreviewFragment.this.launchCameraToCapturePicture();
                } else {
                    ((BehanceSDKPublishProjectActivity) BehanceSDKPublishProjectPreviewFragment.this.getActivity()).requestPermission(2);
                }
            }
        });
        this.rootView.findViewById(R.id.bsdkPublishProjectEditOptionEmbed).setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectPreviewFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKEmbedModuleDialog.getInstance(BehanceSDKPublishProjectPreviewFragment.this.getActivity()).show();
            }
        });
        View viewFindViewById = this.rootView.findViewById(R.id.bsdkPublishProjectEditOptionCreativeCloud);
        AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        boolean cCAssetBrowserDisabled = false;
        if (getActivity() != null) {
            cCAssetBrowserDisabled = ((BehanceSDKPublishProjectActivity) getActivity()).getCCAssetBrowserDisabled();
        }
        if (defaultCloud == null || cCAssetBrowserDisabled) {
            viewFindViewById.setVisibility(8);
        } else {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectPreviewFragment.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (BehanceSDKPermissionHelper.checkPermission(BehanceSDKPublishProjectPreviewFragment.this.getActivity(), 4)) {
                        BehanceSDKPublishProjectPreviewFragment.this.launchCreativeCloudAssetBrowser();
                    } else {
                        ((BehanceSDKPublishProjectActivity) BehanceSDKPublishProjectPreviewFragment.this.getActivity()).requestPermission(4);
                    }
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 1:
                if (iArr.length <= 0 || iArr[0] == 0) {
                }
                break;
        }
    }

    private void displayPreviewModulesView(boolean z, boolean z2) {
        List<ProjectModule> projectModules = this.publishProjectManager.getProjectModules();
        if (this.previewImageAdapter == null || z2) {
            this.previewImageAdapter = new BehanceSDKPublishProjectPreviewAdapter(getActivity(), R.layout.bsdk_adapter_publish_project_preview_project_fragment_list_item, projectModules);
            this.previewModulesListView.setAdapter((ListAdapter) this.previewImageAdapter);
            this.previewImageAdapter.setCallbacks(this);
            BehanceSDKUtils.setContentViewPaddings(getActivity(), this.previewModulesListView, getResources().getFraction(R.fraction.bsdk_add_project_preview_fragment_screen_width_percentage, 1, 1));
            this.previewModulesListView.setVisibility(4);
        }
        if (z) {
            this.previewEditViewFlipper.setInAnimation(getActivity(), R.anim.bsdk_publish_project_preview_enter_anim);
            this.previewEditViewFlipper.setOutAnimation(getActivity(), R.anim.bsdk_publish_project_edit_exit_anim);
        } else {
            this.previewEditViewFlipper.setInAnimation(null);
            this.previewEditViewFlipper.setOutAnimation(null);
        }
        this.previewEditViewFlipper.setDisplayedChild(0);
        updateNavigationControls();
    }

    private void displayEditModulesView(List<ProjectModule> list, boolean z) {
        if (list == null || list.isEmpty()) {
            showEmptyProjectMessage();
        } else {
            this.editEmptyProjectMessage.setVisibility(8);
            this.editModulesDragSortListView.setVisibility(0);
            initializeListView(list);
        }
        if (z) {
            this.previewEditViewFlipper.setInAnimation(getActivity(), R.anim.bsdk_publish_project_edit_enter_anim);
            this.previewEditViewFlipper.setOutAnimation(getActivity(), R.anim.bsdk_publish_project_preview_exit_anim);
        } else {
            this.previewEditViewFlipper.setInAnimation(null);
            this.previewEditViewFlipper.setOutAnimation(null);
        }
        this.previewEditViewFlipper.setDisplayedChild(1);
        updateNavigationControls();
    }

    private void showEmptyProjectMessage() {
        disableActionBarRightNav();
        this.editEmptyProjectMessage.setVisibility(0);
        this.editModulesDragSortListView.setVisibility(8);
        this.editImageAdapter = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayEditModulesView(boolean z) {
        displayEditModulesView(this.publishProjectManager.getProjectModules(), z);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getBackButtonID() {
        return isPreviewScreen() ? R.id.bsdkPublishProjectPreviewFragmentTitlebarBackBtnLayout : super.getBackButtonID();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getForwardButtonID() {
        return isPreviewScreen() ? R.id.bsdkPublishProjectPreviewFragmentTitlebarActionBtnTxtView : super.getForwardButtonID();
    }

    private boolean isPreviewScreen() {
        return this.previewEditViewFlipper != null && this.previewEditViewFlipper.getDisplayedChild() == 0;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getTitleViewID() {
        return isPreviewScreen() ? R.id.bsdkPublishProjectPreviewFragmentTitlebarTitleTxtView : super.getTitleViewID();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getForwardButtonText() {
        return isPreviewScreen() ? super.getForwardButtonText() : R.string.bsdk_add_project_edit_project_fragment_right_navigation;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getTitle() {
        return isPreviewScreen() ? R.string.bsdk_add_project_preview_project_fragment_title : R.string.bsdk_add_project_edit_project_fragment_title;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected void updateNavigationControls() {
        super.updateNavigationControls();
        View viewFindViewById = this.rootView.findViewById(R.id.bsdkPublishProjectPreviewFragmentTitlebarEditActionBtnTxtView);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectPreviewFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKPublishProjectPreviewFragment.this.displayEditModulesView(true);
            }
        });
        if (this.previewEditViewFlipper != null) {
            if (this.previewEditViewFlipper.getDisplayedChild() == 0) {
                viewFindViewById.setVisibility(0);
            } else {
                viewFindViewById.setVisibility(8);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        List list;
        switch (i) {
            case 1:
                if (i2 == -1) {
                    logger.debug("Camera Activity returned with ok result. [Photo Uri - %s]", this.selectedCameraImageUri);
                    if (this.selectedCameraImageUri != null) {
                        File file = new File(this.mCurrentPhotoPath);
                        this.publishProjectManager.addImageSelectedForProject(file);
                        BehanceSDKUtils.addImageToGallery(getActivity(), file.getAbsolutePath());
                        notifyEditViewGridAdapter(this.publishProjectManager.getProjectModules());
                        enableActionBarRightNav();
                    }
                } else {
                    logger.debug("Camera Activity returned with not ok result. [Result - %s]", Integer.valueOf(i2));
                }
                break;
            case ACTIVITY_RESULT_REQUEST_CODE_CC_ASSET_BROWSER /* 6787 */:
                if (i2 == -1 && (list = (List) intent.getExtras().getSerializable(BehanceSDKCCLauncherActivity.ACTIVITY_RESULT_CC_SUCCESSFULLY_DOWNLOADED_FILES)) != null && !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        this.publishProjectManager.addModuleToCurrentProject(new CreativeCloudAssetModule((File) it.next()));
                    }
                    notifyEditViewGridAdapter(this.publishProjectManager.getProjectModules());
                    enableActionBarRightNav();
                    break;
                }
                break;
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected void enableActionBarRightNav() {
        if (!isEmptyProject()) {
            super.enableActionBarRightNav();
        }
    }

    private boolean isEmptyProject() {
        List<ProjectModule> projectModules = this.publishProjectManager.getProjectModules();
        return projectModules == null || projectModules.isEmpty();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected void nextButtonPressed() {
        if (this.previewEditViewFlipper.getDisplayedChild() == 0) {
            super.nextButtonPressed();
        } else {
            displayPreviewModulesView(true, false);
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected void backButtonPressed() {
        if (this.previewEditViewFlipper.getDisplayedChild() == 1 && !isEmptyProject()) {
            displayPreviewModulesView(true, false);
        } else {
            super.backButtonPressed();
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    public boolean closeWorkflow() {
        return true;
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.previewEditViewFlipper != null) {
            bundle.putInt(BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX_EDIT_PREVIEW_FRAGMENT, this.previewEditViewFlipper.getDisplayedChild());
        }
        if (this.selectedCameraImageUri != null) {
            bundle.putParcelable(BUNDLE_KEY_CAMERA_IMAGE_URI_EDIT_PREVIEW_FRAGMENT, this.selectedCameraImageUri);
        }
        if (this.mCurrentPhotoPath != null) {
            bundle.putString(BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH, this.mCurrentPhotoPath);
        }
    }

    public void launchCreativeCloudAssetBrowser() {
        FragmentActivity activity = getActivity();
        Intent intent = new Intent(activity, (Class<?>) BehanceSDKCCLauncherActivity.class);
        EnumSet enumSetOf = EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_GIF, AdobeAssetMimeTypes.MIMETYPE_JPEG, AdobeAssetMimeTypes.MIMETYPE_PNG);
        EnumSet enumSetOf2 = EnumSet.of(AdobeUXAssetBrowserOption.ENABLE_MULTI_SELECT, AdobeUXAssetBrowserOption.SHOW_MULTI_SELECT_ON_POPUP);
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_ALLOWED_MIME_TYPES, enumSetOf);
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_ASSET_BROWSER_OPTIONS, enumSetOf2);
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_IMAGE_VALIDATOR_TYPE, BehanceSDKImageValidatorFactory.PUBLISH_PROJECT_IMAGE_VALIDATOR);
        activity.startActivityForResult(intent, ACTIVITY_RESULT_REQUEST_CODE_CC_ASSET_BROWSER);
    }

    public void launchCameraToCapturePicture() {
        try {
            File fileCreateTempImageFile = BehanceSDKUtils.createTempImageFile();
            this.mCurrentPhotoPath = fileCreateTempImageFile.getAbsolutePath();
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
                String fileProviderAuthority = BehanceSDK.getInstance().getFileProviderAuthority();
                if (fileCreateTempImageFile != null && !TextUtils.isEmpty(fileProviderAuthority)) {
                    this.selectedCameraImageUri = FileProvider.getUriForFile(getContext(), fileProviderAuthority, fileCreateTempImageFile);
                    intent.putExtra("output", this.selectedCameraImageUri);
                    startActivityForResult(intent, 1);
                }
            } else {
                logger.error("Camera intent not found", new Object[0]);
                Toast.makeText(getActivity(), R.string.bsdk_add_wip_pick_source_view_camera_launch_error, 1).show();
            }
        } catch (IOException e2) {
            logger.error(e2, "Problem creating temp file to capture image", new Object[0]);
            Toast.makeText(getActivity(), R.string.bsdk_add_wip_pick_source_view_camera_launch_error, 1).show();
        }
    }

    @Override // com.behance.sdk.managers.BehanceSDKProjectPublishWFManager.ProjectModuleChangeListener
    public void projectModulesChanged(List<ProjectModule> list) {
        if (list == null || list.isEmpty()) {
            disableActionBarRightNav();
        } else {
            enableActionBarRightNav();
            notifyEditViewGridAdapter(list);
        }
        notifyPreviewViewGridAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPreviewViewGridAdapter() {
        if (this.previewImageAdapter != null) {
            this.previewImageAdapter.notifyDataSetChanged();
        }
    }

    private void notifyEditViewGridAdapter(List<ProjectModule> list) {
        if (this.editImageAdapter != null) {
            this.editImageAdapter.notifyDataSetChanged();
        } else {
            displayEditModulesView(list, false);
        }
    }

    private void initializeListView(List<ProjectModule> list) {
        this.editImageAdapter = new BehanceSDKPublishProjectEditAdapter(getActivity(), R.layout.bsdk_adapter_publish_project_edit_fragment_grid_item, list);
        this.editModulesDragSortListView.setAdapter((ListAdapter) this.editImageAdapter);
        this.editModulesDragSortListView.setRemoveListener(this);
        this.editImageAdapter.setCallBack(this);
        this.editModulesDragSortListView.setDropListener(new DragSortListView.DropListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectPreviewFragment.6
            @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.DropListener
            public void drop(int i, int i2) {
                BehanceSDKPublishProjectPreviewFragment.this.publishProjectManager.reorderSelectedModules(i, i2);
                BehanceSDKPublishProjectPreviewFragment.this.editModulesDragSortListView.moveCheckState(i, i2);
                BehanceSDKPublishProjectPreviewFragment.this.editImageAdapter.notifyDataSetChanged();
                BehanceSDKPublishProjectPreviewFragment.this.notifyPreviewViewGridAdapter();
            }
        });
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKPublishProjectEditAdapter.Callbacks
    public void onRotate(ImageModule imageModule) {
        this.publishProjectManager.rotateImage(imageModule);
    }

    @Override // com.behance.sdk.mobeta.android.dslv.DragSortListView.RemoveListener
    public void remove(int i) {
        ProjectModule item = this.editImageAdapter.getItem(i);
        if (item.getType().equals(ProjectModuleTypes.IMAGE)) {
            ((ImageModule) item).clearRotation();
        }
        this.publishProjectManager.removeProjectModule(item);
        if (this.publishProjectManager.isEmptyProject()) {
            showEmptyProjectMessage();
        } else {
            this.editImageAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.behance.sdk.managers.BehanceSDKProjectPublishWFManager.ProjectModuleChangeListener
    public void rotateImage(ImageModule imageModule) {
        notifyPreviewViewGridAdapter();
    }
}
