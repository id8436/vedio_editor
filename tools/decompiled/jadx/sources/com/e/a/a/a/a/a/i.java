package com.e.a.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import android.util.Log;

/* JADX INFO: compiled from: ItemMoveAnimationManager.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class i extends b<k> {
    public abstract boolean a(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4);

    public i(com.e.a.a.a.a.a aVar) {
        super(aVar);
    }

    public long h() {
        return this.f1545a.getMoveDuration();
    }

    @Override // com.e.a.a.a.a.a.b
    public void d(k kVar, RecyclerView.ViewHolder viewHolder) {
        if (a()) {
            Log.d("ARVItemMoveAnimMgr", "dispatchMoveStarting(" + viewHolder + ")");
        }
        this.f1545a.dispatchMoveStarting(viewHolder);
    }

    @Override // com.e.a.a.a.a.a.b
    public void e(k kVar, RecyclerView.ViewHolder viewHolder) {
        if (a()) {
            Log.d("ARVItemMoveAnimMgr", "dispatchMoveFinished(" + viewHolder + ")");
        }
        this.f1545a.dispatchMoveFinished(viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public boolean f(k kVar, RecyclerView.ViewHolder viewHolder) {
        if (kVar.f1561a == null || !(viewHolder == null || kVar.f1561a == viewHolder)) {
            return false;
        }
        b(kVar, kVar.f1561a);
        e(kVar, kVar.f1561a);
        kVar.a(kVar.f1561a);
        return true;
    }
}
