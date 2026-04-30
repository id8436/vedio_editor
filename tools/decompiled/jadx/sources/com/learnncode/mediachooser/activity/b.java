package com.learnncode.mediachooser.activity;

import android.view.View;

/* JADX INFO: compiled from: ClipViewActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class b implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ClipViewActivity f3668a;

    b(ClipViewActivity clipViewActivity) {
        this.f3668a = clipViewActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3668a.closeAndGoBack();
    }
}
