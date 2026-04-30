package com.adobe.creativesdk.foundation.internal.utils;

import android.graphics.Typeface;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.auth.R;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCSDKActionBarController {
    public static void setTitle(View view, String str) {
        TextView textView = (TextView) view.findViewById(R.id.adobe_csdk_actionbar_title);
        if (textView != null) {
            textView.setText(str);
        }
    }

    public static void setTitleWithColor(View view, String str, int i) {
        TextView textView = (TextView) view.findViewById(R.id.adobe_csdk_actionbar_title);
        if (textView != null) {
            textView.setTextColor(i);
            textView.setText(str);
        }
    }

    public static void changeTextColor(View view, int i) {
        TextView textView = (TextView) view.findViewById(R.id.adobe_csdk_actionbar_title);
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    public static View getTextView(View view) {
        return view.findViewById(R.id.adobe_csdk_actionbar_title);
    }

    public static void setTypeface(View view, Typeface typeface) {
        ((TextView) view.findViewById(R.id.adobe_csdk_actionbar_title)).setTypeface(typeface);
    }

    public static void setVisible(View view, boolean z) {
        Toolbar toolbar;
        if (view != null && (toolbar = (Toolbar) view.findViewById(R.id.adobe_csdk_actionbar_toolbar_loki)) != null) {
            if (z) {
                toolbar.setVisibility(0);
            } else {
                toolbar.setVisibility(8);
            }
        }
    }
}
