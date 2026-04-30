package com.adobe.utility;

import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
public final class MessageUtils {
    private MessageUtils() {
    }

    public static void showMessageForLongDuration(Context context, CharSequence charSequence) {
        Toast.makeText(context, charSequence, 1).show();
    }

    public static void showMessageForLongDuration(Context context, int i) {
        Toast.makeText(context, i, 1).show();
    }

    public static void showMessageForShortDuration(Context context, CharSequence charSequence) {
        Toast.makeText(context, charSequence, 0).show();
    }

    public static void showMessageForShortDuration(Context context, int i) {
        Toast.makeText(context, i, 0).show();
    }
}
