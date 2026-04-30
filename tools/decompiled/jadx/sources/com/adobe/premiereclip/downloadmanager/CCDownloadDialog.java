package com.adobe.premiereclip.downloadmanager;

import android.app.Activity;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;
import com.adobe.premiereclip.sharing.SaveToGalleryDialog;

/* JADX INFO: loaded from: classes2.dex */
public class CCDownloadDialog extends SaveToGalleryDialog {
    public CCDownloadDialog(Activity activity, PrepareVideoDialog.Listener listener) {
        super(activity, listener);
        this.logoDrawableID = R.drawable.share_cclogo_lg;
        this.prepareString = activity.getResources().getString(R.string.cc_downloading_text);
    }

    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog
    public void goToSavedState() {
        dismiss();
    }
}
