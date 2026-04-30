package com.twitter.sdk.android.tweetcomposer;

import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: compiled from: ComposerView.java */
/* JADX INFO: loaded from: classes3.dex */
class m implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ComposerView f4156a;

    m(ComposerView composerView) {
        this.f4156a = composerView;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.f4156a.j.a(this.f4156a.getTweetText());
    }
}
