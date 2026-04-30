package com.facebook;

import android.os.Handler;

/* JADX INFO: compiled from: RequestProgress.java */
/* JADX INFO: loaded from: classes2.dex */
class bj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GraphRequest f1821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f1822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f1823c = w.h();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1826f;

    bj(Handler handler, GraphRequest graphRequest) {
        this.f1821a = graphRequest;
        this.f1822b = handler;
    }

    void a(long j) {
        this.f1824d += j;
        if (this.f1824d >= this.f1825e + this.f1823c || this.f1824d >= this.f1826f) {
            a();
        }
    }

    void b(long j) {
        this.f1826f += j;
    }

    void a() {
        if (this.f1824d > this.f1825e) {
            ai aiVarG = this.f1821a.g();
            if (this.f1826f > 0 && (aiVarG instanceof al)) {
                long j = this.f1824d;
                long j2 = this.f1826f;
                al alVar = (al) aiVarG;
                if (this.f1822b == null) {
                    alVar.a(j, j2);
                } else {
                    this.f1822b.post(new bk(this, alVar, j, j2));
                }
                this.f1825e = this.f1824d;
            }
        }
    }
}
