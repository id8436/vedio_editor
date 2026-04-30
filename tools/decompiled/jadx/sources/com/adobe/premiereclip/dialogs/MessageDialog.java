package com.adobe.premiereclip.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.AbstractDialog;

/* JADX INFO: loaded from: classes2.dex */
public class MessageDialog extends AbstractDialog {
    public MessageDialog(Context context, String str, String str2, boolean z) {
        super(context, str, str2, z);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initView();
        this.acceptButton.setText(getContext().getString(R.string.ok_button));
        this.acceptButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.dialogs.MessageDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MessageDialog.this.acceptButtonListener != null) {
                    MessageDialog.this.acceptButtonListener.onClick();
                }
                MessageDialog.this.dismiss();
            }
        });
        this.rejectButton.setVisibility(8);
    }

    public void setAcceptButtonListener(AbstractDialog.OnClickListener onClickListener) {
        this.acceptButtonListener = onClickListener;
    }
}
