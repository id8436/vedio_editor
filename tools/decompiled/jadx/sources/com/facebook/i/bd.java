package com.facebook.i;

import android.content.Context;
import android.webkit.WebView;

/* JADX INFO: compiled from: WebDialog.java */
/* JADX INFO: loaded from: classes2.dex */
class bd extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ba f2338a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bd(ba baVar, Context context) {
        super(context);
        this.f2338a = baVar;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        try {
            super.onWindowFocusChanged(z);
        } catch (NullPointerException e2) {
        }
    }
}
