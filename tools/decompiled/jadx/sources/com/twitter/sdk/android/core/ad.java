package com.twitter.sdk.android.core;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: TwitterConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class ad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f3850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TwitterAuthConfig f3851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f3852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Boolean f3853e;

    public ad(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        this.f3849a = context.getApplicationContext();
    }

    public ad a(j jVar) {
        if (jVar == null) {
            throw new IllegalArgumentException("Logger must not be null.");
        }
        this.f3850b = jVar;
        return this;
    }

    public ad a(TwitterAuthConfig twitterAuthConfig) {
        if (twitterAuthConfig == null) {
            throw new IllegalArgumentException("TwitterAuthConfig must not be null.");
        }
        this.f3851c = twitterAuthConfig;
        return this;
    }

    public ad a(boolean z) {
        this.f3853e = Boolean.valueOf(z);
        return this;
    }

    public ab a() {
        return new ab(this.f3849a, this.f3850b, this.f3851c, this.f3852d, this.f3853e);
    }
}
