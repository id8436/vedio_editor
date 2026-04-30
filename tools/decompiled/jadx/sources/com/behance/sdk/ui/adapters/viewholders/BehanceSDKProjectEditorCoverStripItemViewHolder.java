package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import com.behance.sdk.R;
import com.behance.sdk.ui.components.BehanceSDKAspectRatioRelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorCoverStripItemViewHolder extends RecyclerView.ViewHolder {
    public BehanceSDKAspectRatioRelativeLayout bsdkCardProjectEditorCoverContainer;
    public View bsdkCardProjectEditorCoverOverlay;
    public ImageView bsdkCardProjectEditorCoverThumbnail;

    public BehanceSDKProjectEditorCoverStripItemViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorCoverContainer = (BehanceSDKAspectRatioRelativeLayout) view.findViewById(R.id.bsdk_card_project_editor_cover_container);
        this.bsdkCardProjectEditorCoverThumbnail = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_cover_thumbnail);
        this.bsdkCardProjectEditorCoverOverlay = view.findViewById(R.id.bsdk_card_project_editor_cover_overlay);
    }
}
