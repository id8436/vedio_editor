package com.adobe.premiereclip.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.adobe.premiereclip.dialogs.AbstractDialog;

/* JADX INFO: loaded from: classes2.dex */
public class ConfirmDialog extends AbstractDialog {
    private String acceptButtonText;
    private String rejectButtonText;

    public ConfirmDialog(Context context, String str, String str2, boolean z) {
        super(context, str, str2, z);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initView();
        this.acceptButton.setText(this.acceptButtonText);
        this.acceptButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.dialogs.ConfirmDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ConfirmDialog.this.acceptButtonListener != null) {
                    ConfirmDialog.this.acceptButtonListener.onClick();
                }
                ConfirmDialog.this.dismiss();
            }
        });
        this.rejectButton.setText(this.rejectButtonText);
        this.rejectButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.dialogs.ConfirmDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ConfirmDialog.this.rejectButtonListener != null) {
                    ConfirmDialog.this.rejectButtonListener.onClick();
                }
                ConfirmDialog.this.dismiss();
            }
        });
    }

    public void setRejectButton(String str, AbstractDialog.OnClickListener onClickListener) {
        this.rejectButtonText = str;
        this.rejectButtonListener = onClickListener;
    }

    public void setAcceptButton(String str, AbstractDialog.OnClickListener onClickListener) {
        this.acceptButtonText = str;
        this.acceptButtonListener = onClickListener;
    }
}
