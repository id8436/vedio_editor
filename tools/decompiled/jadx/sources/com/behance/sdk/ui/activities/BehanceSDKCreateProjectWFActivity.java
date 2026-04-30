package com.behance.sdk.ui.activities;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKImageSelectorOptions;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.R;
import com.behance.sdk.factory.BehanceSDKImageValidatorFactory;
import com.behance.sdk.managers.BehanceSDKProjectPublishWFManager;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.ui.fragments.BehanceSDKELWFragment;
import com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKFragmentTags;
import com.behance.sdk.util.BehanceSDKLaunchUtil;
import com.behance.sdk.util.BehanceSDKUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKCreateProjectWFActivity extends BehanceSDKBasePublishActivity implements BehanceSDKELWFragment.EnterpriseUserWarningDialogCallbacks, BehanceSDKImageSelectorDialogFragment.Callbacks {
    private void displayNoInternetConnectivity() {
        Toast.makeText(this, getString(R.string.bsdk_connection_error_msg), 1).show();
        finish();
    }

    @Override // com.behance.sdk.ui.activities.BehanceSDKBasePublishActivity
    public void continueWithWorkflow() {
        launchImageSelectionDialog();
    }

    @Override // com.behance.sdk.ui.activities.BehanceSDKBasePublishActivity
    protected IBehanceSDKUserCredentials getBehanceSDKUserCredentials() {
        return BehanceSDKProjectPublishWFManager.getInstance().getUserCredentials();
    }

    @Override // com.behance.sdk.ui.activities.BehanceSDKBasePublishActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BehanceSDK behanceSDK = BehanceSDK.getInstance();
        setContentView(R.layout.bsdk_activity_publish_project_with_image_selection);
        if (!behanceSDK.useBehanceTheme() && !getResources().getBoolean(R.bool.isTablet)) {
            setRequestedOrientation(behanceSDK.getBehanceSDKCustomResourcesOptions().getPhoneOrientation());
        }
        if (bundle == null) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                displayNoInternetConnectivity();
            }
            if (!CanContinueWithWokflow()) {
                launchImageSelectionDialog();
                return;
            }
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(BehanceSDKFragmentTags.FRAGMENT_TAG_ENTERPRISE_USER_WARNING_FRAGMENT);
        if (fragmentFindFragmentByTag instanceof BehanceSDKELWFragment) {
            ((BehanceSDKELWFragment) fragmentFindFragmentByTag).setCallbacks(this);
        }
        Fragment fragmentFindFragmentByTag2 = supportFragmentManager.findFragmentByTag(BehanceSDKFragmentTags.FRAGMENT_TAG_ADD_PROJECT_ALBUM_SELECTION_FRAGMENT);
        if (fragmentFindFragmentByTag2 instanceof BehanceSDKImageSelectorDialogFragment) {
            ((BehanceSDKImageSelectorDialogFragment) fragmentFindFragmentByTag2).setCallbacks(this);
        }
    }

    public void launchImageSelectionDialog() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        BehanceSDKImageSelectorOptions unlimitedImageSelectionOptions = BehanceSDKImageSelectorOptions.getUnlimitedImageSelectionOptions();
        unlimitedImageSelectionOptions.setMaxImageSizeInBytes(BehanceSDKConstants.PROJECT_IMAGE_MODULE_MAX_SIZE_BYTES);
        unlimitedImageSelectionOptions.setAllowedFileExtensions(BehanceSDKUtils.getAllowedFileExtensionsForProjectImage());
        unlimitedImageSelectionOptions.setImageValidatorType(BehanceSDKImageValidatorFactory.PUBLISH_PROJECT_IMAGE_VALIDATOR);
        BehanceSDKLaunchUtil.launchAlbumsViewToPickPicture(this, unlimitedImageSelectionOptions, supportFragmentManager, BehanceSDKFragmentTags.FRAGMENT_TAG_ADD_PROJECT_ALBUM_SELECTION_FRAGMENT);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionFinished(List<ImageModule> list) {
        BehanceSDKProjectPublishWFManager.getInstance().addImagesSelectedForProject(list);
        startPublishProjectWorkflow();
    }

    private void startPublishProjectWorkflow() {
        startActivity(new Intent(this, (Class<?>) BehanceSDKPublishProjectActivity.class));
        finish();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionCanceled() {
        startPublishProjectWorkflow();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionBackPressed() {
        AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypePublishUXCancel, AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetBehanceProject);
        finish();
        BehanceSDKProjectPublishWFManager behanceSDKProjectPublishWFManager = BehanceSDKProjectPublishWFManager.getInstance();
        if (behanceSDKProjectPublishWFManager.getPublishListener() != null) {
            behanceSDKProjectPublishWFManager.getPublishListener().onCancel();
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorOnError(Exception exc) {
        finish();
    }
}
