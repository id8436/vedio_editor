package com.facebook;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: FacebookSdk.java */
/* JADX INFO: loaded from: classes2.dex */
final class z implements Callable<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ aa f3056a;

    z(aa aaVar) {
        this.f3056a = aaVar;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        d.a().c();
        az.a().c();
        if (AccessToken.a() != null && Profile.a() == null) {
            Profile.b();
        }
        if (this.f3056a != null) {
            this.f3056a.a();
            return null;
        }
        return null;
    }
}
