package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDetailInfoShareViewHolder extends RecyclerView.ViewHolder {
    public TextView infoView;
    public TextView shareText;

    public BehanceSDKProjectDetailInfoShareViewHolder(View view) {
        super(view);
        this.infoView = (TextView) view.findViewById(R.id.bsdk_userDetailsMoreInfoContainer);
        this.shareText = (TextView) view.findViewById(R.id.bsdk_shareProjectContainer);
    }
}
