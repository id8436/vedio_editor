package com.facebook.i;

import android.content.DialogInterface;

/* JADX INFO: compiled from: WebDialog.java */
/* JADX INFO: loaded from: classes2.dex */
class bb implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ba f2336a;

    bb(ba baVar) {
        this.f2336a = baVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f2336a.cancel();
    }
}
