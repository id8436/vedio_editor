package com.adobe.creativeapps.settings.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.SwitchCompat;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativeapps.settings.R;
import com.adobe.creativeapps.settings.utils.CircleTransform;
import com.adobe.creativeapps.settings.utils.CreativeCloudSource;
import com.adobe.creativeapps.settings.utils.UserProfileHandler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic;
import com.adobe.creativesdk.foundation.internal.collaboration.models.IAdobeProfilePicCallback;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.alertdialogpro.b;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKUserProfile;
import com.behance.sdk.IBehanceSDKEditProfileListener;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.h.a.d;
import com.k.a.ak;
import com.sage42.android.view.ui.CircularProgressBar;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class ProfileFragment extends Fragment implements CreativeCloudSource.ICreativeCloudLogoutCallback {
    private AdobeUXAuthManagerRestricted _authManagerRestricted;
    private ICCAppSettingsPreference ccAppSettingsPreference;
    private b logoutDialog;
    private Activity mActivity;
    private TextView mAddressTextView;
    private TextView mChnageCloudView;
    private TextView mCompanyNameTextView;
    private View mPrivateCloudView;
    private ImageView mProfileAccountImageView;
    private TextView mProfileNameTextView;
    private TextView mProfileStorageSubscriptionStatus;
    private TextView mProfileSubscriptionStatus;
    private TextView mRoleNameTextView;
    private UserProfileHandler mSharedInstance;
    private TextView mStorageCloudName;
    private TextView mStorageInfoTextView;
    private CircularProgressBar mStorageUsageProgressBar;
    private TextView mTitle;
    private Toolbar mToolbar;
    private BehanceSDKUserProfile mUserProfile;
    private Integer CLOUD_CHANGE_REQUEST_CODE = 100;
    IAdobeAuthLogoutObserver mLogoutClient = null;
    private CircleTransform ct = new CircleTransform();

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View viewInflate = layoutInflater.inflate(R.layout.activity_profile, viewGroup, false);
        d.a(viewInflate);
        this.mActivity = getActivity();
        this.mProfileAccountImageView = (ImageView) viewInflate.findViewById(R.id.profileAccountImageView);
        this.mProfileNameTextView = (TextView) viewInflate.findViewById(R.id.profileNameTextView);
        this.mRoleNameTextView = (TextView) viewInflate.findViewById(R.id.roleNameTextView);
        this.mCompanyNameTextView = (TextView) viewInflate.findViewById(R.id.companyNameTextView);
        this.mAddressTextView = (TextView) viewInflate.findViewById(R.id.addressTextView);
        this.mProfileSubscriptionStatus = (TextView) viewInflate.findViewById(R.id.profileSubscriptionStatus);
        this.mStorageCloudName = (TextView) viewInflate.findViewById(R.id.private_cloud_name);
        this.mStorageInfoTextView = (TextView) viewInflate.findViewById(R.id.storageInfoTextView);
        this.mStorageUsageProgressBar = (CircularProgressBar) viewInflate.findViewById(R.id.storageUsageProgressBar);
        this.mChnageCloudView = (TextView) viewInflate.findViewById(R.id.cloud_selection_text);
        this.mPrivateCloudView = viewInflate.findViewById(R.id.private_cloud_info);
        this._authManagerRestricted = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted();
        boolean z = getArguments().getBoolean(getStringWrapped(R.string.syncOnlyOnWifi), true);
        SwitchCompat switchCompat = (SwitchCompat) viewInflate.findViewById(R.id.backupOnMobileDataSwitch);
        switchCompat.setChecked(!z);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                ProfileFragment.this.ccAppSettingsPreference.setSyncEnabledOnlyOnWifi(!z2);
            }
        });
        ak.a((Context) getActivity()).a(R.drawable.settings_sa).a(new CircleTransform()).a(this.mProfileAccountImageView);
        this.mSharedInstance = null;
        this.mUserProfile = null;
        this.mChnageCloudView.setVisibility(4);
        AdobeCloudManager.getSharedCloudManager().refreshClouds(new IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>>() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobeCloud> arrayList) {
                if (arrayList.size() >= 2) {
                    ProfileFragment.this.mChnageCloudView.setVisibility(0);
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                ProfileFragment.this.mChnageCloudView.setVisibility(0);
            }
        }, new Handler());
        if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud().isPrivateCloud()) {
            this.mStorageInfoTextView.setVisibility(8);
            this.mStorageUsageProgressBar.setVisibility(8);
            this.mProfileSubscriptionStatus.setVisibility(8);
            this.mPrivateCloudView.setVisibility(0);
            this.mStorageCloudName.setText(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getName());
        } else {
            updateCCStorageInfo(false);
            this.mPrivateCloudView.setVisibility(8);
            this.mStorageUsageProgressBar.setVisibility(0);
            this.mStorageInfoTextView.setVisibility(0);
            this.mProfileSubscriptionStatus.setVisibility(0);
        }
        this.mChnageCloudView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProfileFragment.this.startActivityForResult(new Intent(ProfileFragment.this.getActivity(), (Class<?>) CloudPickerActivity.class), ProfileFragment.this.CLOUD_CHANGE_REQUEST_CODE.intValue());
            }
        });
        this.mLogoutClient = new IAdobeAuthLogoutObserver() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.5
            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver
            public void onSuccess() {
                ProfileFragment.this.handleLogout();
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver
            public void onError(AdobeAuthException adobeAuthException) {
                Log.e("ProfileActivity", "Error in Logout: " + adobeAuthException);
                ProfileFragment.this.logoutDialog.dismiss();
                Toast.makeText(ProfileFragment.this.getActivity(), ProfileFragment.this.getStringWrapped(R.string.error_toast_logout), 1).show();
            }
        };
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.clear();
        menuInflater.inflate(R.menu.menu_profile, menu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProfilePic(String str) {
        AdobeGetUserProfilePic.getAvatarFromURL(str, new IAdobeProfilePicCallback() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.6
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.IAdobeProfilePicCallback
            public void onComplete(Bitmap bitmap) {
                if (bitmap != null) {
                    ProfileFragment.this.mProfileAccountImageView.setImageBitmap(ProfileFragment.this.ct.transform(bitmap.copy(bitmap.getConfig(), true)));
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.IAdobeProfilePicCallback
            public void onError() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBehanceProfileData(BehanceSDKUserProfile behanceSDKUserProfile) {
        if (behanceSDKUserProfile != null) {
            this.mProfileNameTextView.setText(behanceSDKUserProfile.getFirstName() + " " + behanceSDKUserProfile.getLastName());
            this.mRoleNameTextView.setText(behanceSDKUserProfile.getOccupation() != null ? behanceSDKUserProfile.getOccupation() + IOUtils.LINE_SEPARATOR_UNIX : "");
            this.mCompanyNameTextView.setText(behanceSDKUserProfile.getCompany() != null ? behanceSDKUserProfile.getCompany() + IOUtils.LINE_SEPARATOR_UNIX : "");
            this.mAddressTextView.setText((behanceSDKUserProfile.getCity() != null ? behanceSDKUserProfile.getCity().getDisplayName() + ", " : "") + (behanceSDKUserProfile.getState() != null ? behanceSDKUserProfile.getState().getDisplayName() + ", " : "") + (behanceSDKUserProfile.getCountry() != null ? behanceSDKUserProfile.getCountry().getDisplayName() : ""));
        }
    }

    private void updateCCStorageInfo(final boolean z) {
        clearStorageInfo();
        AdobeStorageSession adobeStorageSession = (AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        if (adobeStorageSession != null) {
            adobeStorageSession.getQuotaInformationOnCompletion(new IAdobeStorageSessionQuotaCallback() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.7
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback
                public void onCompletion(Number number, Number number2, Number number3) {
                    float fFloatValue;
                    String str;
                    ProfileFragment.this.mStorageUsageProgressBar.setProgress((int) ((number.floatValue() / number3.floatValue()) * 100.0f));
                    ProfileFragment.this.mStorageUsageProgressBar.setShowText(true);
                    String str2 = "" + number3.intValue();
                    if (number.floatValue() < 1.0f) {
                        fFloatValue = 1024.0f * number.floatValue();
                        str = "MB";
                    } else {
                        fFloatValue = number.floatValue();
                        str = "GB";
                    }
                    String str3 = String.format("%.01f", Float.valueOf(fFloatValue));
                    if (ProfileFragment.this.mStorageInfoTextView.getVisibility() == 0) {
                        ProfileFragment.this.mStorageInfoTextView.setText(str3 + str + " / " + str2 + "GB");
                    }
                    if (ProfileFragment.this._authManagerRestricted.getUserProfile() == null || !AdobeCloudManager.getSharedCloudManager().getDefaultCloud().isPrivateCloud()) {
                        if (number3.doubleValue() > 2.0d) {
                            ProfileFragment.this.mProfileSubscriptionStatus.setText(ProfileFragment.this.getStringWrapped(R.string.IDS_SETTINGS_CREATIVE_CLOUD_SUBSCRIBER));
                        } else {
                            ProfileFragment.this.mProfileSubscriptionStatus.setText(ProfileFragment.this.getStringWrapped(R.string.IDS_SETTINGS_CREATIVE_CLOUD_FREE));
                        }
                    } else if (ProfileFragment.this.mPrivateCloudView.getVisibility() == 0) {
                        ProfileFragment.this.mStorageCloudName.setText(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getName());
                    }
                    if (z) {
                        ProfileFragment.this.ccAppSettingsPreference.changeCloud();
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    Log.e("ProfileActivity", "Error in fetching storage info", adobeCSDKException);
                }
            }, new Handler());
        }
    }

    private void clearStorageInfo() {
        this.mStorageUsageProgressBar.setShowText(false);
        if (this.mStorageInfoTextView.getVisibility() == 0) {
            this.mStorageInfoTextView.setText("");
        }
        if (this.mPrivateCloudView.getVisibility() == 0) {
            this.mProfileSubscriptionStatus.setText("");
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_edit) {
            return true;
        }
        if (itemId == R.id.action_logout) {
            logOut();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void editProfile() {
        BehanceSDK behanceSDK = BehanceSDK.getInstance();
        behanceSDK.initialize(new IBehanceSDKUserCredentials() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.8
            public boolean isEnterpriseUser() {
                AdobeAuthUserProfile userProfile = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getUserProfile();
                if (userProfile == null) {
                    return false;
                }
                return userProfile.isEnterpriseUser();
            }

            public boolean isBehanceAuth() {
                return false;
            }

            @Override // com.behance.sdk.IBehanceSDKUserCredentials
            public String getUserBehanceAccountId() {
                return AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
            }

            @Override // com.behance.sdk.IBehanceSDKUserCredentials
            public String getUserAdobeAccountId() {
                return AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
            }

            public String getUserAccessToken() {
                String accessToken = AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken();
                if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().isAuthenticated() || accessToken == null) {
                    AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().reAuthenticate();
                    return AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken();
                }
                return accessToken;
            }

            @Override // com.behance.sdk.IBehanceSDKUserCredentials
            public String getClientId() {
                return AdobeAuthIdentityManagementService.getSharedInstance().getClientID();
            }
        }, getActivity().getApplicationContext());
        try {
            behanceSDK.launchEditProfileWorkFlow(getActivity(), new IBehanceSDKEditProfileListener() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.9
                @Override // com.behance.sdk.IBehanceSDKEditProfileListener
                public void onEditProfileSuccess() {
                }

                @Override // com.behance.sdk.IBehanceSDKEditProfileListener
                public void onEditProfileFailure() {
                    Log.e("ProfileActivity", "Error in Edit Profile");
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (!CreativeCloudSource.getInstance().isLoggedIn()) {
            handleLogout();
        } else {
            new UserProfileHandler.IAdobeGetUserProfileListener() { // from class: com.adobe.creativeapps.settings.activity.ProfileFragment.10
                @Override // com.adobe.creativeapps.settings.utils.UserProfileHandler.IAdobeGetUserProfileListener
                public void onGetUserProfileSuccess() {
                    ProfileFragment.this.mUserProfile = ProfileFragment.this.mSharedInstance.getUserProfile();
                    ProfileFragment.this.updateProfilePic(ProfileFragment.this.mUserProfile.getProfileImageUrl());
                    ProfileFragment.this.updateBehanceProfileData(ProfileFragment.this.mUserProfile);
                }
            };
            AdobeAuthManager.sharedAuthManager().registerLogoutClient(this.mLogoutClient);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        AdobeAuthManager.sharedAuthManager().unregisterLogoutClient(this.mLogoutClient);
    }

    private void logOut() {
        this.ccAppSettingsPreference.showLogoutDialog();
    }

    public void onLogoutAccepted() {
        this.logoutDialog = b.a(getActivity(), null, getStringWrapped(R.string.signing_out));
        CreativeCloudSource.getInstance().logout(this);
    }

    @Override // com.adobe.creativeapps.settings.utils.CreativeCloudSource.ICreativeCloudLogoutCallback
    public void didLogout(AdobeAuthException adobeAuthException) {
        if (adobeAuthException != null) {
            Log.e("ProfileActivity", "Error in Logout: " + adobeAuthException);
        } else {
            this.ccAppSettingsPreference.handleLogout();
        }
    }

    public void handleLogout() {
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == this.CLOUD_CHANGE_REQUEST_CODE.intValue() && i2 == -1) {
            if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud().isPrivateCloud()) {
                this.mStorageInfoTextView.setVisibility(8);
                this.mStorageUsageProgressBar.setVisibility(8);
                this.mProfileSubscriptionStatus.setVisibility(8);
                this.mPrivateCloudView.setVisibility(0);
                this.mStorageCloudName.setText(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getName());
                this.ccAppSettingsPreference.changeCloud();
                return;
            }
            this.ccAppSettingsPreference.changeCloud();
            updateCCStorageInfo(false);
            this.mPrivateCloudView.setVisibility(8);
            this.mStorageUsageProgressBar.setVisibility(0);
            this.mStorageInfoTextView.setVisibility(0);
            this.mProfileSubscriptionStatus.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.ccAppSettingsPreference = (ICCAppSettingsPreference) activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getStringWrapped(int i) {
        FragmentActivity activity = getActivity();
        return (activity == null || !isAdded()) ? "" : activity.getString(i);
    }
}
