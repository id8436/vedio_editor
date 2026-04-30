package com.behance.sdk.ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.Nullable;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorCheckBoxField extends RelativeLayout implements View.OnClickListener {
    private SwitchCompat selectSwitch;

    public BehanceSDKProjectEditorCheckBoxField(Context context) {
        super(context);
        init(null);
    }

    public BehanceSDKProjectEditorCheckBoxField(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet);
    }

    public BehanceSDKProjectEditorCheckBoxField(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(@Nullable AttributeSet attributeSet) {
        inflate(getContext(), R.layout.bsdk_view_project_editor_setting_check_box, this);
        this.selectSwitch = (SwitchCompat) findViewById(R.id.bsdk_settings_check_box_switch);
        TextView textView = (TextView) findViewById(R.id.bsdk_settings_check_box_title);
        textView.setOnClickListener(this);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKSettingsSwitchView);
            textView.setText(typedArrayObtainStyledAttributes.getString(R.styleable.BehanceSDKSettingsSwitchView_bsdk_label));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.selectSwitch.toggle();
    }

    public void setChecked(boolean z) {
        this.selectSwitch.setChecked(z);
    }

    public void setOnCheckChangedListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.selectSwitch.setOnCheckedChangeListener(onCheckedChangeListener);
    }
}
