package com.e.a.a.a.b;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;

/* JADX INFO: compiled from: DraggingItemInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1604e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Rect f1605f = new Rect();

    public i(RecyclerView.ViewHolder viewHolder, int i, int i2) {
        this.f1600a = viewHolder.itemView.getWidth();
        this.f1601b = viewHolder.itemView.getHeight();
        this.f1602c = viewHolder.getItemId();
        this.f1603d = i - viewHolder.itemView.getLeft();
        this.f1604e = i2 - viewHolder.itemView.getTop();
        com.e.a.a.a.d.d.a(viewHolder.itemView, this.f1605f);
    }
}
