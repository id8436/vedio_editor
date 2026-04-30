package com.e.a.a.a.c;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: BaseRecyclerViewEventDistributor.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f1628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected RecyclerView f1629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected List<T> f1630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f1631d;

    public RecyclerView a() {
        return this.f1629b;
    }

    public boolean a(T t) {
        return a(t, -1);
    }

    public boolean a(@NonNull T t, int i) {
        if (t == null) {
            throw new IllegalArgumentException("can not specify null for the listener");
        }
        b("add()");
        a("add()");
        if (this.f1630c == null) {
            this.f1630c = new ArrayList();
        }
        if (!this.f1630c.contains(t)) {
            if (i < 0) {
                this.f1630c.add(t);
            } else {
                this.f1630c.add(i, t);
            }
            if (t instanceof b) {
                ((b) t).a(this);
                return true;
            }
            return true;
        }
        return true;
    }

    protected void a(String str) {
        if (this.f1631d) {
            throw new IllegalStateException(str + " can not be called while performing the clear() method");
        }
    }

    protected void b(String str) {
        if (this.f1628a) {
            throw new IllegalStateException(str + " can not be called after release() method called");
        }
    }
}
