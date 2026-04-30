package com.b.a.d.d.a;

/* JADX INFO: compiled from: Downsampler.java */
/* JADX INFO: loaded from: classes2.dex */
final class h extends f {
    h() {
    }

    @Override // com.b.a.d.d.a.f
    protected int a(int i, int i2, int i3, int i4) {
        int iCeil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
        int iMax = Math.max(1, Integer.highestOneBit(iCeil));
        return iMax << (iMax >= iCeil ? 0 : 1);
    }

    @Override // com.b.a.d.d.a.a
    public String a() {
        return "AT_MOST.com.bumptech.glide.load.data.bitmap";
    }
}
