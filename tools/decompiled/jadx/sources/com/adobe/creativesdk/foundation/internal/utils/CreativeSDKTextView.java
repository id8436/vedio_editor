package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes2.dex */
public class CreativeSDKTextView extends AppCompatTextView {
    public CreativeSDKTextView(Context context) {
        super(context);
    }

    public CreativeSDKTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CreativeSDKTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface) {
        super.setTypeface(AdobeCSDKTypeFace.getTypeface(getContext()));
    }
}
