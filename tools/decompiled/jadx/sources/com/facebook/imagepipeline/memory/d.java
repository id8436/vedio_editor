package com.facebook.imagepipeline.memory;

/* JADX INFO: compiled from: BasePool.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends RuntimeException {
    public d(int i, int i2, int i3, int i4) {
        super("Pool hard cap violation? Hard cap = " + i + " Used size = " + i2 + " Free size = " + i3 + " Request size = " + i4);
    }
}
