package com.behance.sdk.ui.customviews;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEmptyStatesView extends FrameLayout {
    public BehanceSDKEmptyStatesView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(context, attributeSet);
    }

    public BehanceSDKEmptyStatesView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(context, attributeSet);
    }

    private void initialize(Context context, AttributeSet attributeSet) {
        addView(LayoutInflater.from(context).inflate(R.layout.bsdk_custom_view_empty_state, (ViewGroup) this, false));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKEmptyStatesView);
        setIcon(typedArrayObtainStyledAttributes.getDrawable(R.styleable.BehanceSDKEmptyStatesView_bsdk_image_res));
        setTitleText(typedArrayObtainStyledAttributes.getString(R.styleable.BehanceSDKEmptyStatesView_bsdk_title_res));
        setDescriptionText(typedArrayObtainStyledAttributes.getString(R.styleable.BehanceSDKEmptyStatesView_bsdk_description_res));
        setActionText(typedArrayObtainStyledAttributes.getString(R.styleable.BehanceSDKEmptyStatesView_bsdk_action_res));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setTitleText(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            findViewById(R.id.bsdk_empty_state_title).setVisibility(8);
        } else {
            findViewById(R.id.bsdk_empty_state_title).setVisibility(0);
            ((TextView) findViewById(R.id.bsdk_empty_state_title)).setText(str);
        }
    }

    public void setDescriptionText(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            findViewById(R.id.bsdk_empty_state_description).setVisibility(8);
        } else {
            findViewById(R.id.bsdk_empty_state_description).setVisibility(0);
            ((TextView) findViewById(R.id.bsdk_empty_state_description)).setText(str);
        }
    }

    public void setActionText(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            findViewById(R.id.bsdk_empty_state_action).setVisibility(8);
        } else {
            findViewById(R.id.bsdk_empty_state_action).setVisibility(0);
            ((TextView) findViewById(R.id.bsdk_empty_state_action)).setText(str);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == null) {
            findViewById(R.id.bsdk_empty_state_icon).setVisibility(8);
        } else {
            findViewById(R.id.bsdk_empty_state_icon).setVisibility(0);
            ((ImageView) findViewById(R.id.bsdk_empty_state_icon)).setImageDrawable(drawable);
        }
    }

    public void setActionViewOnClickListener(View.OnClickListener onClickListener) {
        findViewById(R.id.bsdk_empty_state_action).setOnClickListener(onClickListener);
    }
}
