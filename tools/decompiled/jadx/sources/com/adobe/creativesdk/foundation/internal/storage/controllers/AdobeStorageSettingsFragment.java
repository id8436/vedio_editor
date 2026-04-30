package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.actionbar.AdobeUxActionBarController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public class AdobeStorageSettingsFragment extends Fragment {
    private LinearLayout _editCCSettings;
    private boolean _fragmentStopped;
    private RelativeLayout _settings_container;
    private LinearLayout _switchAccounts;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(false);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        AdobeUxActionBarController.setTitle(getResources().getString(R.string.adobe_csdk_uxassetbrowser_myacount));
        View viewInflate = layoutInflater.inflate(R.layout.adobe_storage_settings_fragment, viewGroup, false);
        setHasOptionsMenu(true);
        this._switchAccounts = (LinearLayout) viewInflate.findViewById(R.id.adobe_csdk_storage_settings_switchAccounts);
        this._switchAccounts.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeStorageSettingsFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                view.setEnabled(false);
                AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ASSET_BROWSER_USER_SIGNOUT);
            }
        });
        this._editCCSettings = (LinearLayout) viewInflate.findViewById(R.id.adobe_csdk_storage_settings_editCCSettings);
        this._editCCSettings.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeStorageSettingsFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeStorageSettingsFragment.this.OpenURLinBrowser(view, "https://accounts.adobe.com");
            }
        });
        getUserAccountInfo(viewInflate);
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.clear();
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        AdobeCSDKActionBarController.setTitle(getActivity().findViewById(android.R.id.content), getString(R.string.adobe_csdk_uxassetbrowser_sdk_myaccount));
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this._fragmentStopped = false;
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this._fragmentStopped = true;
    }

    public boolean onBackPressed() {
        return false;
    }

    private void disableLinks() {
        this._editCCSettings.setEnabled(false);
    }

    private void getUserAccountInfo(final View view) {
        AdobeAuthUserProfile userProfile = AdobeUXAuthManager.getSharedAuthManager().getUserProfile();
        ((TextView) view.findViewById(R.id.adobe_csdk_storage_settings_userName)).setText(userProfile.getDisplayName());
        ((TextView) view.findViewById(R.id.adobe_csdk_storage_settings_userEmailId)).setText(userProfile.getEmail());
        AdobeCloud adobeCloud = (AdobeCloud) getArguments().getSerializable("ADOBE_CLOUD");
        if (adobeCloud.isQuotaEnabled()) {
            ((AdobeStorageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage)).getQuotaInformationOnCompletion(new IAdobeStorageSessionQuotaCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeStorageSettingsFragment.3
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback
                public void onCompletion(Number number, Number number2, Number number3) {
                    if (!AdobeStorageSettingsFragment.this._fragmentStopped && number != null && number2 != null && number3 != null) {
                        TextView textView = (TextView) view.findViewById(R.id.adobe_csdk_storage_settings_storageUsage);
                        double dDoubleValue = (number.doubleValue() / number3.doubleValue()) * 100.0d;
                        double d2 = dDoubleValue <= 100.0d ? dDoubleValue : 100.0d;
                        textView.setText(String.format(AdobeStorageSettingsFragment.this.getString(R.string.adobe_csdk_storage_settings_storage_usage), String.format("%.2f%%", Double.valueOf(d2 >= 0.0d ? d2 : 0.0d)), String.format("%.2f", Double.valueOf(number.doubleValue())), String.format("%.2f", Double.valueOf(number3.doubleValue()))));
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                }
            }, new Handler());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OpenURLinBrowser(View view, String str) {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e2) {
        }
    }
}
