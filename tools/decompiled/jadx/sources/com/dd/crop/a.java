package com.dd.crop;

import android.media.MediaPlayer;
import android.util.Log;

/* JADX INFO: compiled from: TextureVideoView.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements MediaPlayer.OnVideoSizeChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TextureVideoView f1528a;

    a(TextureVideoView textureVideoView) {
        this.f1528a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        Log.e("OnVideo", i + " " + i2);
        if (!this.f1528a.i) {
            this.f1528a.f1526f = i;
            this.f1528a.f1525e = i2;
        }
        this.f1528a.j();
    }
}
