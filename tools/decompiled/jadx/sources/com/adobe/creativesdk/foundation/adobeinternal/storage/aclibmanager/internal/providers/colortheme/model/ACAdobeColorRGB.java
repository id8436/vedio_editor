package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model;

import android.graphics.Color;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class ACAdobeColorRGB {
    private double _B;
    private double _G;
    private double _R;
    private WeakReference<ACAdobeColor> _color;

    public ACAdobeColorRGB(ACAdobeColor aCAdobeColor) {
        this._color = new WeakReference<>(aCAdobeColor);
    }

    public int getColor() {
        return Color.rgb((int) this._R, (int) this._G, (int) this._B);
    }

    public void setRGB(double d2, double d3, double d4) {
        this._R = d2;
        this._G = d3;
        this._B = d4;
    }

    public double getR() {
        return this._R;
    }

    public double getG() {
        return this._G;
    }

    public double getB() {
        return this._B;
    }
}
