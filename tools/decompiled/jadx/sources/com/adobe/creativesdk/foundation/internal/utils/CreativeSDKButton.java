package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.Button;

/* JADX INFO: loaded from: classes2.dex */
public class CreativeSDKButton extends Button {
    public CreativeSDKButton(Context context) {
        super(context);
    }

    public CreativeSDKButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CreativeSDKButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface) {
        super.setTypeface(AdobeCSDKTypeFace.getTypeface(getContext()));
    }
}
