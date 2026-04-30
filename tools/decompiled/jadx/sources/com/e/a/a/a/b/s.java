package com.e.a.a.a.b;

import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: RecyclerViewDragDropManager.java */
/* JADX INFO: loaded from: classes2.dex */
class s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<l> f1621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1622b;

    public s(l lVar) {
        this.f1621a = new WeakReference<>(lVar);
    }

    public void a() {
        l lVar;
        RecyclerView recyclerViewF;
        if (!this.f1622b && (lVar = this.f1621a.get()) != null && (recyclerViewF = lVar.f()) != null) {
            ViewCompat.postOnAnimation(recyclerViewF, this);
            this.f1622b = true;
        }
    }

    public void b() {
        if (this.f1622b) {
            this.f1622b = false;
        }
    }

    public void c() {
        this.f1621a.clear();
        this.f1622b = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        l lVar = this.f1621a.get();
        if (lVar != null && this.f1622b) {
            lVar.e();
            RecyclerView recyclerViewF = lVar.f();
            if (recyclerViewF != null && this.f1622b) {
                ViewCompat.postOnAnimation(recyclerViewF, this);
            } else {
                this.f1622b = false;
            }
        }
    }
}
