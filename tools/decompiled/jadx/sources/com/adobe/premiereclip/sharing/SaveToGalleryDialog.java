package com.adobe.premiereclip.sharing;

import android.app.Activity;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;

/* JADX INFO: loaded from: classes2.dex */
public class SaveToGalleryDialog extends PrepareVideoDialog {
    public SaveToGalleryDialog(Activity activity, PrepareVideoDialog.Listener listener) {
        super(activity, listener);
        this.mProgressStatus = 0;
        this.prepareString = activity.getString(R.string.saving_video);
    }

    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog
    protected int getProgressFromPrepareProgress(int i) {
        return i;
    }

    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog
    protected void goToSavingState() {
        goToSavedState();
    }
}
