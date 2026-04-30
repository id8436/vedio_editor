package com.adobe.creativesdk.foundation.internal.utils;

import android.os.Build;
import android.support.design.widget.TabLayout;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes2.dex */
public class TabLayoutHelper {
    public static void setupTabLayout(final TabLayout tabLayout) {
        tabLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.adobe.creativesdk.foundation.internal.utils.TabLayoutHelper.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (Build.VERSION.SDK_INT >= 16) {
                    tabLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    tabLayout.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
                LinearLayout linearLayout = (LinearLayout) tabLayout.getChildAt(0);
                int i = 0;
                for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
                    int measuredWidth = linearLayout.getChildAt(i2).getMeasuredWidth();
                    if (measuredWidth > i) {
                        i = measuredWidth;
                    }
                }
            }
        });
    }
}
