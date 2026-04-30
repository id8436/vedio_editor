package com.adobe.premiereclip.mediaengine.gpumedia.surface;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.mediaengine.gpumedia.utils.OpenGlUtils;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class GPUMediaTexture {
    protected DrawFrameListener drawFrameListener;
    private final boolean isFrameBuffer;
    private final int mFrameBufferHandle;
    protected final FloatBuffer mGLTextureBuffer;
    private int mHeight;
    private Rotation mRotation;
    private SurfaceTexture mSurfaceTexture;
    private final int mTextureHandle;
    private final int mTextureTarget;
    private int mWidth;

    public interface DrawFrameListener {
        void onDrawFrame();
    }

    public void setDrawFrameListener(DrawFrameListener drawFrameListener) {
        this.drawFrameListener = drawFrameListener;
    }

    public GPUMediaTexture(int i, int i2, Rotation rotation, int i3, boolean z) {
        this.isFrameBuffer = false;
        this.mGLTextureBuffer = ByteBuffer.allocateDirect(TextureRotationUtil.TEXTURE_NO_ROTATION.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mTextureHandle = i3 == -1 ? OpenGlUtils.loadTexture((Bitmap) null, -1, false) : i3;
        this.mFrameBufferHandle = -1;
        this.mTextureTarget = z ? 36197 : 3553;
        if (z) {
            this.mSurfaceTexture = new SurfaceTexture(this.mTextureHandle);
            this.mSurfaceTexture.setDefaultBufferSize(this.mWidth, this.mHeight);
            this.mSurfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture.1
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                    if (GPUMediaTexture.this.drawFrameListener != null) {
                        GPUMediaTexture.this.drawFrameListener.onDrawFrame();
                    }
                }
            });
        }
        onOutputSizeChanged(i, i2, rotation);
    }

    public GPUMediaTexture(int i, int i2, Rotation rotation, boolean z) {
        this.isFrameBuffer = z;
        this.mGLTextureBuffer = ByteBuffer.allocateDirect(TextureRotationUtil.TEXTURE_NO_ROTATION.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        if (z) {
            int[] iArrLoadFrameBuffer = OpenGlUtils.loadFrameBuffer(i, i2);
            this.mTextureHandle = iArrLoadFrameBuffer[0];
            this.mFrameBufferHandle = iArrLoadFrameBuffer[1];
            this.mTextureTarget = 3553;
        } else {
            this.mTextureHandle = OpenGlUtils.loadExternalTexture();
            this.mFrameBufferHandle = -1;
            this.mTextureTarget = 36197;
            this.mSurfaceTexture = new SurfaceTexture(this.mTextureHandle);
            this.mSurfaceTexture.setDefaultBufferSize(this.mWidth, this.mHeight);
            this.mSurfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture.2
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                    if (GPUMediaTexture.this.drawFrameListener != null) {
                        GPUMediaTexture.this.drawFrameListener.onDrawFrame();
                    }
                }
            });
        }
        onOutputSizeChanged(i, i2, rotation);
    }

    SurfaceTexture getSurfaceTexture() {
        return this.mSurfaceTexture;
    }

    private void setRotationBuffer(Rotation rotation) {
        this.mRotation = rotation;
        if (rotation == null) {
            rotation = Rotation.NORMAL;
        }
        this.mGLTextureBuffer.put(TextureRotationUtil.getRotation(rotation, true, !isExternalOES())).position(0);
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    private void onSizeChanged(int i, int i2, Rotation rotation) {
        this.mWidth = i;
        this.mHeight = i2;
        setRotationBuffer(rotation);
        Log.i("GPUMediaTexture", this.mWidth + " " + this.mHeight + " " + this.mRotation);
        if (this.mSurfaceTexture != null) {
            if (rotation == Rotation.ROTATION_270 || rotation == Rotation.ROTATION_90) {
                this.mSurfaceTexture.setDefaultBufferSize(this.mHeight, this.mWidth);
            } else {
                this.mSurfaceTexture.setDefaultBufferSize(this.mWidth, this.mHeight);
            }
        }
    }

    public void onOutputSizeChanged(int i, int i2, Rotation rotation) {
        if (this.mWidth != i || this.mHeight != i2 || this.mRotation != rotation) {
            onSizeChanged(i, i2, rotation);
        }
    }

    public void update() {
        if (this.mSurfaceTexture != null) {
            try {
                this.mSurfaceTexture.updateTexImage();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void onDraw(int i) {
        GLES20.glBindTexture(this.mTextureTarget, this.mTextureHandle);
        if (i != -1) {
            this.mGLTextureBuffer.position(0);
            GLES20.glVertexAttribPointer(i, 2, 5126, false, 0, (Buffer) this.mGLTextureBuffer);
            GLES20.glEnableVertexAttribArray(i);
        }
    }

    public void bindFrameBuffer() {
        if (this.isFrameBuffer) {
            GLES20.glBindFramebuffer(36160, this.mFrameBufferHandle);
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    public final boolean isExternalOES() {
        return this.mTextureTarget == 36197;
    }

    public int getTextureTarget() {
        return this.mTextureTarget;
    }

    class TextureRotationUtil {
        public static final float[] TEXTURE_NO_ROTATION = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        public static final float[] TEXTURE_ROTATED_90 = {1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f};
        public static final float[] TEXTURE_ROTATED_180 = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
        public static final float[] TEXTURE_ROTATED_270 = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};

        private TextureRotationUtil() {
        }

        public static float[] getRotation(Rotation rotation, boolean z, boolean z2) {
            float[] fArr;
            switch (rotation) {
                case ROTATION_90:
                    fArr = TEXTURE_ROTATED_90;
                    break;
                case ROTATION_180:
                    fArr = TEXTURE_ROTATED_180;
                    break;
                case ROTATION_270:
                    fArr = TEXTURE_ROTATED_270;
                    break;
                default:
                    fArr = TEXTURE_NO_ROTATION;
                    break;
            }
            float[] fArr2 = z ? new float[]{flip(fArr[0]), fArr[1], flip(fArr[2]), fArr[3], flip(fArr[4]), fArr[5], flip(fArr[6]), fArr[7]} : fArr;
            return z2 ? new float[]{fArr2[0], flip(fArr2[1]), fArr2[2], flip(fArr2[3]), fArr2[4], flip(fArr2[5]), fArr2[6], flip(fArr2[7])} : fArr2;
        }

        private static float flip(float f2) {
            return f2 == 0.0f ? 1.0f : 0.0f;
        }
    }

    public void onDestroy() {
        if (this.mSurfaceTexture != null) {
            this.mSurfaceTexture.release();
        }
        GLES20.glDeleteTextures(1, new int[]{this.mTextureHandle}, 0);
        if (this.mFrameBufferHandle != -1) {
            GLES20.glDeleteFramebuffers(1, new int[]{this.mFrameBufferHandle}, 0);
        }
    }

    public void setRotation(Rotation rotation) {
        this.mRotation = rotation;
        ((FloatBuffer) this.mGLTextureBuffer.position(0)).put(TextureRotationUtil.getRotation(rotation, false, false)).position(0);
    }

    public Rotation getRotation() {
        return this.mRotation;
    }
}
