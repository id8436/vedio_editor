package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model;

/* JADX INFO: loaded from: classes.dex */
public class ACAdobeColor {
    private ACAdobeColorHSV _hsv;
    private ACAdobeColorRGB _rgb;

    public ACAdobeColor() {
        this._rgb = null;
        this._hsv = null;
    }

    public ACAdobeColor(ACAdobeColor aCAdobeColor) {
        if (aCAdobeColor._rgb != null) {
            setRGB(aCAdobeColor._rgb.getR(), aCAdobeColor._rgb.getG(), aCAdobeColor._rgb.getB());
        }
        if (aCAdobeColor._hsv != null) {
            setHSV(aCAdobeColor._hsv.getH(), aCAdobeColor._hsv.getS(), aCAdobeColor._hsv.getV());
        }
    }

    public void setRGB(double d2, double d3, double d4) {
        this._rgb = new ACAdobeColorRGB(this);
        this._rgb.setRGB(d2, d3, d4);
        this._hsv = null;
    }

    public void setHSV(double d2, double d3, double d4) {
        this._hsv = new ACAdobeColorHSV(this);
        this._hsv.setHSV(d2, d3, d4);
        this._rgb = null;
    }

    public int getColor() {
        if (this._hsv != null) {
            return this._hsv.getColor();
        }
        if (this._rgb != null) {
            return this._rgb.getColor();
        }
        return -1;
    }
}
