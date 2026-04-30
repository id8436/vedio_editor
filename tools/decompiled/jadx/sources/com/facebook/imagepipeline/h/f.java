package com.facebook.imagepipeline.h;

import android.support.v7.widget.ActivityChooserView;

/* JADX INFO: compiled from: ImmutableQualityInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f2585a = a(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f2588d;

    private f(int i, boolean z, boolean z2) {
        this.f2586b = i;
        this.f2587c = z;
        this.f2588d = z2;
    }

    @Override // com.facebook.imagepipeline.h.g
    public int a() {
        return this.f2586b;
    }

    @Override // com.facebook.imagepipeline.h.g
    public boolean b() {
        return this.f2587c;
    }

    @Override // com.facebook.imagepipeline.h.g
    public boolean c() {
        return this.f2588d;
    }

    public int hashCode() {
        return ((this.f2587c ? 4194304 : 0) ^ this.f2586b) ^ (this.f2588d ? 8388608 : 0);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f2586b == fVar.f2586b && this.f2587c == fVar.f2587c && this.f2588d == fVar.f2588d;
    }

    public static g a(int i, boolean z, boolean z2) {
        return new f(i, z, z2);
    }
}
