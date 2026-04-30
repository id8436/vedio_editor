package com.adobe.creativesdk.foundation.internal.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;

/* JADX INFO: loaded from: classes2.dex */
public class CreativeSDKAutoCompleteTextView extends AutoCompleteTextView {
    public CreativeSDKAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CreativeSDKAutoCompleteTextView(Context context) {
        super(context);
    }

    @TargetApi(21)
    public CreativeSDKAutoCompleteTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public CreativeSDKAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface) {
        super.setTypeface(AdobeCSDKTypeFace.getTypeface(getContext()));
    }
}
