package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import com.behance.sdk.R;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorSettingDetailProfileViewHolder extends RecyclerView.ViewHolder {
    public ImageView bsdkCardEditorSettingDetailAvatar;
    public BehanceSDKTextView bsdkCardEditorSettingDetailTextPrimary;
    public BehanceSDKTextView bsdkCardEditorSettingDetailTextSecondary;

    public BehanceSDKProjectEditorSettingDetailProfileViewHolder(View view) {
        super(view);
        this.bsdkCardEditorSettingDetailAvatar = (ImageView) view.findViewById(R.id.bsdk_card_editor_setting_detail_avatar);
        this.bsdkCardEditorSettingDetailTextPrimary = (BehanceSDKTextView) view.findViewById(R.id.bsdk_card_editor_setting_detail_text_primary);
        this.bsdkCardEditorSettingDetailTextSecondary = (BehanceSDKTextView) view.findViewById(R.id.bsdk_card_editor_setting_detail_text_secondary);
    }
}
