package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import com.behance.sdk.R;
import com.behance.sdk.ui.adapters.helpers.BehanceSDKViewHolderTouchHelper;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorReorderViewHolder extends RecyclerView.ViewHolder implements BehanceSDKViewHolderTouchHelper {
    public BehanceSDKTextView cardReorderDescription;
    public ImageView cardReorderHandle;
    public ImageView cardReorderThumbnail;

    public BehanceSDKProjectEditorReorderViewHolder(View view) {
        super(view);
        this.cardReorderHandle = (ImageView) view.findViewById(R.id.card_reorder_handle);
        this.cardReorderThumbnail = (ImageView) view.findViewById(R.id.card_reorder_thumbnail);
        this.cardReorderDescription = (BehanceSDKTextView) view.findViewById(R.id.card_reorder_description);
    }

    @Override // com.behance.sdk.ui.adapters.helpers.BehanceSDKViewHolderTouchHelper
    public void onItemSelected() {
    }

    @Override // com.behance.sdk.ui.adapters.helpers.BehanceSDKViewHolderTouchHelper
    public void onItemCleared() {
    }
}
