package com.behance.sdk.ui.activities;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.ui.fragments.BehanceSDKELWFragment;
import com.behance.sdk.util.BehanceSDKFragmentTags;
import com.i.a.b.g;
import com.i.a.b.j;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BehanceSDKBasePublishActivity extends FragmentActivity implements BehanceSDKELWFragment.EnterpriseUserWarningDialogCallbacks {
    public static final int ACTIVITY_RESULT_REQUEST_CODE_CLOUD_SELECTION = 6778;
    private static final String KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE = "KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE";
    protected static final String SHARED_PREFERENCES_FILE_NAME = "BEHANCE_SDK_PUBLISH_ENTERPRISE_WARNING_SHARED_PREFERENES_KEY";
    protected static final String SP_KEY_ENTERPRISE_USER_WARNING_SHOWN = "SP_KEY_ENTERPRISE_USER_WARNING_SHOWN";
    private volatile boolean isWarningScreenVisible = false;
    private volatile boolean isCloudPickerLaunched = false;

    protected abstract IBehanceSDKUserCredentials getBehanceSDKUserCredentials();

    protected String getUserBehanceAccountId() {
        return getBehanceSDKUserCredentials().getUserBehanceAccountId();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE, this.isWarningScreenVisible);
        bundle.putBoolean(KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE, this.isCloudPickerLaunched);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initializeImageLoader();
        if (bundle != null) {
            this.isWarningScreenVisible = bundle.getBoolean(KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE, false);
            Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(BehanceSDKFragmentTags.FRAGMENT_TAG_ENTERPRISE_USER_WARNING_FRAGMENT);
            if (fragmentFindFragmentByTag instanceof BehanceSDKELWFragment) {
                ((BehanceSDKELWFragment) fragmentFindFragmentByTag).setCallbacks(this);
                return;
            }
            return;
        }
        if (BehanceSDKUserManager.getInstance().isUserAnEnterpriseUser()) {
            SharedPreferences sharedPreference = getSharedPreference();
            String str = SP_KEY_ENTERPRISE_USER_WARNING_SHOWN + getUserBehanceAccountId();
            if (!sharedPreference.getBoolean(str, false)) {
                showEnterpriseUserWarningScreen(sharedPreference, str);
            }
            if (!this.isWarningScreenVisible && !isDefaultCloudSet()) {
                launchCloudPicker();
            }
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 6778) {
            this.isCloudPickerLaunched = false;
            continueWithWorkflow();
        }
    }

    private void launchCloudPicker() {
        this.isCloudPickerLaunched = true;
        startActivityForResult(new Intent(this, (Class<?>) BehanceSDKAdobeCloudSelectionActivity.class), ACTIVITY_RESULT_REQUEST_CODE_CLOUD_SELECTION);
    }

    private boolean isDefaultCloudSet() {
        return AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null;
    }

    public void continueWithWorkflow() {
    }

    private void showEnterpriseUserWarningScreen(SharedPreferences sharedPreferences, String str) {
        this.isWarningScreenVisible = true;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(BehanceSDKFragmentTags.FRAGMENT_TAG_ENTERPRISE_USER_WARNING_FRAGMENT);
        if (fragmentFindFragmentByTag != null) {
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
        }
        fragmentTransactionBeginTransaction.addToBackStack(null);
        BehanceSDKELWFragment behanceSDKELWFragment = new BehanceSDKELWFragment();
        behanceSDKELWFragment.setCallbacks(this);
        behanceSDKELWFragment.show(fragmentTransactionBeginTransaction, BehanceSDKFragmentTags.FRAGMENT_TAG_ENTERPRISE_USER_WARNING_FRAGMENT);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean(str, true);
        editorEdit.commit();
    }

    private SharedPreferences getSharedPreference() {
        return getSharedPreferences("BEHANCE_SDK_PUBLISH_ENTERPRISE_WARNING_SHARED_PREFERENES_KEY_" + getApplicationInfo().name, 0);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKELWFragment.EnterpriseUserWarningDialogCallbacks
    public void onContinueButtonPressed() {
        this.isWarningScreenVisible = false;
        if (!isDefaultCloudSet()) {
            launchCloudPicker();
        } else {
            continueWithWorkflow();
        }
    }

    public boolean CanContinueWithWokflow() {
        return this.isWarningScreenVisible || this.isCloudPickerLaunched;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKELWFragment.EnterpriseUserWarningDialogCallbacks
    public void onCancelButtonPressed() {
        finish();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKELWFragment.EnterpriseUserWarningDialogCallbacks
    public void onBackButtonPressed() {
        finish();
    }

    private void initializeImageLoader() {
        if (!g.a().b()) {
            g.a().a(j.a(this));
        }
    }
}
