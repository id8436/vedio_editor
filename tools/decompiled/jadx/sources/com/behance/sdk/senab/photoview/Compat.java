package com.behance.sdk.senab.photoview;

import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class Compat {
    private static final int SIXTY_FPS_INTERVAL = 16;

    public static void postOnAnimation(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            SDK16.postOnAnimation(view, runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }
}
