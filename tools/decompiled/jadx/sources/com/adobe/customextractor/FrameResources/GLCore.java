package com.adobe.customextractor.FrameResources;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.util.Log;
import android.view.Surface;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class GLCore {
    private static final int EGL_RECORDABLE_ANDROID = 12610;
    public static final int FLAG_RECORDABLE = 1;
    private static final String TAG = "GLCore";
    private EGLSurface eglSurface;
    private boolean frameAvailable;
    private Filter mFilter;
    private int mGlVersion;
    private Surface mSurface;
    private SurfaceTexture mSurfaceTexture;
    private int mTextureHandle;
    private EGLDisplay mEGLDisplay = EGL14.EGL_NO_DISPLAY;
    private EGLContext mEGLContext = EGL14.EGL_NO_CONTEXT;
    private EGLConfig mEGLConfig = null;
    private Object syncObject = new Object();

    public GLCore() {
        initDisplay();
        createEglContext();
    }

    public void release() {
        if (this.mSurfaceTexture != null) {
            this.mSurfaceTexture.release();
            this.mSurfaceTexture = null;
        }
        if (this.mSurface != null) {
            this.mSurface.release();
            this.mSurface = null;
        }
        if (this.eglSurface != null) {
            EGL14.eglDestroySurface(this.mEGLDisplay, this.eglSurface);
            this.eglSurface = null;
        }
        if (this.mEGLContext != EGL14.EGL_NO_CONTEXT) {
            EGL14.eglDestroyContext(this.mEGLDisplay, this.mEGLContext);
            this.mEGLContext = EGL14.EGL_NO_CONTEXT;
        }
        this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
        if (this.mFilter != null) {
            this.mFilter.destroy();
            this.mFilter = null;
        }
    }

    public EGLSurface createMemSurface(int i, int i2) {
        this.eglSurface = EGL14.eglCreatePbufferSurface(this.mEGLDisplay, this.mEGLConfig, new int[]{12375, i, 12374, i2, 12344}, 0);
        checkEglError("eglCreatePbufferSurface");
        if (this.eglSurface == null) {
            throw new RuntimeException("surface was null");
        }
        return this.eglSurface;
    }

    public void makeCurrent(EGLSurface eGLSurface) {
        if (!EGL14.eglMakeCurrent(this.mEGLDisplay, eGLSurface, eGLSurface, this.mEGLContext)) {
            checkEglError("makeCurrent");
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public Surface createSurface() {
        this.mTextureHandle = OpenGl.loadExternalTexture();
        this.mSurfaceTexture = new SurfaceTexture(this.mTextureHandle);
        this.mSurfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.adobe.customextractor.FrameResources.GLCore.1
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                GLCore.this.frameAvailable = true;
                synchronized (GLCore.this.syncObject) {
                    GLCore.this.syncObject.notify();
                }
            }
        });
        this.frameAvailable = false;
        this.mSurface = new Surface(this.mSurfaceTexture);
        return this.mSurface;
    }

    public void waitForFrame() {
        synchronized (this.syncObject) {
            while (!this.frameAvailable) {
                try {
                    this.syncObject.wait();
                } catch (InterruptedException e2) {
                    Log.e("MediaTexture", "Interrupt " + e2);
                }
            }
            this.mSurfaceTexture.updateTexImage();
        }
    }

    public IntBuffer drawFrame(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mFilter = new Filter();
        this.mFilter.onInit(i4, i5, i6, i7, i3);
        this.mFilter.draw(this.mTextureHandle);
        IntBuffer intBufferAllocate = IntBuffer.allocate(i * i2);
        intBufferAllocate.position(0);
        GLES20.glReadPixels(0, 0, i, i2, 6408, 5121, intBufferAllocate);
        checkEglError("readPixels");
        return intBufferAllocate;
    }

    private void initDisplay() {
        this.mEGLDisplay = EGL14.eglGetDisplay(0);
        checkEglError("eglGetDisplay");
        if (this.mEGLDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(this.mEGLDisplay, iArr, 0, iArr, 1)) {
            checkEglError("eglInitialize");
            this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
            throw new RuntimeException("unable to initialize EGL14");
        }
    }

    private void createEglContext() {
        if (this.mEGLContext == EGL14.EGL_NO_CONTEXT) {
            EGLConfig config = getConfig(2);
            if (config == null) {
                throw new RuntimeException("Unable to find a suitable EGLConfig");
            }
            EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.mEGLDisplay, config, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
            checkEglError("eglCreateContext");
            this.mEGLConfig = config;
            this.mEGLContext = eGLContextEglCreateContext;
            this.mGlVersion = 2;
        }
    }

    private EGLConfig getConfig(int i) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(this.mEGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 16, 12326, 8, 12352, i >= 3 ? 68 : 4, EGL_RECORDABLE_ANDROID, 1, 12344}, 0, eGLConfigArr, 0, eGLConfigArr.length, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        Log.w(TAG, "unable to find RGB8888 / " + i + " EGLConfig");
        return null;
    }

    private void checkEglError(String str) {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError != 12288) {
            throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(iEglGetError));
        }
    }
}
