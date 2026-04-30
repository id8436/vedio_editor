package com.behance.sdk.ui.activities;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.behance.sdk.BehanceSDKSocialAccountManager;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKSocialAccountType;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.dialogs.BehanceSDKGenericAlertDialog;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKUnlinkSocialAccountActivity extends FragmentActivity implements View.OnClickListener {
    private BehanceSDKGenericAlertDialog confirmationDialog;
    private BehanceSDKSocialAccountType socialAccountType;
    public static String INTENT_EXTRA_ACCOUNT_TYPE_NAME = "INTENT_PARAMS_ACCOUNT_TYPE_NAME";
    public static int RESULT_CODE_ACCOUNT_UNLINK_SUCCESSFUL = 20;
    public static int RESULT_CODE_ACCOUNT_UNLINK_CANCELLED = 21;
    public static int RESULT_CODE_ACCOUNT_UNLINK_FAILED = 22;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKUnlinkSocialAccountActivity.class);

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bsdk_activity_unlink_social_account);
        this.socialAccountType = BehanceSDKSocialAccountType.fromName(getIntent().getStringExtra(INTENT_EXTRA_ACCOUNT_TYPE_NAME));
        if (this.socialAccountType != null) {
            displayConfirmationDialog();
        } else {
            closeThisActivity(RESULT_CODE_ACCOUNT_UNLINK_CANCELLED);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeThisActivity(int i) {
        setResult(i, getIntent());
        finish();
    }

    private void displayConfirmationDialog() {
        int i = R.string.bsdk_social_account_unlink_twitter_account_confirmation_title;
        int i2 = R.string.bsdk_social_account_unlink_twitter_account_confirmation_body;
        int i3 = R.string.bsdk_social_account_unlink_twitter_account_confirmation_ok_btn_label;
        int i4 = R.string.bsdk_social_account_unlink_twitter_account_confirmation_cancel_btn_label;
        if (this.socialAccountType == BehanceSDKSocialAccountType.FACEBOOK) {
            i = R.string.bsdk_social_account_unlink_facebook_account_confirmation_title;
            i2 = R.string.bsdk_social_account_unlink_facebook_account_confirmation_body;
            i3 = R.string.bsdk_social_account_unlink_facebook_account_confirmation_ok_btn_label;
            i4 = R.string.bsdk_social_account_unlink_facebook_account_confirmation_cancel_btn_label;
        }
        this.confirmationDialog = BehanceSDKGenericAlertDialog.getInstance(this, i, i2, i3, i4);
        this.confirmationDialog.setOnNotOKBtnClickListener(this);
        this.confirmationDialog.setOnOKBtnClickListener(this);
        this.confirmationDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKUnlinkSocialAccountActivity.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                BehanceSDKUnlinkSocialAccountActivity.this.closeThisActivity(BehanceSDKUnlinkSocialAccountActivity.RESULT_CODE_ACCOUNT_UNLINK_CANCELLED);
            }
        });
        this.confirmationDialog.show();
    }

    private void closeConfirmationDialog(int i) {
        if (this.confirmationDialog != null) {
            this.confirmationDialog.dismiss();
        }
        closeThisActivity(i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdkGenericAlertDialogOKBtn) {
            if (unlinkSocialAccount()) {
                closeConfirmationDialog(RESULT_CODE_ACCOUNT_UNLINK_SUCCESSFUL);
                return;
            } else {
                closeConfirmationDialog(RESULT_CODE_ACCOUNT_UNLINK_FAILED);
                return;
            }
        }
        if (view.getId() == R.id.bsdkGenericAlertDialogNotOKBtn) {
            closeConfirmationDialog(RESULT_CODE_ACCOUNT_UNLINK_CANCELLED);
        }
    }

    private boolean unlinkSocialAccount() {
        try {
            BehanceSDKSocialAccountManager.getInstance().revokeAccountAccess(this.socialAccountType, this);
            logger.debug("Unlinked social account. [Account Type - %s]", this.socialAccountType.name());
            return true;
        } catch (Throwable th) {
            logger.error(th, "Problem unlinking social account. [Account Type - %s]", this.socialAccountType.name());
            return false;
        }
    }
}
