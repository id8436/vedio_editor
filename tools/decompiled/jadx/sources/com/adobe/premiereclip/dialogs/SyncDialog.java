package com.adobe.premiereclip.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.utility.FontUtils;
import com.h.a.a;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class SyncDialog extends BaseDialog {
    TextView okTextView;

    public SyncDialog(Context context) {
        super(context);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.sync_dialog);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        this.okTextView = (TextView) findViewById(R.id.ok_view);
        a adobeCleanLightTypefaceCollection = FontUtils.getInstance().getAdobeCleanLightTypefaceCollection();
        d.a(findViewById(R.id.automatic_sync_title), adobeCleanLightTypefaceCollection);
        d.a(findViewById(R.id.automatic_sync_text), adobeCleanLightTypefaceCollection);
        d.a(this.okTextView, adobeCleanLightTypefaceCollection);
        this.okTextView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.dialogs.SyncDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SyncDialog.this.dismiss();
            }
        });
    }
}
