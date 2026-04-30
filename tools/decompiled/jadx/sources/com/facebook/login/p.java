package com.facebook.login;

import android.view.View;
import com.facebook.bf;

/* JADX INFO: compiled from: LoginFragment.java */
/* JADX INFO: loaded from: classes2.dex */
class p implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f3011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f3012b;

    p(n nVar, View view) {
        this.f3012b = nVar;
        this.f3011a = view;
    }

    @Override // com.facebook.login.i
    public void a() {
        this.f3011a.findViewById(bf.com_facebook_login_activity_progress_bar).setVisibility(0);
    }

    @Override // com.facebook.login.i
    public void b() {
        this.f3011a.findViewById(bf.com_facebook_login_activity_progress_bar).setVisibility(8);
    }
}
