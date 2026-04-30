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
public class BehanceSDKGenericAlertDialog extends Dialog implements DialogInterface.OnDismissListener {
    private int contentResourceId;
    private View.OnClickListener notOKBtnClickListener;
    private int notOKBtnLabelResourceId;
    private Button notOKButton;
    private View.OnClickListener okBtnClickListener;
    private int okBtnLabelResourceId;
    private Button okButton;
    private int titleResourceId;

    public static BehanceSDKGenericAlertDialog getInstance(Context context, int i, int i2, int i3, int i4) {
        BehanceSDKGenericAlertDialog behanceSDKGenericAlertDialog = new BehanceSDKGenericAlertDialog(context);
        behanceSDKGenericAlertDialog.setTitleResourceId(i);
        behanceSDKGenericAlertDialog.setContentResourceId(i2);
        behanceSDKGenericAlertDialog.setOkBtnLabelResourceId(i3);
        behanceSDKGenericAlertDialog.setNotOKBtnLabelResourceId(i4);
        return behanceSDKGenericAlertDialog;
    }

    public BehanceSDKGenericAlertDialog(Context context) {
        super(context);
    }

    public BehanceSDKGenericAlertDialog(Context context, int i) {
        super(context, i);
    }

    public BehanceSDKGenericAlertDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.bsdk_dialog_generic_alert);
        TextView textView = (TextView) findViewById(R.id.bsdkGenericAlertDialogTitleTxtView);
        if (this.titleResourceId > 0) {
            textView.setText(this.titleResourceId);
        }
        TextView textView2 = (TextView) findViewById(R.id.bsdkGenericAlertDialogBodyTxtView);
        if (this.contentResourceId > 0) {
            textView2.setText(this.contentResourceId);
        }
        this.notOKButton = (Button) findViewById(R.id.bsdkGenericAlertDialogNotOKBtn);
        if (this.notOKBtnLabelResourceId > 0) {
            this.notOKButton.setText(this.notOKBtnLabelResourceId);
        }
        if (this.notOKBtnClickListener != null) {
            this.notOKButton.setOnClickListener(this.notOKBtnClickListener);
        }
        this.okButton = (Button) findViewById(R.id.bsdkGenericAlertDialogOKBtn);
        if (this.okBtnLabelResourceId > 0) {
            this.okButton.setText(this.okBtnLabelResourceId);
        }
        if (this.okBtnClickListener != null) {
            this.okButton.setOnClickListener(this.okBtnClickListener);
        }
        setOnDismissListener(this);
    }

    public void setOnOKBtnClickListener(View.OnClickListener onClickListener) {
        if (this.okButton != null) {
            this.okButton.setOnClickListener(onClickListener);
        } else {
            this.okBtnClickListener = onClickListener;
        }
    }

    public void setOnNotOKBtnClickListener(View.OnClickListener onClickListener) {
        if (this.notOKButton != null) {
            this.notOKButton.setOnClickListener(onClickListener);
        } else {
            this.notOKBtnClickListener = onClickListener;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.notOKBtnClickListener = null;
        this.okBtnClickListener = null;
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

    public int getOkBtnLabelResourceId() {
        return this.okBtnLabelResourceId;
    }

    public void setOkBtnLabelResourceId(int i) {
        this.okBtnLabelResourceId = i;
    }

    public int getNotOKBtnLabelResourceId() {
        return this.notOKBtnLabelResourceId;
    }

    public void setNotOKBtnLabelResourceId(int i) {
        this.notOKBtnLabelResourceId = i;
    }
}
