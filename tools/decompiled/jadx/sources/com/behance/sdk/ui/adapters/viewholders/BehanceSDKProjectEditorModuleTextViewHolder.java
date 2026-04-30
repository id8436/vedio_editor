package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorModuleTextViewHolder extends RecyclerView.ViewHolder {
    public RelativeLayout bsdkCardProjectEditorModuleTextContainer;
    public View bsdkCardProjectEditorModuleTextOverlay;
    public WebView bsdkCardProjectEditorModuleTextWebView;

    public BehanceSDKProjectEditorModuleTextViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorModuleTextContainer = (RelativeLayout) view.findViewById(R.id.bsdk_card_project_editor_module_text_container);
        this.bsdkCardProjectEditorModuleTextWebView = (WebView) view.findViewById(R.id.bsdk_card_project_editor_module_text_web_view);
        this.bsdkCardProjectEditorModuleTextOverlay = view.findViewById(R.id.bsdk_card_project_editor_module_text_overlay);
    }
}
