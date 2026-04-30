package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.behance.sdk.R;
import com.behance.sdk.ui.components.BehanceSDKNotifyOnHeightChangeWebView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder extends RecyclerView.ViewHolder {
    public ImageView bsdkCardProjectEditorModuleDelete;
    public ImageView bsdkCardProjectEditorModuleFullBleed;
    public ImageView bsdkCardProjectEditorModulePlay;
    public View bsdkCardProjectEditorModuleWebClickHandler;
    public RelativeLayout bsdkCardProjectEditorModuleWebContainer;
    public LinearLayout bsdkCardProjectEditorModuleWebToolsContainer;
    public BehanceSDKNotifyOnHeightChangeWebView bsdkCardProjectEditorModuleWebView;

    public BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorModuleWebContainer = (RelativeLayout) view.findViewById(R.id.bsdk_card_project_editor_module_web_container);
        this.bsdkCardProjectEditorModuleWebView = (BehanceSDKNotifyOnHeightChangeWebView) view.findViewById(R.id.bsdk_card_project_editor_module_web_view);
        this.bsdkCardProjectEditorModuleWebClickHandler = view.findViewById(R.id.bsdk_card_project_editor_module_web_click_handler);
        this.bsdkCardProjectEditorModuleWebToolsContainer = (LinearLayout) view.findViewById(R.id.bsdk_card_project_editor_module_web_tools_container);
        this.bsdkCardProjectEditorModulePlay = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_play);
        this.bsdkCardProjectEditorModuleDelete = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_delete);
        this.bsdkCardProjectEditorModuleFullBleed = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_module_full_bleed);
    }
}
