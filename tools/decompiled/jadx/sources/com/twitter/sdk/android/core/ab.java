package com.twitter.sdk.android.core;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: TwitterConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f3844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final j f3845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final TwitterAuthConfig f3846c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final ExecutorService f3847d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Boolean f3848e;

    private ab(Context context, j jVar, TwitterAuthConfig twitterAuthConfig, ExecutorService executorService, Boolean bool) {
        this.f3844a = context;
        this.f3845b = jVar;
        this.f3846c = twitterAuthConfig;
        this.f3847d = executorService;
        this.f3848e = bool;
    }
}
