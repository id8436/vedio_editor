package com.twitter.sdk.android.tweetcomposer;

import android.content.Intent;

/* JADX INFO: compiled from: ComposerController.java */
/* JADX INFO: loaded from: classes3.dex */
class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f4149a;

    f(c cVar) {
        this.f4149a = cVar;
    }

    @Override // com.twitter.sdk.android.tweetcomposer.e
    public void a(String str) {
        int iA = this.f4149a.a(str);
        this.f4149a.f4143a.setCharCount(c.a(iA));
        if (c.c(iA)) {
            this.f4149a.f4143a.setCharCountTextStyle(t.tw__ComposerCharCountOverflow);
        } else {
            this.f4149a.f4143a.setCharCountTextStyle(t.tw__ComposerCharCount);
        }
        this.f4149a.f4143a.a(c.b(iA));
    }

    @Override // com.twitter.sdk.android.tweetcomposer.e
    public void b(String str) {
        this.f4149a.f4147e.b().a("tweet");
        Intent intent = new Intent(this.f4149a.f4143a.getContext(), (Class<?>) TweetUploadService.class);
        intent.putExtra("EXTRA_USER_TOKEN", this.f4149a.f4144b.a());
        intent.putExtra("EXTRA_TWEET_TEXT", str);
        intent.putExtra("EXTRA_IMAGE_URI", this.f4149a.f4145c);
        this.f4149a.f4143a.getContext().startService(intent);
        this.f4149a.f4146d.a();
    }

    @Override // com.twitter.sdk.android.tweetcomposer.e
    public void a() {
        this.f4149a.b();
    }
}
