package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextStyle;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorStyleDetailItemViewHolder;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorTextStylesRecyclerAdapter extends RecyclerView.Adapter<BehanceSDKProjectEditorStyleDetailItemViewHolder> {
    private TextStyleCallback callback;
    private Context context;
    private BehanceSDKProjectEditorTextStyle selectedStyle;

    public interface TextStyleCallback {
        void onItemSelected(BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle);
    }

    public BehanceSDKProjectEditorTextStylesRecyclerAdapter(Context context, BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle, TextStyleCallback textStyleCallback) {
        this.context = context;
        this.selectedStyle = behanceSDKProjectEditorTextStyle;
        this.callback = textStyleCallback;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public BehanceSDKProjectEditorStyleDetailItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BehanceSDKProjectEditorStyleDetailItemViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_style_detail, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(BehanceSDKProjectEditorStyleDetailItemViewHolder behanceSDKProjectEditorStyleDetailItemViewHolder, int i) {
        final BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle = BehanceSDKProjectEditorTextStyle.values()[i];
        behanceSDKProjectEditorStyleDetailItemViewHolder.bsdkCardProjectEditorStyleTextLeft.setText(behanceSDKProjectEditorTextStyle.getDisplayStringResource());
        behanceSDKProjectEditorStyleDetailItemViewHolder.bsdkCardProjectEditorStyleSelected.setVisibility(behanceSDKProjectEditorTextStyle == this.selectedStyle ? 0 : 8);
        behanceSDKProjectEditorStyleDetailItemViewHolder.bsdkCardProjectEditorStyleContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextStylesRecyclerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorTextStylesRecyclerAdapter.this.callback.onItemSelected(behanceSDKProjectEditorTextStyle);
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return BehanceSDKProjectEditorTextStyle.values().length;
    }
}
