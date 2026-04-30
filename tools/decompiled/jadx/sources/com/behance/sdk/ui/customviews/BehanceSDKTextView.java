package com.behance.sdk.ui.customviews;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKFontUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKTextView extends AppCompatTextView {
    private static final String FONT_STYLE_ATTR_NAME = "fontStyle";

    public BehanceSDKTextView(Context context) {
        super(context);
        init(context, null);
    }

    public BehanceSDKTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public BehanceSDKTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface) {
        super.setTypeface(typeface);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        super.setTypeface(typeface, i);
    }

    private void init(Context context, AttributeSet attributeSet) {
        String attributeValue = null;
        if (attributeSet != null) {
            attributeValue = attributeSet.getAttributeValue(BehanceSDKConstants.BEHANCE_SDK_XMLNS, FONT_STYLE_ATTR_NAME);
        }
        BehanceSDKFontUtils.setAdobeCleanFont(context, this, attributeValue);
    }
}
