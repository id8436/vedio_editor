package com.dd.crop;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: TextureVideoView.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements MediaPlayer.OnCompletionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TextureVideoView f1529a;

    b(TextureVideoView textureVideoView) {
        this.f1529a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        if (!mediaPlayer.isLooping()) {
            this.f1529a.m = g.END;
            TextureVideoView.a("Video has ended.");
            if (this.f1529a.n != null) {
                this.f1529a.n.b();
            }
        }
    }
}
