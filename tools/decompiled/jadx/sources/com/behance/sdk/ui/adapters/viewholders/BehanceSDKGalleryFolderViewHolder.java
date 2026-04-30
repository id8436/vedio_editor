package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGalleryFolderViewHolder extends RecyclerView.ViewHolder {
    public LinearLayout bsdkCardGalleryFolderContainer;
    public TextView bsdkCardGalleryFolderName;
    public ImageView bsdkCardGalleryFolderThumbnail;

    public BehanceSDKGalleryFolderViewHolder(View view) {
        super(view);
        this.bsdkCardGalleryFolderContainer = (LinearLayout) view.findViewById(R.id.bsdk_card_gallery_folder_container);
        this.bsdkCardGalleryFolderThumbnail = (ImageView) view.findViewById(R.id.bsdk_card_gallery_folder_thumbnail);
        this.bsdkCardGalleryFolderName = (TextView) view.findViewById(R.id.bsdk_card_gallery_folder_name);
    }
}
