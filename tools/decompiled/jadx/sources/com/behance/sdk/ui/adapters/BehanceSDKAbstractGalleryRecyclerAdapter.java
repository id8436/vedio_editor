package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.b.a.h;
import com.behance.sdk.R;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKGalleryItemViewHolder;
import com.behance.sdk.util.BehanceSDKColumnCountUtil;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class BehanceSDKAbstractGalleryRecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    protected Context context;
    protected List<File> files;
    private final int rowHeight;

    BehanceSDKAbstractGalleryRecyclerAdapter(Context context, List<File> list) {
        this.context = context;
        this.files = list;
        this.rowHeight = getRowHeight(BehanceSDKColumnCountUtil.getImagePickerColumnCount(context));
    }

    protected int getRowHeight(int i) {
        return (this.context.getResources().getDisplayMetrics().widthPixels - (((i + 1) * 2) * this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_gallery_grid_padding))) / i;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BehanceSDKGalleryItemViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_gallery_item, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.itemView.getLayoutParams().height = this.rowHeight;
        if (viewHolder instanceof BehanceSDKGalleryItemViewHolder) {
            final BehanceSDKGalleryItemViewHolder behanceSDKGalleryItemViewHolder = (BehanceSDKGalleryItemViewHolder) viewHolder;
            if (i >= getExtraItemsCount()) {
                behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemThumbnail.setScaleType(ImageView.ScaleType.CENTER_CROP);
                behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemThumbnail.setBackgroundColor(0);
                h.b(this.context).a(this.files.get(i - getExtraItemsCount())).a(behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemThumbnail);
                behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BehanceSDKAbstractGalleryRecyclerAdapter.this.onItemClicked(BehanceSDKAbstractGalleryRecyclerAdapter.this.files.get(behanceSDKGalleryItemViewHolder.getAdapterPosition() - BehanceSDKAbstractGalleryRecyclerAdapter.this.getExtraItemsCount()));
                    }
                });
                behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemVideoIndicator.setVisibility(isVideo(this.files.get(i - getExtraItemsCount())) ? 0 : 8);
                return;
            }
            h.a(behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemThumbnail);
            behanceSDKGalleryItemViewHolder.bsdkCardGalleryItemThumbnail.setImageDrawable(null);
        }
    }

    private boolean isVideo(File file) {
        return file.getName().endsWith(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMP4);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.files.size() + getExtraItemsCount();
    }

    protected void onItemClicked(File file) {
    }

    protected int getExtraItemsCount() {
        return 0;
    }
}
