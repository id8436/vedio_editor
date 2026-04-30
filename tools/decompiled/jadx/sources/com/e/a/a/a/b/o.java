package com.e.a.a.a.b;

/* JADX INFO: compiled from: RecyclerViewDragDropManager.java */
/* JADX INFO: loaded from: classes2.dex */
class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1617a;

    o(l lVar) {
        this.f1617a = lVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1617a.x == this) {
            this.f1617a.x = null;
            this.f1617a.e(false);
        }
    }
}
