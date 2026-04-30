package com.facebook.drawee.c;

import android.graphics.drawable.Animatable;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: AbstractDraweeControllerBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
final class e extends h<Object> {
    e() {
    }

    @Override // com.facebook.drawee.c.h, com.facebook.drawee.c.i
    public void a(String str, @Nullable Object obj, @Nullable Animatable animatable) {
        if (animatable != null) {
            animatable.start();
        }
    }
}
