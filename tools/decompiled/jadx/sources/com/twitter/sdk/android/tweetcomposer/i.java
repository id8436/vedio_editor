package com.twitter.sdk.android.tweetcomposer;

import java.util.Collections;

/* JADX INFO: compiled from: ComposerScribeClientImpl.java */
/* JADX INFO: loaded from: classes3.dex */
class i implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f4151a;

    i(u uVar) {
        if (uVar == null) {
            throw new NullPointerException("scribeClient must not be null");
        }
        this.f4151a = uVar;
    }

    @Override // com.twitter.sdk.android.tweetcomposer.h
    public void a() {
        this.f4151a.a(w.f4159a.d("").e("").f("impression").a(), Collections.EMPTY_LIST);
    }

    @Override // com.twitter.sdk.android.tweetcomposer.h
    public void a(String str) {
        this.f4151a.a(w.f4159a.d("").e(str).f("click").a(), Collections.EMPTY_LIST);
    }
}
