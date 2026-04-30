package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextFont;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorStyleDetailItemViewHolder;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorTextFontsRecyclerAdapter extends RecyclerView.Adapter<BehanceSDKProjectEditorStyleDetailItemViewHolder> {
    private TextFontCallback callback;
    private Context context;
    private BehanceSDKProjectEditorTextFont selectedFont;

    public interface TextFontCallback {
        void onItemSelected(BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont);
    }

    public BehanceSDKProjectEditorTextFontsRecyclerAdapter(Context context, BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont, TextFontCallback textFontCallback) {
        this.context = context;
        this.selectedFont = behanceSDKProjectEditorTextFont;
        this.callback = textFontCallback;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public BehanceSDKProjectEditorStyleDetailItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BehanceSDKProjectEditorStyleDetailItemViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_style_detail, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(BehanceSDKProjectEditorStyleDetailItemViewHolder behanceSDKProjectEditorStyleDetailItemViewHolder, int i) {
        final BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont = BehanceSDKProjectEditorTextFont.values()[i];
        behanceSDKProjectEditorStyleDetailItemViewHolder.bsdkCardProjectEditorStyleTextLeft.setText(behanceSDKProjectEditorTextFont.getDisplayStringResource());
        behanceSDKProjectEditorStyleDetailItemViewHolder.bsdkCardProjectEditorStyleSelected.setVisibility(behanceSDKProjectEditorTextFont == this.selectedFont ? 0 : 8);
        behanceSDKProjectEditorStyleDetailItemViewHolder.bsdkCardProjectEditorStyleContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextFontsRecyclerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKProjectEditorTextFontsRecyclerAdapter.this.callback.onItemSelected(behanceSDKProjectEditorTextFont);
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return BehanceSDKProjectEditorTextFont.values().length;
    }
}
