package com.twitter.sdk.android.tweetcomposer;

import com.twitter.sdk.android.core.ah;

/* JADX INFO: compiled from: ComposerController.java */
/* JADX INFO: loaded from: classes3.dex */
class d extends com.twitter.sdk.android.core.c<com.twitter.sdk.android.core.a.q> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f4148a;

    d(c cVar) {
        this.f4148a = cVar;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(com.twitter.sdk.android.core.s<com.twitter.sdk.android.core.a.q> sVar) {
        this.f4148a.f4143a.setProfilePhotoView(sVar.f4108a);
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        this.f4148a.f4143a.setProfilePhotoView(null);
    }
}
