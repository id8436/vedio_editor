package com.twitter.sdk.android.tweetcomposer;

import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.aj;

/* JADX INFO: compiled from: TweetUploadService.java */
/* JADX INFO: loaded from: classes.dex */
class z extends com.twitter.sdk.android.core.c<com.twitter.sdk.android.core.a.h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ aj f4169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f4170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ TweetUploadService f4171c;

    z(TweetUploadService tweetUploadService, aj ajVar, String str) {
        this.f4171c = tweetUploadService;
        this.f4169a = ajVar;
        this.f4170b = str;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(com.twitter.sdk.android.core.s<com.twitter.sdk.android.core.a.h> sVar) {
        this.f4171c.a(this.f4169a, this.f4170b, sVar.f4108a.f3823a);
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        this.f4171c.a(ahVar);
    }
}
