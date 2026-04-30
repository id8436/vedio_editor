package com.i.a.b;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ImageLoaderConfiguration.java */
/* JADX INFO: loaded from: classes3.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.i.a.b.a.h f3352a = com.i.a.b.a.h.FIFO;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f3353b;
    private com.i.a.b.b.d w;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3354c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3355d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3356e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3357f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.i.a.b.g.a f3358g = null;
    private Executor h = null;
    private Executor i = null;
    private boolean j = false;
    private boolean k = false;
    private int l = 3;
    private int m = 4;
    private boolean n = false;
    private com.i.a.b.a.h o = f3352a;
    private int p = 0;
    private long q = 0;
    private int r = 0;
    private com.i.a.a.b.a s = null;
    private com.i.a.a.a.b t = null;
    private com.i.a.a.a.b.a u = null;
    private com.i.a.b.d.c v = null;
    private d x = null;
    private boolean y = false;

    public l(Context context) {
        this.f3353b = context.getApplicationContext();
    }

    public l a(int i) {
        if (this.h != null || this.i != null) {
            com.i.a.c.e.c("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
        }
        this.l = i;
        return this;
    }

    public l a(com.i.a.b.a.h hVar) {
        if (this.h != null || this.i != null) {
            com.i.a.c.e.c("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
        }
        this.o = hVar;
        return this;
    }

    public j a() {
        b();
        return new j(this);
    }

    private void b() {
        if (this.h == null) {
            this.h = a.a(this.l, this.m, this.o);
        } else {
            this.j = true;
        }
        if (this.i == null) {
            this.i = a.a(this.l, this.m, this.o);
        } else {
            this.k = true;
        }
        if (this.t == null) {
            if (this.u == null) {
                this.u = a.b();
            }
            this.t = a.a(this.f3353b, this.u, this.q, this.r);
        }
        if (this.s == null) {
            this.s = a.a(this.p);
        }
        if (this.n) {
            this.s = new com.i.a.a.b.a.a(this.s, com.i.a.c.f.a());
        }
        if (this.v == null) {
            this.v = a.a(this.f3353b);
        }
        if (this.w == null) {
            this.w = a.a(this.y);
        }
        if (this.x == null) {
            this.x = d.t();
        }
    }
}
