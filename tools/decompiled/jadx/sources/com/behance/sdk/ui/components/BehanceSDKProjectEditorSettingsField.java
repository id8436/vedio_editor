package com.behance.sdk.ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorSettingsField extends LinearLayout {
    private TextView description;
    private TextView label;

    public BehanceSDKProjectEditorSettingsField(Context context) {
        super(context);
        init(null);
    }

    public BehanceSDKProjectEditorSettingsField(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet);
    }

    public BehanceSDKProjectEditorSettingsField(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(@Nullable AttributeSet attributeSet) {
        setOrientation(1);
        inflate(getContext(), R.layout.bsdk_view_project_editor_settings, this);
        this.label = (TextView) findViewById(R.id.bsdk_settings_label);
        this.description = (TextView) findViewById(R.id.bsdk_settings_description);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKSettingsView);
            setLabelText(typedArrayObtainStyledAttributes.getString(R.styleable.BehanceSDKSettingsView_bsdk_label_res));
            typedArrayObtainStyledAttributes.recycle();
        }
        setPadding(getResources().getDimensionPixelSize(R.dimen.bsdk_editor_settings_row_padding_horizontal), getResources().getDimensionPixelSize(R.dimen.bsdk_editor_settings_row_padding_vertical), getResources().getDimensionPixelSize(R.dimen.bsdk_editor_settings_row_padding_horizontal), getResources().getDimensionPixelSize(R.dimen.bsdk_editor_settings_row_padding_vertical));
        this.description.setVisibility(8);
        this.description.setMaxLines(4);
        this.description.setEllipsize(TextUtils.TruncateAt.END);
    }

    public void setLabelText(String str) {
        this.label.setText(str);
    }

    public void setDescriptionText(int i) {
        setDescriptionText(getResources().getString(i));
    }

    public void setDescriptionText(String str) {
        this.description.setVisibility(str.length() > 0 ? 0 : 8);
        this.description.setText(str);
    }
}
