package com.e.a.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import android.util.Log;

/* JADX INFO: compiled from: ItemAddAnimationManager.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f extends b<a> {
    public abstract boolean a(RecyclerView.ViewHolder viewHolder);

    public f(com.e.a.a.a.a.a aVar) {
        super(aVar);
    }

    public long h() {
        return this.f1545a.getAddDuration();
    }

    @Override // com.e.a.a.a.a.a.b
    public void d(a aVar, RecyclerView.ViewHolder viewHolder) {
        if (a()) {
            Log.d("ARVItemAddAnimMgr", "dispatchAddStarting(" + viewHolder + ")");
        }
        this.f1545a.dispatchAddStarting(viewHolder);
    }

    @Override // com.e.a.a.a.a.a.b
    public void e(a aVar, RecyclerView.ViewHolder viewHolder) {
        if (a()) {
            Log.d("ARVItemAddAnimMgr", "dispatchAddFinished(" + viewHolder + ")");
        }
        this.f1545a.dispatchAddFinished(viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public boolean f(a aVar, RecyclerView.ViewHolder viewHolder) {
        if (aVar.f1544a == null || !(viewHolder == null || aVar.f1544a == viewHolder)) {
            return false;
        }
        b(aVar, aVar.f1544a);
        e(aVar, aVar.f1544a);
        aVar.a(aVar.f1544a);
        return true;
    }
}
