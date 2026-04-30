package com.adobe.premiereclip.dialogs;

import android.app.Dialog;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseDialog extends Dialog {
    protected static volatile boolean open;

    public BaseDialog(Context context) {
        super(context);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        open = true;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        open = false;
    }

    public static boolean isOpen() {
        return open;
    }
}
