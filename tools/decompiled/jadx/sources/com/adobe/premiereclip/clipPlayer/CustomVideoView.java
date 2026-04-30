package com.adobe.premiereclip.clipPlayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.VideoView;

/* JADX INFO: loaded from: classes2.dex */
public class CustomVideoView extends VideoView {
    private PlayPauseListener mListener;

    public interface PlayPauseListener {
        void onPauseClip();

        void onPlayClip();

        void onSeek();
    }

    public CustomVideoView(Context context) {
        super(context);
    }

    public CustomVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setPlayPauseListener(PlayPauseListener playPauseListener) {
        this.mListener = playPauseListener;
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void pause() {
        super.pause();
        if (this.mListener != null) {
            this.mListener.onPauseClip();
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void start() {
        super.start();
        if (this.mListener != null) {
            this.mListener.onPlayClip();
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
        super.seekTo(i);
        if (this.mListener != null) {
            this.mListener.onSeek();
        }
    }

    @Override // android.widget.VideoView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
