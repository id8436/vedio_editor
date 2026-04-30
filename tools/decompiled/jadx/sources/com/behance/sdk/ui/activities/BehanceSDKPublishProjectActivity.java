package com.behance.sdk.ui.activities;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.widget.Toast;
import android.widget.ViewFlipper;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKImageSelectorOptions;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.listeners.IBehanceSDKPublishProjectNavigationListener;
import com.behance.sdk.managers.BehanceSDKProjectPublishWFManager;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment;
import com.behance.sdk.ui.fragments.BehanceSDKPublishProjectCoverFragment;
import com.behance.sdk.ui.fragments.BehanceSDKPublishProjectPreviewFragment;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKFragmentTags;
import com.behance.sdk.util.BehanceSDKLaunchUtil;
import com.behance.sdk.util.BehanceSDKPermissionHelper;
import com.behance.sdk.util.BehanceSDKUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectActivity extends BehanceSDKBasePublishActivity implements IBehanceSDKPublishProjectNavigationListener, BehanceSDKImageSelectorDialogFragment.Callbacks {
    private static final String BUNDLE_KEY_CURRENT_PAGE_NUMBER = "BUNDLE_KEY_CURRENT_PAGE_NUMBER";
    public static final String INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED = "INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED";
    public static final String INTENT_SERIALIZABLE_EXTRA_PROJECT_CONTAINS_ADULT_CONTENT = "INTENT_SERIALIZABLE_EXTRA_PROJECT_CONTAINS_ADULT_CONTENT";
    public static final String INTENT_SERIALIZABLE_EXTRA_PROJECT_COPYRIGHT_SETTINGS = "INTENT_SERIALIZABLE_EXTRA_PROJECT_COPYRIGHT_SETTINGS";
    public static final String INTENT_SERIALIZABLE_EXTRA_PROJECT_CREATIVE_FIELDS = "INTENT_SERIALIZABLE_EXTRA_PROJECT_CREATIVE_FIELDS";
    public static final String INTENT_SERIALIZABLE_EXTRA_PROJECT_DESC = "INTENT_SERIALIZABLE_EXTRA_PROJECT_DESC";
    public static final String INTENT_SERIALIZABLE_EXTRA_PROJECT_IMAGE_MODULES = "INTENT_SERIALIZABLE_EXTRA_PROJECT_IMAGE_MODULES";
    public static final String INTENT_SERIALIZABLE_EXTRA_PROJECT_TAGS = "INTENT_SERIALIZABLE_EXTRA_PROJECT_TAGS";
    public static final String INTENT_SERIALIZABLE_EXTRA_PROJECT_TITLE = "INTENT_SERIALIZABLE_EXTRA_PROJECT_TITLE";
    private ViewFlipper publishProjectScreens;
    private boolean requestingPermission = false;
    private BehanceSDK behanceSDK = BehanceSDK.getInstance();

    @Override // com.behance.sdk.ui.activities.BehanceSDKBasePublishActivity
    public void continueWithWorkflow() {
        this.publishProjectScreens.setVisibility(0);
    }

    @Override // com.behance.sdk.ui.activities.BehanceSDKBasePublishActivity
    protected IBehanceSDKUserCredentials getBehanceSDKUserCredentials() {
        return BehanceSDKProjectPublishWFManager.getInstance().getUserCredentials();
    }

    @Override // com.behance.sdk.ui.activities.BehanceSDKBasePublishActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.behanceSDK.useBehanceTheme() && !getResources().getBoolean(R.bool.isTablet)) {
            setRequestedOrientation(this.behanceSDK.getBehanceSDKCustomResourcesOptions().getPhoneOrientation());
        }
        addValidImageModulesToWFManager();
        addProjectDetailsToWFManager();
        try {
            setContentView(R.layout.bsdk_activity_publish_project);
        } catch (Exception e2) {
            finish();
        }
        overridePendingTransition(R.anim.bsdk_cropper_view_enter, 0);
        this.publishProjectScreens = (ViewFlipper) findViewById(R.id.bsdkPublishProjectViewFlipper);
        if (bundle != null) {
            this.publishProjectScreens.setDisplayedChild(bundle.getInt(BUNDLE_KEY_CURRENT_PAGE_NUMBER, 0));
        }
        if (CanContinueWithWokflow()) {
            this.publishProjectScreens.setVisibility(4);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        getWindow().setBackgroundDrawableResource(R.color.bsdk_publish_project_view_bg_color);
    }

    private void showNextScreen() {
        if (this.publishProjectScreens.getDisplayedChild() != this.publishProjectScreens.getChildCount() - 1) {
            addShowNextAnimations();
            this.publishProjectScreens.showNext();
        }
    }

    public void closeThisActivity(boolean z) {
        finish();
        if (z) {
            overridePendingTransition(0, R.anim.bsdk_cropper_view_exit);
        }
    }

    private void showPreviousScreen() {
        onBackPressed();
    }

    private void addShowNextAnimations() {
        this.publishProjectScreens.setInAnimation(this, R.anim.bsdk_publish_project_open_enter_anim);
        this.publishProjectScreens.setOutAnimation(this, R.anim.bsdk_publish_project_open_exit_anim);
    }

    private void addShowPreviousAnimations() {
        this.publishProjectScreens.setInAnimation(this, R.anim.bsdk_publish_project_close_enter_anim);
        this.publishProjectScreens.setOutAnimation(this, R.anim.bsdk_publish_project_close_exit_anim);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKPublishProjectNavigationListener
    public void showNext() {
        showNextScreen();
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKPublishProjectNavigationListener
    public void showPrevious() {
        showPreviousScreen();
    }

    public void launchImageSelectionDialogForEditScreen() {
        if (BehanceSDKPermissionHelper.checkPermission(this, 1)) {
            launchImageSelectionDialogForEditScreenCommon();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.requestingPermission = true;
            requestPermissions(BehanceSDKPermissionHelper.getPermissionFromRequestCode(1, this), 1);
        }
    }

    public void requestPermission(int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.requestingPermission = true;
            requestPermissions(BehanceSDKPermissionHelper.getPermissionFromRequestCode(i, this), i);
        }
    }

    private void launchImageSelectionDialogForEditScreenCommon() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        BehanceSDKImageSelectorOptions unlimitedImageSelectionOptions = BehanceSDKImageSelectorOptions.getUnlimitedImageSelectionOptions();
        if (getIntent().getBooleanExtra(INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED, false)) {
            unlimitedImageSelectionOptions.setCCAssetBrowserDisabled(true);
        }
        unlimitedImageSelectionOptions.setMaxImageSizeInBytes(BehanceSDKConstants.PROJECT_IMAGE_MODULE_MAX_SIZE_BYTES);
        unlimitedImageSelectionOptions.setAllowedFileExtensions(BehanceSDKUtils.getAllowedFileExtensionsForProjectImage());
        BehanceSDKLaunchUtil.launchAlbumsViewToPickPicture(this, unlimitedImageSelectionOptions, supportFragmentManager, BehanceSDKFragmentTags.FRAGMENT_TAG_ADD_PROJECT_ALBUM_SELECTION_FRAGMENT);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 1:
            case 3:
            case 4:
                if (iArr.length == 1 && iArr[0] == 0) {
                    if (i == 1) {
                        launchImageSelectionDialogForEditScreenCommon();
                        this.requestingPermission = false;
                    } else if (i == 3) {
                        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.bsdkPublishProjectCoverFragment);
                        if (fragmentFindFragmentById != null) {
                            ((BehanceSDKPublishProjectCoverFragment) fragmentFindFragmentById).launchAlbumsViewToPickPictures();
                            this.requestingPermission = false;
                        }
                    } else {
                        Fragment fragmentFindFragmentById2 = getSupportFragmentManager().findFragmentById(R.id.bsdkPublishProjectPreviewFragment);
                        if (fragmentFindFragmentById2 != null) {
                            ((BehanceSDKPublishProjectPreviewFragment) fragmentFindFragmentById2).launchCreativeCloudAssetBrowser();
                            this.requestingPermission = false;
                        }
                    }
                } else {
                    Toast.makeText(this, getString(R.string.behance_sdk_permissions_error_generic), 1).show();
                }
                break;
            case 2:
                if ((iArr.length == 2 && iArr[0] == 0 && iArr[1] == 0) || (iArr.length == 1 && iArr[0] == 0)) {
                    Fragment fragmentFindFragmentById3 = getSupportFragmentManager().findFragmentById(R.id.bsdkPublishProjectPreviewFragment);
                    if (fragmentFindFragmentById3 != null) {
                        ((BehanceSDKPublishProjectPreviewFragment) fragmentFindFragmentById3).launchCameraToCapturePicture();
                        this.requestingPermission = false;
                    }
                } else {
                    int i2 = R.string.behance_sdk_permissions_error_generic;
                    if (iArr.length == 2) {
                        if (iArr[0] != 0 && iArr[1] != 0) {
                            i2 = R.string.behance_sdk_permissions_error;
                        } else if (iArr[0] != 0) {
                            i2 = R.string.behance_sdk_permissions_error_camera;
                        } else {
                            i2 = R.string.behance_sdk_permissions_error_generic;
                        }
                    } else if (iArr.length == 1) {
                        i2 = R.string.behance_sdk_permissions_error_generic;
                    }
                    Toast.makeText(this, getString(i2), 1).show();
                }
                break;
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionFinished(List<ImageModule> list) {
        BehanceSDKProjectPublishWFManager.getInstance().addImagesSelectedForProject(list);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionCanceled() {
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionBackPressed() {
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorOnError(Exception exc) {
    }

    @Override // com.behance.sdk.ui.activities.BehanceSDKBasePublishActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (!this.requestingPermission) {
            super.onSaveInstanceState(bundle);
            bundle.putInt(BUNDLE_KEY_CURRENT_PAGE_NUMBER, this.publishProjectScreens.getDisplayedChild());
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.publishProjectScreens.getDisplayedChild() != 0) {
            addShowPreviousAnimations();
            this.publishProjectScreens.showPrevious();
            return;
        }
        BehanceSDKProjectPublishWFManager behanceSDKProjectPublishWFManager = BehanceSDKProjectPublishWFManager.getInstance();
        behanceSDKProjectPublishWFManager.cancelWorkflow();
        if (behanceSDKProjectPublishWFManager.getPublishListener() != null) {
            behanceSDKProjectPublishWFManager.getPublishListener().onCancel();
        }
        AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypePublishUXCancel, AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetBehanceProject);
        closeThisActivity(true);
    }

    private void addValidImageModulesToWFManager() {
        List<ImageModule> list = (List) getIntent().getSerializableExtra(INTENT_SERIALIZABLE_EXTRA_PROJECT_IMAGE_MODULES);
        if (list != null && !list.isEmpty()) {
            BehanceSDKProjectPublishWFManager.getInstance().addImagesSelectedForProject(list);
        }
    }

    private void addProjectDetailsToWFManager() {
        Intent intent = getIntent();
        BehanceSDKProjectPublishWFManager behanceSDKProjectPublishWFManager = BehanceSDKProjectPublishWFManager.getInstance();
        behanceSDKProjectPublishWFManager.initializeProject();
        behanceSDKProjectPublishWFManager.setProjectTitle(intent.getStringExtra(INTENT_SERIALIZABLE_EXTRA_PROJECT_TITLE));
        behanceSDKProjectPublishWFManager.setProjectDescription(intent.getStringExtra(INTENT_SERIALIZABLE_EXTRA_PROJECT_DESC));
        behanceSDKProjectPublishWFManager.setProjectTags(intent.getStringExtra(INTENT_SERIALIZABLE_EXTRA_PROJECT_TAGS));
        BehanceSDKCopyrightOption behanceSDKCopyrightOption = (BehanceSDKCopyrightOption) intent.getSerializableExtra(INTENT_SERIALIZABLE_EXTRA_PROJECT_COPYRIGHT_SETTINGS);
        if (behanceSDKCopyrightOption != null) {
            behanceSDKProjectPublishWFManager.setCopyrightOption(behanceSDKCopyrightOption);
        }
        behanceSDKProjectPublishWFManager.setContainsAdultContent(intent.getBooleanExtra(INTENT_SERIALIZABLE_EXTRA_PROJECT_CONTAINS_ADULT_CONTENT, false));
        List<BehanceSDKCreativeFieldDTO> list = (List) intent.getSerializableExtra(INTENT_SERIALIZABLE_EXTRA_PROJECT_CREATIVE_FIELDS);
        if (list != null && !list.isEmpty()) {
            behanceSDKProjectPublishWFManager.setProjectFields(list);
        }
    }

    @Override // com.behance.sdk.ui.activities.BehanceSDKBasePublishActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        getSupportFragmentManager().findFragmentById(R.id.bsdkPublishProjectPreviewFragment).onActivityResult(i, i2, intent);
    }

    public boolean getCCAssetBrowserDisabled() {
        Intent intent = getIntent();
        if (intent != null) {
            return intent.getBooleanExtra(INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED, false);
        }
        return false;
    }
}
