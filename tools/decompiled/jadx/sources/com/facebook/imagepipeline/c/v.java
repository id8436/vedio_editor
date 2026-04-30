package com.facebook.imagepipeline.c;

import android.support.v7.widget.ActivityChooserView;

/* JADX INFO: compiled from: DefaultEncodedMemoryCacheParamsSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
public class v implements com.facebook.d.d.m<ae> {
    @Override // com.facebook.d.d.m
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ae b() {
        int iC = c();
        return new ae(iC, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, iC, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, iC / 8);
    }

    private int c() {
        int iMin = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (iMin < 16777216) {
            return 1048576;
        }
        if (iMin < 33554432) {
            return 2097152;
        }
        return 4194304;
    }
}
