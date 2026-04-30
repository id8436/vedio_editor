package com.twitter.sdk.android.tweetcomposer;

/* JADX INFO: compiled from: ComposerView.java */
/* JADX INFO: loaded from: classes3.dex */
class n implements com.twitter.sdk.android.tweetcomposer.internal.util.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ComposerView f4157a;

    n(ComposerView composerView) {
        this.f4157a = composerView;
    }

    @Override // com.twitter.sdk.android.tweetcomposer.internal.util.a
    public void a(int i) {
        if (i > 0) {
            this.f4157a.f4138g.setVisibility(0);
        } else {
            this.f4157a.f4138g.setVisibility(4);
        }
    }
}
