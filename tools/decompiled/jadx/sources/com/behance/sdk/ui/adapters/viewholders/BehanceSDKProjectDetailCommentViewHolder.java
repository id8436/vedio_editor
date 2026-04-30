package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.behance.sdk.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDetailCommentViewHolder extends RecyclerView.ViewHolder {
    public SimpleDraweeView avatar;
    public TextView comment;
    public TextView date;
    public TextView name;

    public BehanceSDKProjectDetailCommentViewHolder(View view) {
        super(view);
        this.avatar = (SimpleDraweeView) view.findViewById(R.id.bsdk_card_project_comment_avatar);
        this.name = (TextView) view.findViewById(R.id.bsdk_card_project_comment_name);
        this.comment = (TextView) view.findViewById(R.id.bsdk_card_project_comment_comment);
        this.date = (TextView) view.findViewById(R.id.bsdk_card_project_comment_date);
    }
}
