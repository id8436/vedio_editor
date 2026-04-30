package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAbstractViewHolder extends RecyclerView.ViewHolder {
    public CardView card;

    public BehanceSDKAbstractViewHolder(View view) {
        super(view);
        this.card = (CardView) view;
    }
}
