package com.adobe.premiereclip;

import android.app.Activity;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;
import com.adobe.premiereclip.sharing.SaveToGalleryDialog;

/* JADX INFO: loaded from: classes2.dex */
public class CreatingLRProjectDialog extends SaveToGalleryDialog {
    public CreatingLRProjectDialog(Activity activity, PrepareVideoDialog.Listener listener) {
        super(activity, listener);
        this.logoDrawableID = R.drawable.share_cclogo_lg;
        this.prepareString = activity.getResources().getString(R.string.creating_lightroom_project_text);
    }

    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog
    public void goToSavedState() {
        dismiss();
    }
}
