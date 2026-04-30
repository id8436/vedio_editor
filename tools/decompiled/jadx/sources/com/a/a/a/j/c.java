package com.a.a.a.j;

import android.support.annotation.Nullable;
import com.google.gdata.data.Category;

/* JADX INFO: compiled from: SchedulerConstraint.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Long f590d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f591e;

    public c(String str) {
        this.f587a = str;
    }

    public String a() {
        return this.f587a;
    }

    public long b() {
        return this.f588b;
    }

    public void a(long j) {
        this.f588b = j;
    }

    public int c() {
        return this.f589c;
    }

    public void a(int i) {
        this.f589c = i;
    }

    @Nullable
    public Long d() {
        return this.f590d;
    }

    public void a(Long l) {
        this.f590d = l;
    }

    public String toString() {
        return "SchedulerConstraint{uuid='" + this.f587a + "', delayInMs=" + this.f588b + ", networkStatus=" + this.f589c + ", overrideDeadlineInMs=" + this.f590d + ", data=" + this.f591e + Category.SCHEME_SUFFIX;
    }
}
