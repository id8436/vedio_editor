package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.aj;

/* JADX INFO: compiled from: OAuthHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class g extends a {
    public g(TwitterAuthConfig twitterAuthConfig, com.twitter.sdk.android.core.c<aj> cVar, int i) {
        super(twitterAuthConfig, cVar, i);
    }

    @Override // com.twitter.sdk.android.core.identity.a
    public boolean a(Activity activity) {
        activity.startActivityForResult(b(activity), this.f3883a);
        return true;
    }

    Intent b(Activity activity) {
        Intent intent = new Intent(activity, (Class<?>) OAuthActivity.class);
        intent.putExtra("auth_config", a());
        return intent;
    }
}
