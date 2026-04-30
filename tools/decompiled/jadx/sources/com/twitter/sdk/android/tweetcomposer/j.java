package com.twitter.sdk.android.tweetcomposer;

import android.view.View;

/* JADX INFO: compiled from: ComposerView.java */
/* JADX INFO: loaded from: classes3.dex */
class j implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ComposerView f4153a;

    j(ComposerView composerView) {
        this.f4153a = composerView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4153a.j.a();
    }
}
