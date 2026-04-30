package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.behance.sdk.R;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorSettingDetailTextViewHolder extends RecyclerView.ViewHolder {
    public BehanceSDKTextView bsdkCardEditorSettingDetailText;

    public BehanceSDKProjectEditorSettingDetailTextViewHolder(View view) {
        super(view);
        this.bsdkCardEditorSettingDetailText = (BehanceSDKTextView) view.findViewById(R.id.bsdk_card_editor_setting_detail_text);
    }
}
