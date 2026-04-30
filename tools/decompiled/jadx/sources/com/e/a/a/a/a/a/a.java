package com.e.a.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import com.google.gdata.data.Category;

/* JADX INFO: compiled from: AddAnimationInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView.ViewHolder f1544a;

    public a(RecyclerView.ViewHolder viewHolder) {
        this.f1544a = viewHolder;
    }

    @Override // com.e.a.a.a.a.a.g
    public RecyclerView.ViewHolder a() {
        return this.f1544a;
    }

    @Override // com.e.a.a.a.a.a.g
    public void a(RecyclerView.ViewHolder viewHolder) {
        if (this.f1544a == null) {
            this.f1544a = null;
        }
    }

    public String toString() {
        return "AddAnimationInfo{holder=" + this.f1544a + Category.SCHEME_SUFFIX;
    }
}
