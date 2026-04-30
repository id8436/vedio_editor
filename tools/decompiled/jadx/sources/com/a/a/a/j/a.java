package com.a.a.a.j;

import android.content.Context;

/* JADX INFO: compiled from: Scheduler.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f586b;

    public abstract void a();

    public abstract void a(c cVar);

    public abstract void a(c cVar, boolean z);

    protected a() {
    }

    public void a(Context context, b bVar) {
        this.f586b = context.getApplicationContext();
        this.f585a = bVar;
    }
}
