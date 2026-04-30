package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: ScribeClient.java */
/* JADX INFO: loaded from: classes3.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ConcurrentHashMap<Long, ah> f4083a = new ConcurrentHashMap<>(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f4085c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final aa f4086d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ac f4087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TwitterAuthConfig f4088f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.twitter.sdk.android.core.u<? extends com.twitter.sdk.android.core.t<TwitterAuthToken>> f4089g;
    private final com.twitter.sdk.android.core.g h;
    private final com.twitter.sdk.android.core.internal.s i;

    public z(Context context, ScheduledExecutorService scheduledExecutorService, aa aaVar, ac acVar, TwitterAuthConfig twitterAuthConfig, com.twitter.sdk.android.core.u<? extends com.twitter.sdk.android.core.t<TwitterAuthToken>> uVar, com.twitter.sdk.android.core.g gVar, com.twitter.sdk.android.core.internal.s sVar) {
        this.f4084b = context;
        this.f4085c = scheduledExecutorService;
        this.f4086d = aaVar;
        this.f4087e = acVar;
        this.f4088f = twitterAuthConfig;
        this.f4089g = uVar;
        this.h = gVar;
        this.i = sVar;
    }

    public boolean a(ab abVar, long j) {
        try {
            a(j).a(abVar);
            return true;
        } catch (IOException e2) {
            com.twitter.sdk.android.core.internal.n.a(this.f4084b, "Failed to scribe event", e2);
            return false;
        }
    }

    ah a(long j) throws IOException {
        if (!this.f4083a.containsKey(Long.valueOf(j))) {
            this.f4083a.putIfAbsent(Long.valueOf(j), d(j));
        }
        return this.f4083a.get(Long.valueOf(j));
    }

    private ah d(long j) throws IOException {
        ae aeVar = new ae(this.f4084b, this.f4087e, new com.twitter.sdk.android.core.internal.y(), new y(this.f4084b, new com.twitter.sdk.android.core.internal.b.a(this.f4084b).a(), b(j), c(j)), this.f4086d.f4003g);
        return new ah(this.f4084b, a(j, aeVar), aeVar, this.f4085c);
    }

    q<ab> a(long j, ae aeVar) {
        if (this.f4086d.f3997a) {
            com.twitter.sdk.android.core.internal.n.a(this.f4084b, "Scribe enabled");
            return new d(this.f4084b, this.f4085c, aeVar, this.f4086d, new ScribeFilesSender(this.f4084b, this.f4086d, j, this.f4088f, this.f4089g, this.h, this.f4085c, this.i));
        }
        com.twitter.sdk.android.core.internal.n.a(this.f4084b, "Scribe disabled");
        return new b();
    }

    String b(long j) {
        return j + "_se.tap";
    }

    String c(long j) {
        return j + "_se_to_send";
    }
}
