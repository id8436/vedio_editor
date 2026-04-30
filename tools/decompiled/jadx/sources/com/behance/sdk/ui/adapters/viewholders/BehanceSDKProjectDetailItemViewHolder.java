package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDetailItemViewHolder extends RecyclerView.ViewHolder {
    public LinearLayout container;

    public BehanceSDKProjectDetailItemViewHolder(View view) {
        super(view);
        if (view instanceof LinearLayout) {
            this.container = (LinearLayout) view;
        }
    }
}
