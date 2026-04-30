package com.dd.crop;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class TextureVideoView extends TextureView implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f1521a = TextureVideoView.class.getName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MediaPlayer f1522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1526f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1527g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private f l;
    private g m;
    private e n;

    public TextureVideoView(Context context) {
        super(context);
        this.f1523c = 0;
        this.f1524d = false;
        i();
    }

    public TextureVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1523c = 0;
        this.f1524d = false;
        i();
    }

    public TextureVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1523c = 0;
        this.f1524d = false;
        i();
    }

    private void i() {
        k();
        setScaleType(f.CENTER_CROP);
        setSurfaceTextureListener(this);
    }

    public void setScaleType(f fVar) {
        this.l = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        float f2;
        int i;
        int i2 = 0;
        float f3 = 1.0f;
        float width = getWidth();
        float height = getHeight();
        if (this.f1526f > width && this.f1525e > height) {
            f2 = this.f1526f / width;
            f3 = this.f1525e / height;
        } else if (this.f1526f / this.f1525e > width / height) {
            f2 = (height / this.f1525e) / (width / this.f1526f);
        } else {
            f2 = 1.0f;
            f3 = (width / this.f1526f) / (height / this.f1525e);
        }
        Log.d("Video Details", height + " " + width);
        switch (this.l) {
            case TOP:
                i = 0;
                break;
            case BOTTOM:
                i = (int) width;
                i2 = (int) height;
                break;
            case CENTER_CROP:
                i = (int) (width / 2.0f);
                i2 = (int) (height / 2.0f);
                break;
            default:
                i = (int) (width / 2.0f);
                i2 = (int) (height / 2.0f);
                break;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f2, f3, i, i2);
        setTransform(matrix);
    }

    private void k() {
        if (this.f1522b == null) {
            this.f1522b = new MediaPlayer();
        } else {
            this.f1522b.reset();
        }
        this.i = false;
        this.j = false;
        this.k = false;
        this.m = g.UNINITIALIZED;
    }

    public void setDataSource(String str) {
        k();
        try {
            this.f1522b.setDataSource(str);
            this.f1527g = true;
            l();
        } catch (IOException e2) {
            Log.d(f1521a, e2.getMessage());
        }
    }

    public void a(Context context, Uri uri) {
        k();
        try {
            this.f1522b.setDataSource(context, uri);
            this.f1527g = true;
            l();
        } catch (IOException e2) {
            Log.d(f1521a, e2.getMessage());
        }
    }

    public void setDataSource(AssetFileDescriptor assetFileDescriptor) {
        k();
        try {
            this.f1522b.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
            this.f1527g = true;
            l();
        } catch (IOException e2) {
            Log.d(f1521a, e2.getMessage());
        }
    }

    private void l() {
        try {
            this.f1522b.setOnVideoSizeChangedListener(new a(this));
            this.f1522b.setOnCompletionListener(new b(this));
            this.f1522b.prepareAsync();
            this.f1522b.setOnPreparedListener(new c(this));
        } catch (IllegalArgumentException e2) {
            Log.d(f1521a, e2.getMessage());
        } catch (IllegalStateException e3) {
            e3.printStackTrace();
            Log.d(f1521a, e3.toString());
        } catch (SecurityException e4) {
            Log.d(f1521a, e4.getMessage());
        }
    }

    public void a() {
        if (!this.f1527g) {
            a("play() was called but data source was not set.");
            return;
        }
        this.j = true;
        if (!this.i) {
            a("play() was called but video is not prepared yet, waiting.");
            return;
        }
        if (!this.h) {
            a("play() was called but view is not available yet, waiting.");
            return;
        }
        if (this.m == g.PLAY) {
            a("play() was called but video is already playing.");
            return;
        }
        if (this.m == g.PAUSE) {
            a("play() was called but video is paused, resuming.");
            this.m = g.PLAY;
            this.f1522b.start();
        } else {
            if (this.m == g.END) {
                a("play() called but video ended");
                return;
            }
            if (this.m == g.STOP) {
                a("play() was called but video already ended, starting over.");
                this.m = g.PLAY;
                this.f1522b.seekTo(0);
                this.f1522b.start();
                return;
            }
            if (this.f1524d) {
                this.f1522b.seekTo(this.f1523c);
                this.f1524d = false;
            }
            this.m = g.PLAY;
            this.f1522b.start();
        }
    }

    public void b() {
        if (this.m == g.PAUSE) {
            a("pause() was called but video already paused.");
            return;
        }
        if (this.m == g.STOP) {
            a("pause() was called but video already stopped.");
            return;
        }
        if (this.m == g.END) {
            a("pause() was called but video already ended.");
            return;
        }
        this.m = g.PAUSE;
        if (this.f1522b.isPlaying()) {
            this.f1522b.pause();
        }
    }

    public void c() {
        if (this.m == g.STOP) {
            a("stop() was called but video already stopped.");
            return;
        }
        if (this.m == g.END) {
            a("stop() was called but video already ended.");
            return;
        }
        this.m = g.STOP;
        if (this.f1522b.isPlaying()) {
            this.f1522b.pause();
            this.f1522b.seekTo(0);
        }
    }

    public void d() {
        this.k = true;
    }

    public void setLooping(boolean z) {
        this.f1522b.setLooping(z);
    }

    public int getDuration() {
        return this.f1522b.getDuration();
    }

    static void a(String str) {
        Log.d(f1521a, str);
    }

    public void setListener(e eVar) {
        this.n = eVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Log.e("OnVideo", "Surface Available");
        if (this.m != g.END && this.f1522b != null) {
            this.f1522b.setSurface(new Surface(surfaceTexture));
            this.h = true;
            j();
            if (this.f1527g && this.j && this.i && !this.k) {
                a("View is available and play() was called.");
                a();
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Log.e("OnVideo", "Surface Destroy");
        if (this.f1522b != null) {
            this.f1523c = this.f1522b.getCurrentPosition();
            this.f1522b.release();
            this.f1522b = null;
        }
        this.h = false;
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public boolean e() {
        return this.f1522b.isPlaying();
    }

    public void f() {
        this.m = g.END;
        this.f1522b.release();
    }

    public void g() {
        this.f1524d = true;
    }

    public boolean h() {
        return this.h;
    }
}
