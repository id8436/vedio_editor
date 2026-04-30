package com.a.a.a;

import java.util.HashSet;

/* JADX INFO: compiled from: Params.java */
/* JADX INFO: loaded from: classes.dex */
public class ac {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f419e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f420f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashSet<String> f421g;
    private Boolean i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f415a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f416b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f417c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f418d = false;
    private long h = 0;

    public ac(int i) {
        this.f419e = i;
    }

    public ac a() {
        if (this.f415a != 2) {
            this.f415a = 1;
        }
        return this;
    }

    public ac b() {
        this.f418d = true;
        return this;
    }

    public String c() {
        return this.f416b;
    }

    public String d() {
        return this.f417c;
    }

    public boolean e() {
        return this.f418d;
    }

    public int f() {
        return this.f419e;
    }

    public long g() {
        return this.f420f;
    }

    public long h() {
        return this.h;
    }

    public HashSet<String> i() {
        return this.f421g;
    }

    public boolean j() {
        return Boolean.TRUE.equals(this.i);
    }
}
