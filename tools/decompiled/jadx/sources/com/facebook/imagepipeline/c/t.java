package com.facebook.imagepipeline.c;

import android.app.ActivityManager;
import android.os.Build;
import android.support.v7.widget.ActivityChooserView;

/* JADX INFO: compiled from: DefaultBitmapMemoryCacheParamsSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
public class t implements com.facebook.d.d.m<ae> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ActivityManager f2460a;

    public t(ActivityManager activityManager) {
        this.f2460a = activityManager;
    }

    @Override // com.facebook.d.d.m
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ae b() {
        return new ae(c(), 256, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    private int c() {
        int iMin = Math.min(this.f2460a.getMemoryClass() * 1048576, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        if (iMin < 33554432) {
            return 4194304;
        }
        if (iMin < 67108864) {
            return 6291456;
        }
        if (Build.VERSION.SDK_INT < 11) {
            return 8388608;
        }
        return iMin / 4;
    }
}
