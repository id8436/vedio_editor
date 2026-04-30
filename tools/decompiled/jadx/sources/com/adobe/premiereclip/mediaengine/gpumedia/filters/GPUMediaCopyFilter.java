package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaCopyFilter extends GPUMediaFilter {
    private GPUMediaTexture copyFrameBuffer;

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void onOutputSizeChanged(int i, int i2) {
        if (this.mGPUMediaTexture != null) {
            i = this.mGPUMediaTexture.getWidth();
            i2 = this.mGPUMediaTexture.getHeight();
        }
        if (this.copyFrameBuffer != null) {
            this.copyFrameBuffer.onDestroy();
        }
        this.copyFrameBuffer = new GPUMediaTexture(i, i2, null, true);
        super.onOutputSizeChanged(i, i2);
    }

    public GPUMediaTexture getCopyBuffer() {
        return this.copyFrameBuffer;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void onDraw(GPUMediaTexture gPUMediaTexture) {
        Rotation rotation;
        int width = this.mGPUMediaTexture.getWidth();
        int height = this.mGPUMediaTexture.getHeight();
        if (!this.mGPUMediaTexture.isExternalOES() || (rotation = this.mGPUMediaTexture.getRotation()) == Rotation.ROTATION_180 || rotation == Rotation.NORMAL) {
            height = width;
            width = height;
        }
        if (this.mOutputWidth != height || this.mOutputHeight != width) {
            Log.i("Renderclip", "clipframebuffer size changed");
            onOutputSizeChanged(height, width);
        }
        this.copyFrameBuffer.bindFrameBuffer();
        onDraw();
        GLES20.glBindFramebuffer(36160, 0);
    }
}
