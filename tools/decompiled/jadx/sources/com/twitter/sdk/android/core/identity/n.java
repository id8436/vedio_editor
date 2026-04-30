package com.twitter.sdk.android.core.identity;

import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.u;
import com.twitter.sdk.android.core.v;

/* JADX INFO: compiled from: TwitterAuthClient.java */
/* JADX INFO: loaded from: classes3.dex */
class n extends com.twitter.sdk.android.core.c<aj> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u<aj> f3902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.twitter.sdk.android.core.c<aj> f3903b;

    n(u<aj> uVar, com.twitter.sdk.android.core.c<aj> cVar) {
        this.f3902a = uVar;
        this.f3903b = cVar;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(s<aj> sVar) {
        v.h().a("Twitter", "Authorization completed successfully");
        this.f3902a.a(sVar.f4108a);
        this.f3903b.success(sVar);
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        v.h().c("Twitter", "Authorization completed with an error", ahVar);
        this.f3903b.failure(ahVar);
    }
}
