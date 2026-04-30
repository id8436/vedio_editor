package com.adobe.creativesdk.foundation.internal.customviews;

import android.content.Context;
import android.graphics.Typeface;
import android.support.annotation.NonNull;
import android.support.design.widget.TabLayout;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class CustomFontTabLayout extends TabLayout {
    private Typeface mTypeface;

    public CustomFontTabLayout(Context context) {
        super(context);
        init();
    }

    public CustomFontTabLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public CustomFontTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.mTypeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/AdobeClean-SemiLight.otf");
    }

    @Override // android.support.design.widget.TabLayout
    public void addTab(@NonNull TabLayout.Tab tab, boolean z) {
        super.addTab(tab, z);
        ViewGroup viewGroup = (ViewGroup) ((ViewGroup) getChildAt(0)).getChildAt(tab.getPosition());
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTypeface(this.mTypeface, 0);
                textView.setSingleLine(true);
                textView.setAllCaps(true);
            }
        }
    }

    public void dynamicallyAddTab(String str) {
        ViewGroup viewGroup = (ViewGroup) getChildAt(0);
        addTab(newTab().setText(str));
        AppCompatTextView appCompatTextView = (AppCompatTextView) ((ViewGroup) viewGroup.getChildAt(getTabCount() - 1)).getChildAt(1);
        appCompatTextView.setTypeface(this.mTypeface, 0);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setAllCaps(true);
    }
}
