package com.twitter.sdk.android.tweetcomposer;

import com.twitter.sdk.android.core.ah;

/* JADX INFO: compiled from: TweetUploadService.java */
/* JADX INFO: loaded from: classes.dex */
class aa extends com.twitter.sdk.android.core.c<com.twitter.sdk.android.core.a.o> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TweetUploadService f4141a;

    aa(TweetUploadService tweetUploadService) {
        this.f4141a = tweetUploadService;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(com.twitter.sdk.android.core.s<com.twitter.sdk.android.core.a.o> sVar) {
        this.f4141a.a(sVar.f4108a.a());
        this.f4141a.stopSelf();
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        this.f4141a.a(ahVar);
    }
}
