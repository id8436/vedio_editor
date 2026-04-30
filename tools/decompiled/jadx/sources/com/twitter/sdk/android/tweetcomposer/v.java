package com.twitter.sdk.android.tweetcomposer;

import java.util.List;

/* JADX INFO: compiled from: ScribeClientImpl.java */
/* JADX INFO: loaded from: classes3.dex */
class v implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.scribe.a f4158a;

    public v(com.twitter.sdk.android.core.internal.scribe.a aVar) {
        this.f4158a = aVar;
    }

    @Override // com.twitter.sdk.android.tweetcomposer.u
    public void a(com.twitter.sdk.android.core.internal.scribe.e eVar, List<Object> list) {
        if (this.f4158a != null) {
            this.f4158a.a(eVar, list);
        }
    }
}
