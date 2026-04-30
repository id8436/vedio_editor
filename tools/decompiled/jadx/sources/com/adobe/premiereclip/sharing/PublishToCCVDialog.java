package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.os.Bundle;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;

/* JADX INFO: loaded from: classes2.dex */
public class PublishToCCVDialog extends PrepareVideoDialog {
    public PublishToCCVDialog(Activity activity, PrepareVideoDialog.Listener listener) {
        super(activity, listener);
        this.sharingString = activity.getString(R.string.uploading_video);
        this.publishedString = activity.getString(R.string.video_published);
        this.logoDrawableID = R.drawable.share_cclogo_lg;
    }

    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Metrics.sharedInstance().didShowCCVExportProgressView();
    }
}
