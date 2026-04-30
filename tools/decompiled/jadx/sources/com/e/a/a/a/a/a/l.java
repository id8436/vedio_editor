package com.e.a.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import com.google.gdata.data.Category;

/* JADX INFO: compiled from: RemoveAnimationInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class l extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView.ViewHolder f1566a;

    public l(RecyclerView.ViewHolder viewHolder) {
        this.f1566a = viewHolder;
    }

    @Override // com.e.a.a.a.a.a.g
    public RecyclerView.ViewHolder a() {
        return this.f1566a;
    }

    @Override // com.e.a.a.a.a.a.g
    public void a(RecyclerView.ViewHolder viewHolder) {
        if (this.f1566a == viewHolder) {
            this.f1566a = null;
        }
    }

    public String toString() {
        return "RemoveAnimationInfo{holder=" + this.f1566a + Category.SCHEME_SUFFIX;
    }
}
