package com.facebook.i;

import android.view.View;

/* JADX INFO: compiled from: WebDialog.java */
/* JADX INFO: loaded from: classes2.dex */
class bc implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ba f2337a;

    bc(ba baVar) {
        this.f2337a = baVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2337a.cancel();
    }
}
