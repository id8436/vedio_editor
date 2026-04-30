package com.e.a.a.a.b;

import com.google.gdata.data.Category;

/* JADX INFO: compiled from: ItemDraggableRange.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1607b;

    public j(int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException("end position (= " + i2 + ") is smaller than start position (=" + i + ")");
        }
        this.f1606a = i;
        this.f1607b = i2;
    }

    public int a() {
        return this.f1606a;
    }

    public int b() {
        return this.f1607b;
    }

    public boolean a(int i) {
        return i >= this.f1606a && i <= this.f1607b;
    }

    protected String c() {
        return "ItemDraggableRange";
    }

    public String toString() {
        return c() + "{mStart=" + this.f1606a + ", mEnd=" + this.f1607b + Category.SCHEME_SUFFIX;
    }
}
