package com.behance.sdk.senab.photoview;

import android.annotation.TargetApi;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class SDK16 {
    public static void postOnAnimation(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
