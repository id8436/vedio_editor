package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.behance.sdk.R;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorModuleWarningViewHolder extends RecyclerView.ViewHolder {
    public LinearLayout bsdkCardProjectEditorModuleWarningContainer;
    public BehanceSDKTextView bsdkCardProjectEditorModuleWarningDescription;
    public ImageView bsdkCardProjectEditorModuleWarningIcon;
    public BehanceSDKTextView bsdkCardProjectEditorModuleWarningTitle;

    public BehanceSDKProjectEditorModuleWarningViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorModuleWarningContainer = (LinearLayout) view.findViewById(R.id.bsdk_card_project_editor_module_warning_container);
        this.bsdkCardProjectEditorModuleWarningIcon = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_warning_icon);
        this.bsdkCardProjectEditorModuleWarningTitle = (BehanceSDKTextView) view.findViewById(R.id.bsdk_card_project_editor_module_warning_title);
        this.bsdkCardProjectEditorModuleWarningDescription = (BehanceSDKTextView) view.findViewById(R.id.bsdk_card_project_editor_module_warning_description);
    }
}
