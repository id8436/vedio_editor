package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKBottomSheetItemViewHolder extends RecyclerView.ViewHolder {
    public View contentContainer;
    public ImageView thumbnail;
    public TextView title;

    public BehanceSDKBottomSheetItemViewHolder(View view) {
        super(view);
        this.thumbnail = (ImageView) view.findViewById(R.id.bsdk_bottom_sheet_item_thumbnail);
        this.title = (TextView) view.findViewById(R.id.bsdk_bottom_sheet_item_title);
        this.contentContainer = view.findViewById(R.id.bsdk_bottom_sheet_content_container);
        view.setClickable(true);
    }
}
