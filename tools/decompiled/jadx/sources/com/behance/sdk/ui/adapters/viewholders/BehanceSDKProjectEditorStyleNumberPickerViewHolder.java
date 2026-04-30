package com.behance.sdk.ui.adapters.viewholders;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.behance.sdk.R;
import com.behance.sdk.ui.components.BehanceSDKAnimateNumberView;
import com.behance.sdk.ui.customviews.BehanceSDKEditText;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorStyleNumberPickerViewHolder extends RecyclerView.ViewHolder {
    public RelativeLayout bsdkCardProjectEditorStyleNumberPickerContainer;
    public BehanceSDKAnimateNumberView bsdkCardProjectEditorStyleNumberPickerCount;
    public ImageView bsdkCardProjectEditorStyleNumberPickerDown;
    public BehanceSDKEditText bsdkCardProjectEditorStyleNumberPickerInput;
    public BehanceSDKTextView bsdkCardProjectEditorStyleNumberPickerText;
    public ImageView bsdkCardProjectEditorStyleNumberPickerUp;

    public BehanceSDKProjectEditorStyleNumberPickerViewHolder(View view) {
        super(view);
        this.bsdkCardProjectEditorStyleNumberPickerContainer = (RelativeLayout) view.findViewById(R.id.bsdk_card_project_editor_style_number_picker_container);
        this.bsdkCardProjectEditorStyleNumberPickerText = (BehanceSDKTextView) view.findViewById(R.id.bsdk_card_project_editor_style_number_picker_text);
        this.bsdkCardProjectEditorStyleNumberPickerInput = (BehanceSDKEditText) view.findViewById(R.id.bsdk_card_project_editor_style_number_picker_input);
        this.bsdkCardProjectEditorStyleNumberPickerUp = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_style_number_picker_up);
        this.bsdkCardProjectEditorStyleNumberPickerDown = (ImageView) view.findViewById(R.id.bsdk_card_project_editor_style_number_picker_down);
        this.bsdkCardProjectEditorStyleNumberPickerCount = (BehanceSDKAnimateNumberView) view.findViewById(R.id.bsdk_card_project_editor_style_number_picker_count);
    }
}
