package com.b.a.d.d.d;

import android.graphics.Bitmap;
import android.os.Handler;

/* JADX INFO: compiled from: GifFrameLoader.java */
/* JADX INFO: loaded from: classes2.dex */
class i extends com.b.a.h.b.g<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f1061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f1063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f1064d;

    public i(Handler handler, int i, long j) {
        this.f1061a = handler;
        this.f1062b = i;
        this.f1063c = j;
    }

    public Bitmap a() {
        return this.f1064d;
    }

    @Override // com.b.a.h.b.k
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResourceReady(Bitmap bitmap, com.b.a.h.a.d<? super Bitmap> dVar) {
        this.f1064d = bitmap;
        this.f1061a.sendMessageAtTime(this.f1061a.obtainMessage(1, this), this.f1063c);
    }
}
