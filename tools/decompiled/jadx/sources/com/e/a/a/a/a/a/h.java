package com.e.a.a.a.a.a;

import android.support.v7.widget.RecyclerView;
import android.util.Log;

/* JADX INFO: compiled from: ItemChangeAnimationManager.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends b<e> {
    protected abstract void a(e eVar);

    public abstract boolean a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4);

    protected abstract void b(e eVar);

    public h(com.e.a.a.a.a.a aVar) {
        super(aVar);
    }

    @Override // com.e.a.a.a.a.a.b
    public void d(e eVar, RecyclerView.ViewHolder viewHolder) {
        if (a()) {
            Log.d("ARVItemChangeAnimMgr", "dispatchChangeStarting(" + viewHolder + ")");
        }
        this.f1545a.dispatchChangeStarting(viewHolder, viewHolder == eVar.f1556b);
    }

    @Override // com.e.a.a.a.a.a.b
    public void e(e eVar, RecyclerView.ViewHolder viewHolder) {
        if (a()) {
            Log.d("ARVItemChangeAnimMgr", "dispatchChangeFinished(" + viewHolder + ")");
        }
        this.f1545a.dispatchChangeFinished(viewHolder, viewHolder == eVar.f1556b);
    }

    public long h() {
        return this.f1545a.getChangeDuration();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(e eVar) {
        if (eVar.f1556b != null && eVar.f1556b.itemView != null) {
            a(eVar);
        }
        if (eVar.f1555a != null && eVar.f1555a.itemView != null) {
            b(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.e.a.a.a.a.a.b
    public boolean f(e eVar, RecyclerView.ViewHolder viewHolder) {
        if (eVar.f1556b != null && (viewHolder == null || eVar.f1556b == viewHolder)) {
            b(eVar, eVar.f1556b);
            e(eVar, eVar.f1556b);
            eVar.a(eVar.f1556b);
        }
        if (eVar.f1555a != null && (viewHolder == null || eVar.f1555a == viewHolder)) {
            b(eVar, eVar.f1555a);
            e(eVar, eVar.f1555a);
            eVar.a(eVar.f1555a);
        }
        return eVar.f1556b == null && eVar.f1555a == null;
    }
}
