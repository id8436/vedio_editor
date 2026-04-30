package com.adobe.premiereclip.sharing;

import android.app.Activity;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;

/* JADX INFO: loaded from: classes2.dex */
public class SaveToYouTubeDialog extends PrepareVideoDialog {
    public SaveToYouTubeDialog(Activity activity, PrepareVideoDialog.Listener listener) {
        super(activity, listener);
        this.sharingString = activity.getString(R.string.uploading_to_youtube);
        this.logoDrawableID = R.drawable.share_youtube_lg;
    }
}
