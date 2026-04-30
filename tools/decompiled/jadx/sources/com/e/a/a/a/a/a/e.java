package com.e.a.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import com.google.gdata.data.Category;

/* JADX INFO: compiled from: ChangeAnimationInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView.ViewHolder f1555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclerView.ViewHolder f1556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1560f;

    public e(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        this.f1556b = viewHolder;
        this.f1555a = viewHolder2;
        this.f1557c = i;
        this.f1558d = i2;
        this.f1559e = i3;
        this.f1560f = i4;
    }

    @Override // com.e.a.a.a.a.a.g
    public RecyclerView.ViewHolder a() {
        return this.f1556b != null ? this.f1556b : this.f1555a;
    }

    @Override // com.e.a.a.a.a.a.g
    public void a(RecyclerView.ViewHolder viewHolder) {
        if (this.f1556b == viewHolder) {
            this.f1556b = null;
        }
        if (this.f1555a == viewHolder) {
            this.f1555a = null;
        }
        if (this.f1556b == null && this.f1555a == null) {
            this.f1557c = 0;
            this.f1558d = 0;
            this.f1559e = 0;
            this.f1560f = 0;
        }
    }

    public String toString() {
        return "ChangeInfo{, oldHolder=" + this.f1556b + ", newHolder=" + this.f1555a + ", fromX=" + this.f1557c + ", fromY=" + this.f1558d + ", toX=" + this.f1559e + ", toY=" + this.f1560f + Category.SCHEME_SUFFIX;
    }
}
