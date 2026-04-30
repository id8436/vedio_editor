package com.dd.crop;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: TextureVideoView.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements MediaPlayer.OnPreparedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TextureVideoView f1530a;

    c(TextureVideoView textureVideoView) {
        this.f1530a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f1530a.i = true;
        if (this.f1530a.j && this.f1530a.h && !this.f1530a.k) {
            TextureVideoView.a("Player is prepared and play() was called.");
            this.f1530a.a();
        }
        if (this.f1530a.n != null) {
            this.f1530a.n.a();
        }
    }
}
