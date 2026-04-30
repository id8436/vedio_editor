package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.behance.sdk.R;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorSettingsItemViewHolder extends RecyclerView.ViewHolder {
    public RelativeLayout bsdkCardProjectEditorSettingContainer;
    public ImageView bsdkCardProjectEditorSettingSelected;
    public BehanceSDKTextView bsdkCardProjectEditorSettingText;

    public BehanceSDKProjectEditorSettingsItemViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorSettingContainer = (RelativeLayout) view.findViewById(R.id.bsdk_card_project_editor_setting_container);
        this.bsdkCardProjectEditorSettingSelected = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_setting_selected);
        this.bsdkCardProjectEditorSettingText = (BehanceSDKTextView) view.findViewById(R.id.bsdk_card_project_editor_setting_text);
    }
}
