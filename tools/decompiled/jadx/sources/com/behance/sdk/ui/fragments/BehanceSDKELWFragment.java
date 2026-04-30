package com.behance.sdk.ui.fragments;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKELWFragment extends DialogFragment {
    private ImageView backButton;
    private EnterpriseUserWarningDialogCallbacks callbacks;
    private View cancelButton;
    private View continueButton;
    private View rootView;

    public interface EnterpriseUserWarningDialogCallbacks {
        void onBackButtonPressed();

        void onCancelButtonPressed();

        void onContinueButtonPressed();
    }

    public void setCallbacks(EnterpriseUserWarningDialogCallbacks enterpriseUserWarningDialogCallbacks) {
        this.callbacks = enterpriseUserWarningDialogCallbacks;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkEnterpriseLoginWarningTheme);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.bsdk_dialog_fragment_enterprise_login_warning_for_publish, viewGroup, false);
        this.continueButton = this.rootView.findViewById(R.id.bsdkEnterpriseLoginWarningContinueButton);
        this.cancelButton = this.rootView.findViewById(R.id.bsdkEnterpriseLoginWarningCancelButton);
        this.backButton = (ImageView) this.rootView.findViewById(R.id.bsdkPublishProjectTitlebarBackBtnImageView);
        this.continueButton.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKELWFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKELWFragment.this.dismiss();
                if (BehanceSDKELWFragment.this.callbacks != null) {
                    BehanceSDKELWFragment.this.callbacks.onContinueButtonPressed();
                }
            }
        });
        this.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKELWFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKELWFragment.this.dismiss();
                if (BehanceSDKELWFragment.this.callbacks != null) {
                    BehanceSDKELWFragment.this.callbacks.onCancelButtonPressed();
                }
            }
        });
        this.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKELWFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKELWFragment.this.dismiss();
                if (BehanceSDKELWFragment.this.callbacks != null) {
                    BehanceSDKELWFragment.this.callbacks.onBackButtonPressed();
                }
            }
        });
        ((TextView) this.rootView.findViewById(R.id.bsdkPublishProjectTitlebarTitleTxtView)).setText(R.string.bsdk_enterprise_login_warning_actionbar_title);
        this.rootView.findViewById(R.id.bsdkPublishProjectTitlebarActionBtnTxtView).setVisibility(8);
        return this.rootView;
    }
}
