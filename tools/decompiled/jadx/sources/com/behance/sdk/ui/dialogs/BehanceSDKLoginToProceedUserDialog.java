package com.behance.sdk.ui.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKLoginToProceedUserDialog extends BehanceSDKGenericAlertDialog implements View.OnClickListener {
    private Context context;
    private String messageText;

    private String getMessageText() {
        return this.messageText;
    }

    private void setMessageText(String str) {
        this.messageText = str;
    }

    public BehanceSDKLoginToProceedUserDialog(Context context) {
        super(context);
    }

    public BehanceSDKLoginToProceedUserDialog(Context context, String str) {
        super(context);
        setMessageText(str);
        this.context = context;
    }

    public static BehanceSDKLoginToProceedUserDialog getLoginToProceedDialogInstance(Context context, String str) {
        BehanceSDKLoginToProceedUserDialog behanceSDKLoginToProceedUserDialog = new BehanceSDKLoginToProceedUserDialog(context, str);
        behanceSDKLoginToProceedUserDialog.setTitleResourceId(R.string.bsdk_login_to_proceed_dialog_title);
        behanceSDKLoginToProceedUserDialog.setOkBtnLabelResourceId(R.string.bsdk_login_to_proceed_login_button_text);
        behanceSDKLoginToProceedUserDialog.setNotOKBtnLabelResourceId(R.string.bsdk_login_to_proceed_ignore_button_text);
        return behanceSDKLoginToProceedUserDialog;
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKGenericAlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        setOnOKBtnClickListener(this);
        setOnNotOKBtnClickListener(this);
        super.onCreate(bundle);
        ((TextView) findViewById(R.id.bsdkGenericAlertDialogBodyTxtView)).setText(getMessageText());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdkGenericAlertDialogNotOKBtn) {
            loginToFollowUserCancelButtonClicked();
        } else if (view.getId() == R.id.bsdkGenericAlertDialogOKBtn) {
            loginToFollowUserLoginButtonClicked();
        }
    }

    private void displayLoginView() {
        if (this.context != null) {
        }
    }

    private void dismissLoginToFollowAlertDialog() {
        dismiss();
    }

    private void loginToFollowUserLoginButtonClicked() {
        displayLoginView();
        dismissLoginToFollowAlertDialog();
    }

    private void loginToFollowUserCancelButtonClicked() {
        dismissLoginToFollowAlertDialog();
    }
}
