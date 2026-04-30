package com.adobe.premiereclip.mediaengine.gpumedia;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaRenderer implements GLSurfaceView.Renderer {
    private Listener mListener;
    private int mOutputHeight;
    private int mOutputWidth;
    public final Object mSurfaceChangedWaiter = new Object();
    private final List<Runnable> mRunOnDraw = new ArrayList();
    private final List<Runnable> mRunOnDrawEnd = new ArrayList();

    public interface Listener {
        void onDrawFrame();

        void onSurfaceChanged(int i, int i2);

        void onSurfaceCreated();
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glDisable(2929);
        if (this.mListener != null) {
            this.mListener.onSurfaceCreated();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.mOutputWidth = i;
        this.mOutputHeight = i2;
        GLES20.glViewport(0, 0, i, i2);
        Log.i("GPUMedia", "display surface size changed: " + this.mOutputWidth + " " + this.mOutputHeight);
        if (this.mListener != null) {
            this.mListener.onSurfaceChanged(this.mOutputWidth, this.mOutputHeight);
        }
        synchronized (this.mSurfaceChangedWaiter) {
            this.mSurfaceChangedWaiter.notifyAll();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        runAll(this.mRunOnDraw);
        if (this.mListener != null) {
            this.mListener.onDrawFrame();
        }
        runAll(this.mRunOnDrawEnd);
    }

    private void runAll(List<Runnable> list) {
        synchronized (list) {
            Iterator<Runnable> it = list.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            list.clear();
        }
    }

    protected int getFrameWidth() {
        return this.mOutputWidth;
    }

    protected int getFrameHeight() {
        return this.mOutputHeight;
    }

    protected void runOnDraw(Runnable runnable) {
        synchronized (this.mRunOnDraw) {
            this.mRunOnDraw.add(runnable);
        }
    }

    protected void runOnDrawEnd(Runnable runnable) {
        synchronized (this.mRunOnDrawEnd) {
            this.mRunOnDrawEnd.add(runnable);
        }
    }
}
