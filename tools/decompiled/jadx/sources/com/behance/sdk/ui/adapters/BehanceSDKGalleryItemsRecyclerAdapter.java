package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.behance.sdk.R;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKGalleryBackViewHolder;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGalleryItemsRecyclerAdapter extends BehanceSDKAbstractGalleryRecyclerAdapter {
    private GalleryCallbacks callbacks;

    public interface GalleryCallbacks {
        void onItemClicked(File file);

        void onReturnToFoldersClicked();
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter, android.support.v7.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ int getItemCount() {
        return super.getItemCount();
    }

    public BehanceSDKGalleryItemsRecyclerAdapter(Context context, List<File> list, GalleryCallbacks galleryCallbacks) {
        super(context, list);
        this.callbacks = galleryCallbacks;
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter
    protected int getRowHeight(int i) {
        return (this.context.getResources().getDisplayMetrics().widthPixels - (((i - 1) * 2) * this.context.getResources().getDimensionPixelSize(R.dimen.bsdk_gallery_grid_padding))) / i;
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter, android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return i == 0 ? new BehanceSDKGalleryBackViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_gallery_back, viewGroup, false)) : super.onCreateViewHolder(viewGroup, i);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter, android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        super.onBindViewHolder(viewHolder, i);
        if (viewHolder instanceof BehanceSDKGalleryBackViewHolder) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKGalleryItemsRecyclerAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKGalleryItemsRecyclerAdapter.this.callbacks.onReturnToFoldersClicked();
                }
            });
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter
    protected void onItemClicked(File file) {
        this.callbacks.onItemClicked(file);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKAbstractGalleryRecyclerAdapter
    protected int getExtraItemsCount() {
        return 1;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i == 0 ? 0 : 1;
    }
}
