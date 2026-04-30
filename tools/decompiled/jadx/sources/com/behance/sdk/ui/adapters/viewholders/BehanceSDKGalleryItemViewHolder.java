package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGalleryItemViewHolder extends RecyclerView.ViewHolder {
    public RelativeLayout bsdkCardGalleryItemContainer;
    public ImageView bsdkCardGalleryItemThumbnail;
    public ImageView bsdkCardGalleryItemVideoIndicator;

    public BehanceSDKGalleryItemViewHolder(View view) {
        super(view);
        this.bsdkCardGalleryItemContainer = (RelativeLayout) view.findViewById(R.id.bsdk_card_gallery_item_container);
        this.bsdkCardGalleryItemThumbnail = (ImageView) view.findViewById(R.id.bsdk_card_gallery_item_thumbnail);
        this.bsdkCardGalleryItemVideoIndicator = (ImageView) view.findViewById(R.id.bsdk_card_gallery_item_video_indicator);
    }
}
