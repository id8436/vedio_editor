package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import com.adobe.premiereclip.R;

/* JADX INFO: loaded from: classes2.dex */
public class YouTubeLoadingDialog extends Dialog {
    public YouTubeLoadingDialog(Activity activity) {
        super(activity);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_youtube_loading);
        setTitle(R.string.wait_message);
    }
}
