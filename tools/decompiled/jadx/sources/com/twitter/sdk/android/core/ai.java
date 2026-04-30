package com.twitter.sdk.android.core;

/* JADX INFO: compiled from: TwitterRateLimit.java */
/* JADX INFO: loaded from: classes3.dex */
public class ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3865c;

    ai(d.ag agVar) {
        if (agVar == null) {
            throw new IllegalArgumentException("headers must not be null");
        }
        for (int i = 0; i < agVar.a(); i++) {
            if ("x-rate-limit-limit".equals(agVar.a(i))) {
                this.f3863a = Integer.valueOf(agVar.b(i)).intValue();
            } else if ("x-rate-limit-remaining".equals(agVar.a(i))) {
                this.f3864b = Integer.valueOf(agVar.b(i)).intValue();
            } else if ("x-rate-limit-reset".equals(agVar.a(i))) {
                this.f3865c = Long.valueOf(agVar.b(i)).longValue();
            }
        }
    }
}
