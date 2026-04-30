package com.behance.sdk.ui.customviews;

import android.content.Context;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCameraPreview extends SurfaceView implements SurfaceHolder.Callback {
    private Camera mCamera;
    private SurfaceHolder mHolder;

    public BehanceSDKCameraPreview(Context context, Camera camera) {
        super(context);
        this.mCamera = camera;
        this.mHolder = getHolder();
        this.mHolder.addCallback(this);
        this.mHolder.setType(3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        try {
            this.mCamera.setPreviewDisplay(surfaceHolder);
            this.mCamera.startPreview();
        } catch (IOException e2) {
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (this.mHolder.getSurface() != null) {
            try {
                this.mCamera.stopPreview();
            } catch (Exception e2) {
            }
            try {
                this.mCamera.setPreviewDisplay(this.mHolder);
                this.mCamera.startPreview();
            } catch (Exception e3) {
            }
        }
    }
}
