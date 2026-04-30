package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model;

import android.graphics.Color;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class ACAdobeColorHSV {
    private double _H;
    private double _S;
    private double _V;
    private WeakReference<ACAdobeColor> _color;

    public ACAdobeColorHSV(ACAdobeColor aCAdobeColor) {
        this._color = new WeakReference<>(aCAdobeColor);
    }

    public int getColor() {
        return Color.HSVToColor(new float[]{(float) this._H, (float) this._S, (float) this._V});
    }

    public void setHSV(double d2, double d3, double d4) {
        this._H = d2;
        this._S = d3;
        this._V = d4;
    }

    public double getH() {
        return this._H;
    }

    public double getS() {
        return this._S;
    }

    public double getV() {
        return this._V;
    }
}
