package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.behance.sdk.R;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKGalleryItemViewHolder;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGallerySheetRecyclerAdapter extends BehanceSDKAbstractGalleryRecyclerAdapter {
    private GalleryCallbacks callbacks;

    public interface GalleryCallbacks {
        void onCCSelected();

        void onCameraSelected();

        void onItemSelected(File file);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter, android.support.v7.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ int getItemCount() {
        return super.getItemCount();
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter, android.support.v7.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return super.onCreateViewHolder(viewGroup, i);
    }

    public BehanceSDKGallerySheetRecyclerAdapter(Context context, List<File> list, GalleryCallbacks galleryCallbacks) {
        super(context, list);
        this.callbacks = galleryCallbacks;
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter, android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        super.onBindViewHolder(viewHolder, i);
        if ((viewHolder instanceof BehanceSDKGalleryItemViewHolder) && i < getExtraItemsCount()) {
            final BehanceSDKGalleryItemViewHolder behanceSDKGalleryItemViewHolder = (BehanceSDKGalleryItemViewHolder) viewHolder;
            behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemThumbnail.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemThumbnail.setBackgroundColor(ContextCompat.getColor(this.context, R.color.bsdk_more_info_item_text_color));
            behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemVideoIndicator.setVisibility(8);
            behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemThumbnail.setImageDrawable(ContextCompat.getDrawable(this.context, i == 0 ? R.drawable.bsdk_icon_gallery_camera : R.drawable.bsdk_icon_gallery_cloud));
            behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKGallerySheetRecyclerAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (behanceSDKGalleryItemViewHolder.getAdapterPosition() == 0) {
                        BehanceSDKGallerySheetRecyclerAdapter.this.callbacks.onCameraSelected();
                    } else {
                        BehanceSDKGallerySheetRecyclerAdapter.this.callbacks.onCCSelected();
                    }
                }
            });
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter
    protected void onItemClicked(File file) {
        this.callbacks.onItemSelected(file);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter
    protected int getExtraItemsCount() {
        return 2;
    }
}
