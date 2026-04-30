package com.adobe.premiereclip.mediaengine.gpumedia.surface;

import android.content.Context;
import android.util.Log;
import android.view.Surface;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaTwoInputFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.adobe.sync.ComponentManager;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaSurface {
    protected boolean cropParamsChanged;
    protected int crop_bottom;
    protected int crop_right;
    private GPUMediaTexture gpuMediaTexture;
    private Listener listener;
    protected Context mContext;
    protected int mHeight;
    protected Surface mSurface;
    protected int mWidth;
    protected int slice;
    protected int stride;
    protected boolean started = false;
    private volatile boolean mNewFrameConsumed = true;
    protected boolean connected = false;
    protected Rotation mRotation = Rotation.NORMAL;

    public interface Listener {
        void onNewFrame();
    }

    public GPUMediaSurface(Context context) {
        this.mContext = context;
    }

    public void resetSurface(int i, int i2, Rotation rotation) {
        stop();
        start(this.gpuMediaTexture);
        setSize(i, i2, rotation);
    }

    public final void connect() {
        this.connected = true;
    }

    public boolean isConnected() {
        return this.connected;
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    public void start(GPUMediaTexture gPUMediaTexture) {
        if (!this.started) {
            this.gpuMediaTexture = gPUMediaTexture;
            this.gpuMediaTexture.setDrawFrameListener(new GPUMediaTexture.DrawFrameListener() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaSurface.1
                @Override // com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture.DrawFrameListener
                public void onDrawFrame() {
                    synchronized (GPUMediaSurface.this) {
                        GPUMediaSurface.this.mNewFrameConsumed = true;
                    }
                    if (GPUMediaSurface.this.listener != null) {
                        GPUMediaSurface.this.listener.onNewFrame();
                    }
                }
            });
            if (this.gpuMediaTexture.getSurfaceTexture() != null) {
                this.mSurface = new Surface(this.gpuMediaTexture.getSurfaceTexture());
                Log.i("GPUMediaSurface", "Surface Created");
                this.mNewFrameConsumed = true;
                this.started = true;
            }
        }
    }

    public void stop() {
        if (this.mSurface != null) {
            this.started = false;
            this.connected = false;
            this.mSurface.release();
            this.mSurface = null;
            Log.i("GPUMediaSurface", "Surface Released");
        }
    }

    public void setInputToFilter(GPUMediaFilter gPUMediaFilter, int i) {
        if (this.gpuMediaTexture != null) {
            if (i == 0) {
                gPUMediaFilter.setGPUMediaTexture(this.gpuMediaTexture);
                return;
            }
            if ((gPUMediaFilter instanceof GPUMediaTwoInputFilter) && i < 2) {
                ((GPUMediaTwoInputFilter) gPUMediaFilter).setSecondGPUMediaTexture(this.gpuMediaTexture);
            } else if (gPUMediaFilter instanceof GPUMediaBlockFilter) {
                ((GPUMediaBlockFilter) gPUMediaFilter).setGPUMediaTexture(i, this.gpuMediaTexture);
            }
        }
    }

    public void resetNewFrame() {
        synchronized (this) {
            this.mNewFrameConsumed = false;
        }
    }

    public boolean awaitsNewImage() throws InterruptedException {
        return awaitsNewImage(false);
    }

    public boolean awaitsNewImage(boolean z) throws InterruptedException {
        return awaitsNewImage(z, 10);
    }

    public boolean awaitsNewImage(boolean z, int i) throws InterruptedException {
        int i2 = 0;
        while (!this.mNewFrameConsumed) {
            if (!z) {
                int i3 = i2 + 1;
                if (i2 >= i) {
                    break;
                }
                i2 = i3;
            }
            Log.i("New Image", ComponentManager.STATE_WAITING);
            Thread.sleep(10L);
        }
        if (!this.mNewFrameConsumed) {
            Log.i("New Image", "none");
        }
        return !this.mNewFrameConsumed;
    }

    public void setSize(int i, int i2, Rotation rotation) {
        if (i != -1 || i2 != -1 || this.mRotation != rotation) {
            if (i != -1) {
                this.mWidth = i;
            }
            if (i2 != -1) {
                this.mHeight = i2;
            }
            this.mRotation = rotation;
            if (this.gpuMediaTexture != null) {
                this.gpuMediaTexture.onOutputSizeChanged(this.mWidth, this.mHeight, this.mRotation);
            }
        }
    }

    public Surface getSurface() {
        return this.mSurface;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getCropBottom() {
        return this.crop_bottom;
    }

    public int getCropRight() {
        return this.crop_right;
    }

    public int getStride() {
        return this.stride;
    }

    public int getSlice() {
        return this.slice;
    }

    public boolean getCropParamsChanged() {
        return this.cropParamsChanged;
    }

    public void resetCropParamsChanged() {
        this.cropParamsChanged = false;
    }

    public void setCrop(int i, int i2, int i3, int i4) {
        this.stride = i;
        this.slice = i2;
        this.crop_right = i3;
        this.crop_bottom = i4;
        this.cropParamsChanged = true;
    }

    public Rotation getRotation() {
        return this.mRotation;
    }

    public void release() {
        stop();
        if (this.gpuMediaTexture != null && this.gpuMediaTexture.getSurfaceTexture() != null) {
            this.gpuMediaTexture.getSurfaceTexture().release();
        }
    }
}
