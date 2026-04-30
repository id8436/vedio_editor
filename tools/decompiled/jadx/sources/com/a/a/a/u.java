package com.a.a.a;

import java.util.Set;

/* JADX INFO: compiled from: JobHolder.java */
/* JADX INFO: loaded from: classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f621d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r f623f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f624g;
    private Long i;
    private long j;
    private Set<String> n;
    private int o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f622e = 0;
    private long h = Long.MIN_VALUE;
    private long k = Long.MAX_VALUE;
    private boolean l = false;
    private int m = 0;

    public u a(int i) {
        this.f618a = i;
        this.m |= 1;
        return this;
    }

    public u a(String str) {
        this.f621d = str;
        this.m |= 8;
        return this;
    }

    public u a(Set<String> set) {
        this.n = set;
        this.m |= 512;
        return this;
    }

    public u b(int i) {
        this.f622e = i;
        return this;
    }

    public u a(boolean z) {
        this.f620c = z;
        this.m |= 2;
        return this;
    }

    public u a(r rVar) {
        this.f623f = rVar;
        this.m |= 16;
        return this;
    }

    public u b(String str) {
        this.f619b = str;
        this.m |= 4;
        return this;
    }

    public u c(int i) {
        this.o = i;
        this.m |= 1024;
        return this;
    }

    public u a(long j) {
        this.f624g = j;
        this.m |= 32;
        return this;
    }

    public u b(long j) {
        this.h = j;
        this.m |= 64;
        return this;
    }

    public u c(long j) {
        this.i = Long.valueOf(j);
        return this;
    }

    public u d(long j) {
        this.j = j;
        this.m |= 256;
        return this;
    }

    public u a(long j, boolean z) {
        this.k = j;
        this.l = z;
        this.m |= 128;
        return this;
    }

    public s a() {
        if (this.f623f == null) {
            throw new IllegalArgumentException("must provide a job");
        }
        int i = this.m & 2047;
        if (i != 2047) {
            throw new IllegalArgumentException("must provide all required fields. your result:" + Long.toBinaryString(i));
        }
        s sVar = new s(this.f619b, this.f620c, this.f618a, this.f621d, this.f622e, this.f623f, this.f624g, this.h, this.j, this.n, this.o, this.k, this.l);
        if (this.i != null) {
            sVar.a(this.i.longValue());
        }
        this.f623f.updateFromJobHolder(sVar);
        return sVar;
    }
}
