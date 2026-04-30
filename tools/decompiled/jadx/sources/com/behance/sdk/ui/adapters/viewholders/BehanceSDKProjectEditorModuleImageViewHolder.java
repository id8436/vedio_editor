package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorModuleImageViewHolder extends RecyclerView.ViewHolder {
    public RelativeLayout bsdkCardProjectEditorModuleImageContainer;
    public ImageView bsdkCardProjectEditorModuleImageDelete;
    public ImageView bsdkCardProjectEditorModuleImageFullBleed;
    public ImageView bsdkCardProjectEditorModuleImageReplace;
    public LinearLayout bsdkCardProjectEditorModuleImageToolsContainer;
    public ImageView bsdkCardProjectEditorModuleImageView;

    public BehanceSDKProjectEditorModuleImageViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorModuleImageContainer = (RelativeLayout) view.findViewById(R.id.bsdk_card_project_editor_module_image_container);
        this.bsdkCardProjectEditorModuleImageView = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_image_view);
        this.bsdkCardProjectEditorModuleImageToolsContainer = (LinearLayout) view.findViewById(R.id.bsdk_card_project_editor_module_image_tools_container);
        this.bsdkCardProjectEditorModuleImageDelete = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_image_delete);
        this.bsdkCardProjectEditorModuleImageReplace = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_image_replace);
        this.bsdkCardProjectEditorModuleImageFullBleed = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_image_full_bleed);
    }
}
