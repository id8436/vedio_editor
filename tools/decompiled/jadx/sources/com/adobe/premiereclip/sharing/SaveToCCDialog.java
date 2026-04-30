package com.adobe.premiereclip.sharing;

import android.app.Activity;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;

/* JADX INFO: loaded from: classes2.dex */
public class SaveToCCDialog extends PrepareVideoDialog {
    public SaveToCCDialog(Activity activity, PrepareVideoDialog.Listener listener) {
        super(activity, listener);
        this.logoDrawableID = R.drawable.share_cclogo_lg;
    }
}
