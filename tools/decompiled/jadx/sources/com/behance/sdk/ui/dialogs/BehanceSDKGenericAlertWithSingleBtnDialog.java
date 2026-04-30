package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGenericAlertWithSingleBtnDialog extends Dialog implements DialogInterface.OnDismissListener {
    private View.OnClickListener btnClickListener;
    private int btnLabelResourceId;
    private int contentResourceId;
    private Button okButton;
    private int titleResourceId;

    public static BehanceSDKGenericAlertWithSingleBtnDialog getInstance(Context context, int i, int i2, int i3) {
        BehanceSDKGenericAlertWithSingleBtnDialog behanceSDKGenericAlertWithSingleBtnDialog = new BehanceSDKGenericAlertWithSingleBtnDialog(context);
        behanceSDKGenericAlertWithSingleBtnDialog.setTitleResourceId(i);
        behanceSDKGenericAlertWithSingleBtnDialog.setContentResourceId(i2);
        behanceSDKGenericAlertWithSingleBtnDialog.setBtnLabelResourceId(i3);
        return behanceSDKGenericAlertWithSingleBtnDialog;
    }

    public BehanceSDKGenericAlertWithSingleBtnDialog(Context context) {
        super(context);
    }

    public BehanceSDKGenericAlertWithSingleBtnDialog(Context context, int i) {
        super(context, i);
    }

    public BehanceSDKGenericAlertWithSingleBtnDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.bsdk_dialog_generic_alert_with_single_btn);
        TextView textView = (TextView) findViewById(R.id.genericAlertSingleBtnDialogTitleTxtView);
        if (this.titleResourceId > 0) {
            textView.setText(this.titleResourceId);
        }
        TextView textView2 = (TextView) findViewById(R.id.genericAlertSingleBtnDialogBodyTxtView);
        if (this.contentResourceId > 0) {
            textView2.setText(this.contentResourceId);
        }
        this.okButton = (Button) findViewById(R.id.genericAlertSingleBtnDialogOKBtn);
        if (this.btnLabelResourceId > 0) {
            this.okButton.setText(this.btnLabelResourceId);
        }
        if (this.btnClickListener != null) {
            this.okButton.setOnClickListener(this.btnClickListener);
        }
        setOnDismissListener(this);
    }

    public void setBtnClickListener(View.OnClickListener onClickListener) {
        if (this.okButton != null) {
            this.okButton.setOnClickListener(onClickListener);
        } else {
            this.btnClickListener = onClickListener;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.btnClickListener = null;
    }

    public int getTitleResourceId() {
        return this.titleResourceId;
    }

    public void setTitleResourceId(int i) {
        this.titleResourceId = i;
    }

    public int getContentResourceId() {
        return this.contentResourceId;
    }

    public void setContentResourceId(int i) {
        this.contentResourceId = i;
    }

    public int getBtnLabelResourceId() {
        return this.btnLabelResourceId;
    }

    public void setBtnLabelResourceId(int i) {
        this.btnLabelResourceId = i;
    }
}
