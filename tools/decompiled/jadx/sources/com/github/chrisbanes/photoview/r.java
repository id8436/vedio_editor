package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.RectF;
import android.widget.OverScroller;

/* JADX INFO: compiled from: PhotoViewAttacher.java */
/* JADX INFO: loaded from: classes2.dex */
class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f3167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final OverScroller f3168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3169c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3170d;

    public r(l lVar, Context context) {
        this.f3167a = lVar;
        this.f3168b = new OverScroller(context);
    }

    public void a() {
        this.f3168b.forceFinished(true);
    }

    public void a(int i, int i2, int i3, int i4) {
        int iRound;
        int i5;
        int iRound2;
        int i6;
        RectF rectFA = this.f3167a.a();
        if (rectFA != null) {
            int iRound3 = Math.round(-rectFA.left);
            if (i < rectFA.width()) {
                iRound = Math.round(rectFA.width() - i);
                i5 = 0;
            } else {
                iRound = iRound3;
                i5 = iRound3;
            }
            int iRound4 = Math.round(-rectFA.top);
            if (i2 < rectFA.height()) {
                iRound2 = Math.round(rectFA.height() - i2);
                i6 = 0;
            } else {
                iRound2 = iRound4;
                i6 = iRound4;
            }
            this.f3169c = iRound3;
            this.f3170d = iRound4;
            if (iRound3 != iRound || iRound4 != iRound2) {
                this.f3168b.fling(iRound3, iRound4, i3, i4, i5, iRound, i6, iRound2, 0, 0);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f3168b.isFinished() && this.f3168b.computeScrollOffset()) {
            int currX = this.f3168b.getCurrX();
            int currY = this.f3168b.getCurrY();
            this.f3167a.r.postTranslate(this.f3169c - currX, this.f3170d - currY);
            this.f3167a.m();
            this.f3169c = currX;
            this.f3170d = currY;
            a.a(this.f3167a.m, this);
        }
    }
}
