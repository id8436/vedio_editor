package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: GuestSessionProvider.java */
/* JADX INFO: loaded from: classes3.dex */
class h extends c<GuestAuthToken> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ CountDownLatch f3874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f3875b;

    h(g gVar, CountDownLatch countDownLatch) {
        this.f3875b = gVar;
        this.f3874a = countDownLatch;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(s<GuestAuthToken> sVar) {
        this.f3875b.f3873b.a(new e(sVar.f4108a));
        this.f3874a.countDown();
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        this.f3875b.f3873b.c(0L);
        this.f3874a.countDown();
    }
}
