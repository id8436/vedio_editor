package com.e.a.a.a.a.a;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView;
import com.e.a.a.a.a.a.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: BaseItemAnimationManager.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T extends g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.e.a.a.a.a.a f1545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected List<T> f1546b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected List<RecyclerView.ViewHolder> f1548d = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected List<List<T>> f1547c = new ArrayList();

    protected abstract void a(T t);

    protected abstract void a(T t, RecyclerView.ViewHolder viewHolder);

    protected abstract void b(T t, RecyclerView.ViewHolder viewHolder);

    protected abstract void c(T t, RecyclerView.ViewHolder viewHolder);

    public abstract void d(T t, RecyclerView.ViewHolder viewHolder);

    public abstract void e(T t, RecyclerView.ViewHolder viewHolder);

    protected abstract boolean f(T t, RecyclerView.ViewHolder viewHolder);

    public b(com.e.a.a.a.a.a aVar) {
        this.f1545a = aVar;
    }

    protected final boolean a() {
        return this.f1545a.b();
    }

    public boolean b() {
        return !this.f1546b.isEmpty();
    }

    public boolean c() {
        return (this.f1546b.isEmpty() && this.f1548d.isEmpty() && this.f1547c.isEmpty()) ? false : true;
    }

    public boolean b(RecyclerView.ViewHolder viewHolder) {
        return this.f1548d.remove(viewHolder);
    }

    public void d() {
        List<RecyclerView.ViewHolder> list = this.f1548d;
        for (int size = list.size() - 1; size >= 0; size--) {
            ViewCompat.animate(list.get(size).itemView).cancel();
        }
    }

    public void a(boolean z, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f1546b);
        this.f1546b.clear();
        if (z) {
            this.f1547c.add(arrayList);
            ViewCompat.postOnAnimationDelayed(((g) arrayList.get(0)).a().itemView, new c(this, arrayList), j);
        } else {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                b((g) it.next());
            }
            arrayList.clear();
        }
    }

    public void c(RecyclerView.ViewHolder viewHolder) {
        List<T> list = this.f1546b;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (f(list.get(size), viewHolder) && viewHolder != null) {
                list.remove(size);
            }
        }
        if (viewHolder == null) {
            list.clear();
        }
    }

    public void e() {
        c((RecyclerView.ViewHolder) null);
    }

    public void d(RecyclerView.ViewHolder viewHolder) {
        for (int size = this.f1547c.size() - 1; size >= 0; size--) {
            List<T> list = this.f1547c.get(size);
            for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                if (f(list.get(size2), viewHolder) && viewHolder != null) {
                    list.remove(size2);
                }
            }
            if (viewHolder == null) {
                list.clear();
            }
            if (list.isEmpty()) {
                this.f1547c.remove(list);
            }
        }
    }

    public void f() {
        d(null);
    }

    void b(T t) {
        a(t);
    }

    protected void e(RecyclerView.ViewHolder viewHolder) {
        this.f1545a.endAnimation(viewHolder);
    }

    protected void g() {
        this.f1545a.a();
    }

    protected void c(T t) {
        if (t == null) {
            throw new IllegalStateException("info is null");
        }
        this.f1546b.add(t);
    }

    protected void a(T t, RecyclerView.ViewHolder viewHolder, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        viewPropertyAnimatorCompat.setListener(new d(this, t, viewHolder, viewPropertyAnimatorCompat));
        a(viewHolder);
        viewPropertyAnimatorCompat.start();
    }

    private void a(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder == null) {
            throw new IllegalStateException("item is null");
        }
        this.f1548d.add(viewHolder);
    }
}
