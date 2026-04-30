package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.b.a.h;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKImageDTO;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorCoverStripItemViewHolder;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorCoverStripRecyclerAdapter extends RecyclerView.Adapter<BehanceSDKProjectEditorCoverStripItemViewHolder> {
    private CoverCallbacks callbacks;
    private Context context;
    private int currentlySelectedPos;
    private List<BehanceSDKImageDTO> images;
    private int orientation;
    private WeakReference<View> selectedCover;

    public interface CoverCallbacks {
        void onCoverClick(String str, boolean z);

        void onNewClick();
    }

    public BehanceSDKProjectEditorCoverStripRecyclerAdapter(Context context, List<BehanceSDKImageDTO> list, int i, int i2, CoverCallbacks coverCallbacks) {
        this.currentlySelectedPos = 0;
        this.context = context;
        this.images = list;
        this.orientation = i;
        this.callbacks = coverCallbacks;
        this.currentlySelectedPos = i2;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public BehanceSDKProjectEditorCoverStripItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BehanceSDKProjectEditorCoverStripItemViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_cover_strip, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(final BehanceSDKProjectEditorCoverStripItemViewHolder behanceSDKProjectEditorCoverStripItemViewHolder, int i) {
        if (i < this.images.size()) {
            final BehanceSDKImageDTO behanceSDKImageDTO = this.images.get(i);
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverThumbnail.setScaleType(ImageView.ScaleType.FIT_XY);
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverContainer.setAspectRatio((((double) behanceSDKImageDTO.getWidth()) * 1.0d) / ((double) behanceSDKImageDTO.getHeight()));
            if (behanceSDKImageDTO.isLocal()) {
                h.b(this.context).a(new File(behanceSDKImageDTO.getPath())).a(behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverThumbnail);
            } else {
                h.b(this.context).a(behanceSDKImageDTO.getPath()).a(behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverThumbnail);
            }
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorCoverStripRecyclerAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.currentlySelectedPos = behanceSDKProjectEditorCoverStripItemViewHolder.getAdapterPosition();
                    BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.callbacks.onCoverClick(((BehanceSDKImageDTO) BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.images.get(BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.currentlySelectedPos)).getPath(), behanceSDKImageDTO.isLocal());
                    if (BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.selectedCover != null && BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.selectedCover.get() != null) {
                        ((View) BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.selectedCover.get()).animate().alpha(0.0f).setDuration(150L).start();
                        BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.selectedCover.clear();
                    }
                    behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverOverlay.animate().alpha(1.0f).setDuration(150L).start();
                    BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.selectedCover = new WeakReference(behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverOverlay);
                }
            });
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverOverlay.setAlpha(i == this.currentlySelectedPos ? 1.0f : 0.0f);
            if (this.currentlySelectedPos == i) {
                if (this.selectedCover != null && this.selectedCover.get() != null) {
                    this.selectedCover.clear();
                }
                this.selectedCover = new WeakReference<>(behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverOverlay);
            }
        } else {
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverThumbnail.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverContainer.setAspectRatio(1.0d);
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverThumbnail.setImageResource(R.drawable.bsdk_icon_project_editor_cover_add);
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorCoverStripRecyclerAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKProjectEditorCoverStripRecyclerAdapter.this.callbacks.onNewClick();
                }
            });
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverOverlay.setAlpha(1.0f);
        }
        if (this.orientation == 0) {
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverContainer.constrainHeight();
        } else {
            behanceSDKProjectEditorCoverStripItemViewHolder.bsdkCardProjectEditorCoverContainer.constrainWidth();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.images.size() + 1;
    }

    public void addCoverItem(BehanceSDKImageDTO behanceSDKImageDTO) {
        this.images.add(behanceSDKImageDTO);
        int i = this.currentlySelectedPos;
        this.currentlySelectedPos = this.images.size() - 1;
        notifyItemChanged(i);
        notifyItemChanged(this.images.size() - 1);
        notifyItemInserted(this.images.size());
    }

    public int getCurrentlySelectedPos() {
        return this.currentlySelectedPos;
    }
}
