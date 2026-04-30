package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.net.Uri;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes3.dex */
public final class zzhf extends ImageView {
    private Uri zzSJ;
    private int zzSK;
    private int zzSL;
    private zza zzSM;
    private int zzSN;
    private float zzSO;

    public interface zza {
        Path zzi(int i, int i2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.zzSM != null) {
            canvas.clipPath(this.zzSM.zzi(getWidth(), getHeight()));
        }
        super.onDraw(canvas);
        if (this.zzSL != 0) {
            canvas.drawColor(this.zzSL);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredWidth;
        int measuredHeight;
        super.onMeasure(i, i2);
        switch (this.zzSN) {
            case 1:
                measuredHeight = getMeasuredHeight();
                measuredWidth = (int) (measuredHeight * this.zzSO);
                break;
            case 2:
                measuredWidth = getMeasuredWidth();
                measuredHeight = (int) (measuredWidth / this.zzSO);
                break;
            default:
                return;
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    public void zzaK(int i) {
        this.zzSK = i;
    }

    public void zzi(Uri uri) {
        this.zzSJ = uri;
    }

    public int zzlC() {
        return this.zzSK;
    }
}
