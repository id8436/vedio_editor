package com.facebook.a;

import android.content.Context;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f1700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f1701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ i f1702c;

    e(Context context, h hVar, i iVar) {
        this.f1700a = context;
        this.f1701b = hVar;
        this.f1702c = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        a.b(this.f1700a, this.f1701b).a(this.f1702c);
        a.i();
    }
}
