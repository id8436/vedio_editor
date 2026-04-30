package com.e.a.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import com.google.gdata.data.Category;

/* JADX INFO: compiled from: MoveAnimationInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class k extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView.ViewHolder f1561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1565e;

    public k(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        this.f1561a = viewHolder;
        this.f1562b = i;
        this.f1563c = i2;
        this.f1564d = i3;
        this.f1565e = i4;
    }

    @Override // com.e.a.a.a.a.a.g
    public RecyclerView.ViewHolder a() {
        return this.f1561a;
    }

    @Override // com.e.a.a.a.a.a.g
    public void a(RecyclerView.ViewHolder viewHolder) {
        if (this.f1561a == viewHolder) {
            this.f1561a = null;
        }
    }

    public String toString() {
        return "MoveAnimationInfo{holder=" + this.f1561a + ", fromX=" + this.f1562b + ", fromY=" + this.f1563c + ", toX=" + this.f1564d + ", toY=" + this.f1565e + Category.SCHEME_SUFFIX;
    }
}
