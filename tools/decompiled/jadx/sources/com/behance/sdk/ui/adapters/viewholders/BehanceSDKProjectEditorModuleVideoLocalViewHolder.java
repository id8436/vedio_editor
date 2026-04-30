package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorModuleVideoLocalViewHolder extends RecyclerView.ViewHolder {
    public ImageView bsdkCardProjectEditorModuleDelete;
    public ImageView bsdkCardProjectEditorModulePlay;
    public RelativeLayout bsdkCardProjectEditorModuleVideoContainer;
    public ImageView bsdkCardProjectEditorModuleVideoPreview;
    public LinearLayout bsdkCardProjectEditorModuleVideoToolsContainer;

    public BehanceSDKProjectEditorModuleVideoLocalViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorModuleVideoContainer = (RelativeLayout) view.findViewById(R.id.bsdk_card_project_editor_module_video_container);
        this.bsdkCardProjectEditorModuleVideoPreview = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_video_preview);
        this.bsdkCardProjectEditorModuleVideoToolsContainer = (LinearLayout) view.findViewById(R.id.bsdk_card_project_editor_module_video_tools_container);
        this.bsdkCardProjectEditorModulePlay = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_play);
        this.bsdkCardProjectEditorModuleDelete = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_delete);
    }
}
