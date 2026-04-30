package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class CreativeSDKBoldTextView extends CreativeSDKTextView {
    public CreativeSDKBoldTextView(Context context) {
        super(context);
    }

    public CreativeSDKBoldTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CreativeSDKBoldTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 18);
        super.setText(spannableString, bufferType);
    }
}
