package com.a.a.a;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Set;

/* JADX INFO: compiled from: JobHolder.java */
/* JADX INFO: loaded from: classes.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f613c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final transient r f615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final Set<String> f616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ae f617g;
    private Long h;
    private int i;
    private int j;
    private long k;
    private long l;
    private long m;
    private long n;
    private boolean o;
    private volatile boolean p;
    private volatile boolean q;

    @Nullable
    private Throwable r;

    private s(String str, boolean z, int i, String str2, int i2, r rVar, long j, long j2, long j3, Set<String> set, int i3, long j4, boolean z2) {
        this.f611a = str;
        this.f612b = z;
        this.i = i;
        this.f613c = str2;
        this.j = i2;
        this.l = j;
        this.k = j2;
        this.f615e = rVar;
        this.m = j3;
        this.f614d = i3;
        this.f616f = set;
        this.n = j4;
        this.o = z2;
    }

    int a(int i, com.a.a.a.k.b bVar) {
        return this.f615e.safeRun(this, i, bVar);
    }

    @NonNull
    public String a() {
        return this.f611a;
    }

    public int b() {
        return this.i;
    }

    public void a(int i) {
        this.i = i;
        this.f615e.priority = this.i;
    }

    public Long c() {
        return this.h;
    }

    public void a(long j) {
        this.h = Long.valueOf(j);
    }

    public void b(long j) {
        this.k = j;
    }

    public int d() {
        return this.j;
    }

    public void b(int i) {
        this.j = i;
    }

    public long e() {
        return this.l;
    }

    public long f() {
        return this.m;
    }

    public void c(long j) {
        this.m = j;
    }

    public long g() {
        return this.n;
    }

    public boolean h() {
        return this.o;
    }

    public long i() {
        return this.k;
    }

    public r j() {
        return this.f615e;
    }

    public String k() {
        return this.f613c;
    }

    public Set<String> l() {
        return this.f616f;
    }

    public void m() {
        this.p = true;
        this.f615e.cancelled = true;
    }

    public boolean n() {
        return this.p;
    }

    public void o() {
        this.q = true;
        m();
    }

    public boolean p() {
        return this.q;
    }

    public int hashCode() {
        return this.f611a.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        return this.f611a.equals(((s) obj).f611a);
    }

    public boolean q() {
        return this.f616f != null && this.f616f.size() > 0;
    }

    public void a(Context context) {
        this.f615e.setApplicationContext(context);
    }

    public void a(boolean z) {
        this.f615e.setDeadlineReached(z);
    }

    public boolean r() {
        return this.n != Long.MAX_VALUE;
    }

    public boolean s() {
        return this.k != Long.MIN_VALUE;
    }

    public void c(int i) {
        this.f615e.onCancel(i, this.r);
    }

    public ae t() {
        return this.f617g;
    }

    void a(@Nullable Throwable th) {
        this.r = th;
    }

    @Nullable
    Throwable u() {
        return this.r;
    }

    public int v() {
        return this.f614d;
    }
}
