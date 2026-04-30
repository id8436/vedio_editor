package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.EditText;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorSettingDetailAddViewHolder extends RecyclerView.ViewHolder {
    public EditText bsdkCardEditorSettingDetailAddEditText;

    public BehanceSDKProjectEditorSettingDetailAddViewHolder(View view) {
        super(view);
        this.bsdkCardEditorSettingDetailAddEditText = (EditText) view.findViewById(R.id.bsdk_card_editor_setting_detail_add_edit_text);
    }
}
