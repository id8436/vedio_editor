package com.adobe.premiereclip.mediaengine.gpumedia.surface;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class ImageSurface extends GPUMediaSurface {
    private Bitmap mBitmap;

    public ImageSurface(Context context) {
        super(context);
    }

    public void drawImage() {
        if (this.mBitmap != null) {
            setSize(this.mBitmap.getWidth(), this.mBitmap.getHeight(), Rotation.NORMAL);
            draw();
        }
    }

    public void setBitmap(String str) {
        releaseBitmap();
        this.mBitmap = BitmapFactory.decodeFile(str);
    }

    public void setBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            releaseBitmap();
            this.mBitmap = bitmap;
        }
    }

    public void setBitmap(int i) {
        releaseBitmap();
        this.mBitmap = BitmapFactory.decodeResource(this.mContext.getResources(), i);
    }

    public void setBitmap(byte[] bArr, int i, int i2) {
        releaseBitmap();
        this.mBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        this.mBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(bArr));
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaSurface
    public void start(GPUMediaTexture gPUMediaTexture) {
        super.start(gPUMediaTexture);
        draw();
    }

    private void draw() {
        if (this.started && this.mBitmap != null) {
            Canvas canvasLockCanvas = this.mSurface.lockCanvas(null);
            Rect rect = new Rect(0, 0, this.mWidth, this.mHeight);
            canvasLockCanvas.drawBitmap(this.mBitmap, rect, rect, (Paint) null);
            Log.i("New Image", "Drawing");
            this.mSurface.unlockCanvasAndPost(canvasLockCanvas);
            releaseBitmap();
        }
    }

    private void releaseBitmap() {
        if (this.mBitmap != null) {
            this.mBitmap.recycle();
            this.mBitmap = null;
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaSurface
    public void release() {
        releaseBitmap();
        super.release();
    }
}
