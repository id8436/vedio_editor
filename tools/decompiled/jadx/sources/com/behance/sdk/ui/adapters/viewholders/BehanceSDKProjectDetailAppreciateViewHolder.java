package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDetailAppreciateViewHolder extends RecyclerView.ViewHolder {
    public ImageView appreciateThumb;
    public ImageView appreciateView;
    public View thankYouText;

    public BehanceSDKProjectDetailAppreciateViewHolder(View view) {
        super(view);
        this.appreciateView = (ImageView) view.findViewById(R.id.bsdk_card_project_appreciate);
        this.appreciateThumb = (ImageView) view.findViewById(R.id.bsdk_card_project_appreciate_thumb);
        this.thankYouText = view.findViewById(R.id.bsdk_card_project_appreciate_thank_you_text);
    }
}
