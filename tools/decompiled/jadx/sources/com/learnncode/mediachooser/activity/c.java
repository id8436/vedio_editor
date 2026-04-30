package com.learnncode.mediachooser.activity;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: ClipViewActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class c implements MediaPlayer.OnCompletionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ClipViewActivity f3669a;

    c(ClipViewActivity clipViewActivity) {
        this.f3669a = clipViewActivity;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f3669a.f3658c.e();
    }
}
