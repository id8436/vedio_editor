package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;
import com.adobe.utility.FontUtils;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class PrExportDialog extends SaveToGalleryDialog {
    private String publishedTile;

    public PrExportDialog(Activity activity, PrepareVideoDialog.Listener listener) {
        super(activity, listener);
        this.prepareString = activity.getResources().getString(R.string.ppro_export_progress);
        this.publishedString = activity.getResources().getString(R.string.ppro_export_completion);
        this.logoDrawableID = R.drawable.share_ppro_lg2;
        this.publishedTile = activity.getResources().getString(R.string.ppro_export_title);
    }

    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog
    protected void goToSavedState() {
        super.goToSavedState();
        TextView textView = (TextView) findViewById(R.id.dialog_title);
        d.a(textView, FontUtils.getInstance().getAdobeCleanRegularTypefaceCollection());
        textView.setVisibility(0);
        textView.setText(this.publishedTile);
    }
}
