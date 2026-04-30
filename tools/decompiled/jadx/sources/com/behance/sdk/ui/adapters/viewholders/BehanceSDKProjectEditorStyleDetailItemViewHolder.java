package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.behance.sdk.R;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorStyleDetailItemViewHolder extends RecyclerView.ViewHolder {
    public RelativeLayout bsdkCardProjectEditorStyleContainer;
    public ImageView bsdkCardProjectEditorStyleSelected;
    public BehanceSDKTextView bsdkCardProjectEditorStyleTextLeft;

    public BehanceSDKProjectEditorStyleDetailItemViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorStyleContainer = (RelativeLayout) view.findViewById(R.id.bsdk_card_project_editor_style_container);
        this.bsdkCardProjectEditorStyleTextLeft = (BehanceSDKTextView) view.findViewById(R.id.bsdk_card_project_editor_style_text_left);
        this.bsdkCardProjectEditorStyleSelected = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_style_selected);
    }
}
