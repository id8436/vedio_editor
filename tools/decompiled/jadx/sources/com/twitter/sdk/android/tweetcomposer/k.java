package com.twitter.sdk.android.tweetcomposer;

import android.view.View;

/* JADX INFO: compiled from: ComposerView.java */
/* JADX INFO: loaded from: classes3.dex */
class k implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ComposerView f4154a;

    k(ComposerView composerView) {
        this.f4154a = composerView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4154a.j.b(this.f4154a.getTweetText());
    }
}
