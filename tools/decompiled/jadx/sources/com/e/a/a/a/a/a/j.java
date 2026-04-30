package com.e.a.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import android.util.Log;

/* JADX INFO: compiled from: ItemRemoveAnimationManager.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j extends b<l> {
    public abstract boolean a(RecyclerView.ViewHolder viewHolder);

    public j(com.e.a.a.a.a.a aVar) {
        super(aVar);
    }

    public long h() {
        return this.f1545a.getRemoveDuration();
    }

    @Override // com.e.a.a.a.a.a.b
    public void d(l lVar, RecyclerView.ViewHolder viewHolder) {
        if (a()) {
            Log.d("ARVItemRemoveAnimMgr", "dispatchRemoveStarting(" + viewHolder + ")");
        }
        this.f1545a.dispatchRemoveStarting(viewHolder);
    }

    @Override // com.e.a.a.a.a.a.b
    public void e(l lVar, RecyclerView.ViewHolder viewHolder) {
        if (a()) {
            Log.d("ARVItemRemoveAnimMgr", "dispatchRemoveFinished(" + viewHolder + ")");
        }
        this.f1545a.dispatchRemoveFinished(viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public boolean f(l lVar, RecyclerView.ViewHolder viewHolder) {
        if (lVar.f1566a == null || !(viewHolder == null || lVar.f1566a == viewHolder)) {
            return false;
        }
        b(lVar, lVar.f1566a);
        e(lVar, lVar.f1566a);
        lVar.a(lVar.f1566a);
        return true;
    }
}
