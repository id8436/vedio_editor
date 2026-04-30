package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.EditText;

/* JADX INFO: loaded from: classes2.dex */
public class CreativeSDKEditText extends EditText {
    private static Typeface _csdkadobeCleanFont = null;

    public CreativeSDKEditText(Context context) {
        super(context);
    }

    public CreativeSDKEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        super.setEllipsize(truncateAt);
    }

    public CreativeSDKEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface) {
        super.setTypeface(AdobeCSDKTypeFace.getTypeface(getContext()));
    }
}
