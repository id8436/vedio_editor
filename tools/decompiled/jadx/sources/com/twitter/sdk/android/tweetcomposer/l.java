package com.twitter.sdk.android.tweetcomposer;

import android.view.KeyEvent;
import android.widget.TextView;

/* JADX INFO: compiled from: ComposerView.java */
/* JADX INFO: loaded from: classes3.dex */
class l implements TextView.OnEditorActionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ComposerView f4155a;

    l(ComposerView composerView) {
        this.f4155a = composerView;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        this.f4155a.j.b(this.f4155a.getTweetText());
        return true;
    }
}
