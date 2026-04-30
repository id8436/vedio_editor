package com.adobe.premiereclip.mediaengine.decoderutils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.Surface;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.util.Utilities;
import com.google.android.exoplayer.ExoPlaybackException;

/* JADX INFO: loaded from: classes2.dex */
public class ImageDecoder extends MediaDecoder {
    private int height;
    private boolean renderedFrame;
    private int width;

    protected ImageDecoder(String str, int i, int i2, int i3, int i4, Rotation rotation) throws ExoPlaybackException {
        super(str, i, i2);
        this.renderedFrame = false;
        if (rotation == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270) {
            i3 = i4;
            i4 = i3;
        }
        this.width = i3;
        this.height = i4;
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    protected void onSurfaceSet() throws ExoPlaybackException {
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    protected void onEnabled(long j) throws ExoPlaybackException {
        this.renderedFrame = false;
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    protected void onDisabled() throws ExoPlaybackException {
        this.renderedFrame = false;
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    protected void seekToInternal(long j) throws ExoPlaybackException {
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    public boolean getFrameAtTimeInternal(long j, long j2) throws ExoPlaybackException {
        while (this.currentTimeStampUs <= j && !isReleased()) {
            if (!this.renderedFrame) {
                Bitmap scaledBitmap = Utilities.getScaledBitmap(this.sourcePath, this.width, this.height);
                Surface surface = this.mediaSurface.getSurface();
                if (surface.isValid()) {
                    Canvas canvasLockCanvas = surface.lockCanvas(null);
                    canvasLockCanvas.drawBitmap(scaledBitmap, (Rect) null, new Rect(0, 0, this.width, this.height), (Paint) null);
                    surface.unlockCanvasAndPost(canvasLockCanvas);
                }
                scaledBitmap.recycle();
                this.renderedFrame = true;
            }
            this.renderedTimeStampUs = this.currentTimeStampUs;
            this.currentTimeStampUs += 33333;
            this.mediaSurface.setCrop(this.width, this.height, this.width, this.height);
        }
        return true;
    }

    @Override // com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoder
    public void onReleased() throws ExoPlaybackException {
    }
}
