package com.twitter.sdk.android.core.internal;

import android.app.Application;
import android.content.Context;

/* JADX INFO: compiled from: ActivityLifecycleManager.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f3907a;

    public a(Context context) {
        this.f3907a = new b((Application) context.getApplicationContext());
    }

    public boolean a(d dVar) {
        return this.f3907a != null && this.f3907a.a(dVar);
    }
}
