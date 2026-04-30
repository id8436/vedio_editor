package com.twitter.sdk.android.tweetcomposer;

import android.annotation.SuppressLint;
import android.content.Context;
import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.aj;

/* JADX INFO: compiled from: TweetComposer.java */
/* JADX INFO: loaded from: classes3.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    static volatile x f4160a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    u f4164e = new v(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.twitter.sdk.android.core.u<aj> f4161b = af.a().f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.twitter.sdk.android.core.g f4162c = af.a().g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Context f4163d = com.twitter.sdk.android.core.v.b().a(c());

    public static x a() {
        if (f4160a == null) {
            synchronized (x.class) {
                if (f4160a == null) {
                    f4160a = new x();
                }
            }
        }
        return f4160a;
    }

    x() {
        e();
    }

    public String b() {
        return "3.1.1.9";
    }

    private void e() {
        this.f4164e = new v(new com.twitter.sdk.android.core.internal.scribe.a(this.f4163d, this.f4161b, this.f4162c, com.twitter.sdk.android.core.v.b().c(), com.twitter.sdk.android.core.internal.scribe.a.a("TweetComposer", b())));
    }

    public String c() {
        return "com.twitter.sdk.android:tweet-composer";
    }

    u d() {
        return this.f4164e;
    }
}
