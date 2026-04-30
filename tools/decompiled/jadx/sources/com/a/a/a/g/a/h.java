package com.a.a.a.g.a;

import com.a.a.a.q;

/* JADX INFO: compiled from: PublicQueryMessage.java */
/* JADX INFO: loaded from: classes.dex */
public class h extends com.a.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q f488d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f490f;

    public h() {
        super(com.a.a.a.g.i.PUBLIC_QUERY);
        this.f489e = -1;
    }

    public q c() {
        return this.f488d;
    }

    public int d() {
        return this.f489e;
    }

    public String e() {
        return this.f490f;
    }

    @Override // com.a.a.a.g.b
    protected void a() {
        this.f488d = null;
        this.f489e = -1;
    }

    public String toString() {
        return "PublicQuery[" + this.f489e + "]";
    }
}
