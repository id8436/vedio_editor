package com.facebook.imagepipeline.memory;

import android.support.v7.widget.ActivityChooserView;
import android.util.SparseIntArray;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: PoolParams.java */
/* JADX INFO: loaded from: classes2.dex */
public class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseIntArray f2904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2907f;

    public ae(int i, int i2, @Nullable SparseIntArray sparseIntArray) {
        this(i, i2, sparseIntArray, 0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, -1);
    }

    public ae(int i, int i2, @Nullable SparseIntArray sparseIntArray, int i3, int i4, int i5) {
        com.facebook.d.d.k.b(i >= 0 && i2 >= i);
        this.f2903b = i;
        this.f2902a = i2;
        this.f2904c = sparseIntArray;
        this.f2905d = i3;
        this.f2906e = i4;
        this.f2907f = i5;
    }
}
