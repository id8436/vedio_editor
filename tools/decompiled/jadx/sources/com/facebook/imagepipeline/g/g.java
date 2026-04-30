package com.facebook.imagepipeline.g;

import android.support.v7.widget.ActivityChooserView;
import com.facebook.d.d.k;
import java.util.List;

/* JADX INFO: compiled from: SimpleProgressiveJpegConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f2573a;

    public g() {
        this(new i());
    }

    public g(j jVar) {
        this.f2573a = (j) k.a(jVar);
    }

    @Override // com.facebook.imagepipeline.g.e
    public int a(int i) {
        List<Integer> listA = this.f2573a.a();
        if (listA == null || listA.isEmpty()) {
            return i + 1;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < listA.size()) {
                if (listA.get(i3).intValue() <= i) {
                    i2 = i3 + 1;
                } else {
                    return listA.get(i3).intValue();
                }
            } else {
                return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
        }
    }

    @Override // com.facebook.imagepipeline.g.e
    public com.facebook.imagepipeline.h.g b(int i) {
        return com.facebook.imagepipeline.h.f.a(i, i >= this.f2573a.b(), false);
    }
}
