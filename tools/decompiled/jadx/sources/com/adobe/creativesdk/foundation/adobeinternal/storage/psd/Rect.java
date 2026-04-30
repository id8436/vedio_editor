package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

/* JADX INFO: loaded from: classes.dex */
public class Rect {
    public Point origin;
    public Size size;

    public Rect() {
        this.origin = new Point();
        this.size = new Size();
    }

    public Rect(float f2, float f3, float f4, float f5) {
        this.origin = new Point(f2, f3);
        this.size = new Size(f4, f5);
    }

    public boolean isEmpty() {
        return true;
    }

    public Point getOrigin() {
        return this.origin;
    }

    public void setOrigin(Point point) {
        this.origin = point;
    }

    public void setSize(Size size) {
        this.size = size;
    }
}
