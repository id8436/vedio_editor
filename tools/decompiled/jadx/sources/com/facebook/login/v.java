package com.facebook.login;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.facebook.i.az;

/* JADX INFO: compiled from: LoginManager.java */
/* JADX INFO: loaded from: classes2.dex */
class v implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f3023a;

    v(Fragment fragment) {
        az.a(fragment, "fragment");
        this.f3023a = fragment;
    }

    @Override // com.facebook.login.y
    public void a(Intent intent, int i) {
        this.f3023a.startActivityForResult(intent, i);
    }

    @Override // com.facebook.login.y
    public Activity a() {
        return this.f3023a.getActivity();
    }
}
