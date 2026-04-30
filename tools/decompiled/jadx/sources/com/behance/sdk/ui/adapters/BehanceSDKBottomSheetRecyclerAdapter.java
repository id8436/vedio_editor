package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKShareContentAdapterItemDTO;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKBottomSheetItemViewHolder;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKBottomSheetRecyclerAdapter extends RecyclerView.Adapter<BehanceSDKBottomSheetItemViewHolder> {
    private Callbacks callbacks;
    private Context context;
    private LayoutInflater layoutInflater;
    private List<BehanceSDKShareContentAdapterItemDTO> shareItems;

    public interface Callbacks {
        void share(BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO);
    }

    public BehanceSDKBottomSheetRecyclerAdapter(Context context, List<BehanceSDKShareContentAdapterItemDTO> list) {
        this.context = context;
        this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.shareItems = list;
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public BehanceSDKBottomSheetItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BehanceSDKBottomSheetItemViewHolder(this.layoutInflater.inflate(R.layout.bsdk_adapter_bottom_share_sheet_item, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(final BehanceSDKBottomSheetItemViewHolder behanceSDKBottomSheetItemViewHolder, int i) {
        behanceSDKBottomSheetItemViewHolder.itemView.getLayoutParams().height = -2;
        behanceSDKBottomSheetItemViewHolder.contentContainer.setVisibility(0);
        BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO = this.shareItems.get(i);
        behanceSDKBottomSheetItemViewHolder.contentContainer.setAlpha(1.0f);
        behanceSDKBottomSheetItemViewHolder.contentContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKBottomSheetRecyclerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BehanceSDKBottomSheetRecyclerAdapter.this.callbacks != null) {
                    BehanceSDKBottomSheetRecyclerAdapter.this.callbacks.share((BehanceSDKShareContentAdapterItemDTO) BehanceSDKBottomSheetRecyclerAdapter.this.shareItems.get(behanceSDKBottomSheetItemViewHolder.getAdapterPosition()));
                }
            }
        });
        behanceSDKBottomSheetItemViewHolder.thumbnail.setImageDrawable(behanceSDKShareContentAdapterItemDTO.getDisplayIcon());
        behanceSDKBottomSheetItemViewHolder.title.setText(behanceSDKShareContentAdapterItemDTO.getDisplayLabel());
        behanceSDKBottomSheetItemViewHolder.itemView.setAlpha(1.0f);
    }

    public void addItems(List<BehanceSDKShareContentAdapterItemDTO> list) {
        this.shareItems.addAll(list);
        notifyItemRangeInserted(getItemCount() - list.size(), list.size());
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.shareItems.size();
    }
}
