package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDetailCommentsHeaderViewHolder extends RecyclerView.ViewHolder {
    public LinearLayout commentHeaderContainer;
    public TextView commentsHeader;

    public BehanceSDKProjectDetailCommentsHeaderViewHolder(View view) {
        super(view);
        this.commentsHeader = (TextView) view.findViewById(R.id.bsdk_comments_view_header_title);
        this.commentHeaderContainer = (LinearLayout) view.findViewById(R.id.bsdk_comments_view_header_title_container);
    }
}
