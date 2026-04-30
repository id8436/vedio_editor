package com.a.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: Constraint.java */
/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ah f579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<String> f580c = new HashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<String> f581d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f582e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f583f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f584g;
    private long h;

    public int a() {
        return this.f578a;
    }

    public ah b() {
        return this.f579b;
    }

    public Set<String> c() {
        return this.f580c;
    }

    public List<String> d() {
        return this.f581d;
    }

    public boolean e() {
        return this.f583f;
    }

    public Long f() {
        return this.f584g;
    }

    public List<String> g() {
        return this.f582e;
    }

    void a(int i) {
        this.f578a = i;
    }

    void a(ah ahVar) {
        this.f579b = ahVar;
    }

    void a(boolean z) {
        this.f583f = z;
    }

    void a(String[] strArr) {
        this.f580c.clear();
        if (strArr != null) {
            Collections.addAll(this.f580c, strArr);
        }
    }

    public void a(long j) {
        this.h = j;
    }

    void a(Collection<String> collection) {
        this.f581d.clear();
        if (collection != null) {
            this.f581d.addAll(collection);
        }
    }

    void b(Collection<String> collection) {
        this.f582e.clear();
        if (collection != null) {
            this.f582e.addAll(collection);
        }
    }

    public long h() {
        return this.h;
    }

    void a(Long l) {
        this.f584g = l;
    }

    void i() {
        this.f578a = 2;
        this.f579b = null;
        this.f580c.clear();
        this.f581d.clear();
        this.f582e.clear();
        this.f583f = false;
        this.f584g = null;
        this.h = Long.MIN_VALUE;
    }
}
