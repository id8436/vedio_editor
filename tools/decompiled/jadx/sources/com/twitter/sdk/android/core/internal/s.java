package com.twitter.sdk.android.core.internal;

import android.content.Context;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: IdManager.java */
/* JADX INFO: loaded from: classes3.dex */
public class s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f3979d = Pattern.compile("[^\\p{Alnum}]");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f3980e = Pattern.quote(URIUtil.SLASH);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f f3981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    e f3982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f3983c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReentrantLock f3984f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f3985g;
    private final String h;
    private final com.twitter.sdk.android.core.internal.b.b i;

    public s(Context context) {
        this(context, new com.twitter.sdk.android.core.internal.b.c(context, "com.twitter.sdk.android.AdvertisingPreferences"));
    }

    s(Context context, com.twitter.sdk.android.core.internal.b.b bVar) {
        this(context, bVar, new f(context, bVar));
    }

    s(Context context, com.twitter.sdk.android.core.internal.b.b bVar, f fVar) {
        this.f3984f = new ReentrantLock();
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        this.h = context.getPackageName();
        this.f3981a = fVar;
        this.i = bVar;
        this.f3985g = n.a(context, "com.twitter.sdk.android.COLLECT_IDENTIFIERS_ENABLED", true);
        if (!this.f3985g) {
            com.twitter.sdk.android.core.v.h().a("Twitter", "Device ID collection disabled for " + context.getPackageName());
        }
    }

    private String a(String str) {
        if (str == null) {
            return null;
        }
        return f3979d.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    public String a() {
        if (!this.f3985g) {
            return "";
        }
        String string = this.i.a().getString("installation_uuid", null);
        if (string == null) {
            return d();
        }
        return string;
    }

    private String d() {
        this.f3984f.lock();
        try {
            String string = this.i.a().getString("installation_uuid", null);
            if (string == null) {
                string = a(UUID.randomUUID().toString());
                this.i.a(this.i.b().putString("installation_uuid", string));
            }
            return string;
        } finally {
            this.f3984f.unlock();
        }
    }

    synchronized e b() {
        if (!this.f3983c) {
            this.f3982b = this.f3981a.a();
            this.f3983c = true;
        }
        return this.f3982b;
    }

    public String c() {
        e eVarB;
        if (!this.f3985g || (eVarB = b()) == null) {
            return null;
        }
        return eVarB.f3931a;
    }
}
