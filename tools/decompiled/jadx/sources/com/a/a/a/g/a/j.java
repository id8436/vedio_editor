package com.a.a.a.g.a;

import com.a.a.a.s;

/* JADX INFO: compiled from: RunJobResultMessage.java */
/* JADX INFO: loaded from: classes.dex */
public class j extends com.a.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s f492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f494f;

    public j() {
        super(com.a.a.a.g.i.RUN_JOB_RESULT);
    }

    public s c() {
        return this.f492d;
    }

    public void a(s sVar) {
        this.f492d = sVar;
    }

    @Override // com.a.a.a.g.b
    protected void a() {
        this.f492d = null;
    }

    public void a(int i) {
        this.f494f = i;
    }

    public int d() {
        return this.f494f;
    }

    public Object e() {
        return this.f493e;
    }

    public void a(Object obj) {
        this.f493e = obj;
    }
}
