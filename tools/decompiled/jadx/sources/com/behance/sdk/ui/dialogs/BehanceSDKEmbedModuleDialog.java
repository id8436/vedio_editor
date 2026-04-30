package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.behance.sdk.R;
import com.behance.sdk.managers.BehanceSDKProjectPublishWFManager;
import com.behance.sdk.project.modules.EmbedModule;
import com.google.gdata.data.analytics.Engagement;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKEmbedModuleDialog extends Dialog implements View.OnClickListener {
    public BehanceSDKEmbedModuleDialog(Context context) {
        super(context);
    }

    public static BehanceSDKEmbedModuleDialog getInstance(Context context) {
        return new BehanceSDKEmbedModuleDialog(context);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.bsdk_dialog_fragment_publish_project_embed_content);
        setCancelable(true);
        findViewById(R.id.bsdkAddProjectEmbedContentDialogNotOKBtn).setOnClickListener(this);
        findViewById(R.id.bsdkAddProjectEmbedContentDialogOKBtn).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.bsdkAddProjectEmbedContentDialogNotOKBtn) {
            dismiss();
            return;
        }
        if (id == R.id.bsdkAddProjectEmbedContentDialogOKBtn) {
            String string = ((EditText) findViewById(R.id.bsdkAddProjectEmbedContentDialogContentTxt)).getText().toString();
            if (string.length() < 5 || !string.contains(Engagement.Comparison.LT) || !string.contains(Engagement.Comparison.GT)) {
                Toast.makeText(getContext(), getContext().getResources().getString(R.string.bsdk_add_project_embed_content_error), 0).show();
            } else {
                BehanceSDKProjectPublishWFManager.getInstance().addModuleToCurrentProject(new EmbedModule(string));
                dismiss();
            }
        }
    }
}
