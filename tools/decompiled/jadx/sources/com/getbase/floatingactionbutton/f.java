package com.getbase.floatingactionbutton;

import android.view.View;

/* JADX INFO: compiled from: FloatingActionsMenu.java */
/* JADX INFO: loaded from: classes2.dex */
class f implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ FloatingActionsMenu f3128a;

    f(FloatingActionsMenu floatingActionsMenu) {
        this.f3128a = floatingActionsMenu;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3128a.b();
    }
}
