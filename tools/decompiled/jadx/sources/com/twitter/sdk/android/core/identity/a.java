package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.z;

/* JADX INFO: compiled from: AuthHandler.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final int f3883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TwitterAuthConfig f3884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.twitter.sdk.android.core.c<aj> f3885c;

    public abstract boolean a(Activity activity);

    a(TwitterAuthConfig twitterAuthConfig, com.twitter.sdk.android.core.c<aj> cVar, int i) {
        this.f3884b = twitterAuthConfig;
        this.f3885c = cVar;
        this.f3883a = i;
    }

    TwitterAuthConfig a() {
        return this.f3884b;
    }

    com.twitter.sdk.android.core.c<aj> b() {
        return this.f3885c;
    }

    public boolean a(int i, int i2, Intent intent) {
        if (this.f3883a != i) {
            return false;
        }
        com.twitter.sdk.android.core.c<aj> cVarB = b();
        if (cVarB != null) {
            if (i2 == -1) {
                String stringExtra = intent.getStringExtra("tk");
                String stringExtra2 = intent.getStringExtra("ts");
                String stringExtra3 = intent.getStringExtra("screen_name");
                cVarB.success(new s<>(new aj(new TwitterAuthToken(stringExtra, stringExtra2), intent.getLongExtra(BehanceSDKUrlUtil.KEY_USER_ID, 0L), stringExtra3), null));
            } else if (intent != null && intent.hasExtra("auth_error")) {
                cVarB.failure((z) intent.getSerializableExtra("auth_error"));
            } else {
                cVarB.failure(new z("Authorize failed."));
            }
        }
        return true;
    }
}
