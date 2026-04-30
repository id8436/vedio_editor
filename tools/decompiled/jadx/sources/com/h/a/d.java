package com.h.a;

import android.R;
import android.app.Activity;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: compiled from: TypefaceHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f3186a;

    public static void a(a aVar) {
        f3186a = aVar;
    }

    public static void a(Activity activity) {
        if (f3186a == null) {
            throw new IllegalStateException("Default typeface collection not initialized. Forgot to call init()?");
        }
        a(activity.findViewById(R.id.content), f3186a);
    }

    public static void a(View view) {
        if (f3186a == null) {
            throw new IllegalStateException("Default typeface collection not initialized. Forgot to call init()?");
        }
        a(view, f3186a);
    }

    public static void a(View view, a aVar) {
        if (view instanceof ViewGroup) {
            a((ViewGroup) view, aVar);
        } else {
            b(view, aVar);
        }
    }

    private static void a(ViewGroup viewGroup, a aVar) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < viewGroup.getChildCount()) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, aVar);
                } else {
                    b(childAt, aVar);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static void b(View view, a aVar) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            Typeface typeface = textView.getTypeface();
            textView.setTypeface(aVar.a(typeface == null ? 0 : typeface.getStyle()));
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
    }
}
