package com.adobe.common;

/* JADX INFO: loaded from: classes.dex */
public class Size {
    private int mHeight;
    private int mWidth;

    public static Size makeSize(int i, int i2) {
        return new Size(i, i2);
    }

    public Size() {
        this(0, 0);
    }

    public Size(int i, int i2) {
        this.mWidth = i;
        this.mHeight = i2;
    }

    public final int getWidth() {
        return this.mWidth;
    }

    public final void setWidth(int i) {
        this.mWidth = i;
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public final void setHeight(int i) {
        this.mHeight = i;
    }

    public final int hashCode() {
        return ((this.mHeight + 31) * 31) + this.mWidth;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Size size = (Size) obj;
            return this.mHeight == size.mHeight && this.mWidth == size.mWidth;
        }
        return false;
    }

    public final String toString() {
        return "Size [mWidth=" + this.mWidth + ", mHeight=" + this.mHeight + "]";
    }
}
