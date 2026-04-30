package com.learnncode.mediachooser.activity;

import android.app.Activity;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.Button;
import android.widget.LinearLayout;
import com.learnncode.mediachooser.g;
import com.learnncode.mediachooser.j;
import com.learnncode.mediachooser.k;
import com.learnncode.mediachooser.m;
import com.learnncode.mediachooser.p;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class ClipViewActivity extends Activity implements MediaPlayer.OnPreparedListener, SurfaceHolder.Callback, p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SurfaceView f3656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    MediaPlayer f3657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    m f3658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Button f3659d;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(k.activity_clipview);
        h();
        this.f3656a = (SurfaceView) findViewById(j.videoSurface);
        this.f3656a.getHolder().addCallback(this);
        this.f3657b = new MediaPlayer();
        this.f3658c = new m(this);
        this.f3659d = (Button) findViewById(j.backArrowImageViewFromMediaChooser);
        try {
            this.f3657b.setAudioStreamType(3);
            this.f3657b.setDataSource(this, (Uri) getIntent().getParcelableExtra("videoPlayUri"));
            this.f3657b.setOnPreparedListener(this);
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (IllegalStateException e4) {
            e4.printStackTrace();
        } catch (SecurityException e5) {
            e5.printStackTrace();
        }
        j();
    }

    private void h() {
        LinearLayout linearLayout = (LinearLayout) findViewById(j.contanier_surface_view);
        int i = getResources().getDisplayMetrics().widthPixels;
        int i2 = getResources().getDisplayMetrics().heightPixels;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams.width = i - 20;
        layoutParams.height = (int) (0.5625f * layoutParams.width);
        layoutParams.setMargins(10, 0, 0, 10);
        linearLayout.setLayoutParams(layoutParams);
    }

    private void i() {
        int width = this.f3656a.getWidth();
        int height = this.f3656a.getHeight();
        float videoWidth = this.f3657b.getVideoWidth();
        float videoHeight = this.f3657b.getVideoHeight();
        float f2 = videoWidth / videoHeight;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f3656a.getLayoutParams();
        if (videoHeight > videoWidth) {
            layoutParams.width = (int) (height * f2);
            layoutParams.height = height;
            layoutParams.setMargins((width - layoutParams.width) / 2, 0, (width - layoutParams.width) / 2, 0);
        } else {
            layoutParams.width = width;
            layoutParams.height = (int) (width / f2);
        }
        this.f3656a.setLayoutParams(layoutParams);
    }

    private void j() {
        this.f3659d.setOnClickListener(new b(this));
        this.f3657b.setOnCompletionListener(new c(this));
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.f3657b != null) {
            this.f3657b.stop();
        }
        super.onBackPressed();
        overridePendingTransition(g.push_right_in, g.push_right_out);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeAndGoBack() {
        onBackPressed();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f3657b.setDisplay(surfaceHolder);
        this.f3657b.prepareAsync();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f3658c.setMediaPlayer(this);
        this.f3658c.setAnchorView((LinearLayout) findViewById(j.videoSurfaceContainer));
        i();
        this.f3657b.start();
        this.f3658c.d();
    }

    @Override // com.learnncode.mediachooser.p
    public boolean g() {
        return true;
    }

    @Override // com.learnncode.mediachooser.p
    public int f() {
        return 0;
    }

    @Override // com.learnncode.mediachooser.p
    public int d() {
        if (this.f3657b != null) {
            return this.f3657b.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.learnncode.mediachooser.p
    public int c() {
        if (this.f3657b != null) {
            return this.f3657b.getDuration();
        }
        return 0;
    }

    @Override // com.learnncode.mediachooser.p
    public boolean e() {
        if (this.f3657b != null) {
            return this.f3657b.isPlaying();
        }
        return false;
    }

    @Override // com.learnncode.mediachooser.p
    public void b() {
        if (this.f3657b != null) {
            this.f3657b.pause();
        }
    }

    @Override // com.learnncode.mediachooser.p
    public void a(int i) {
        if (this.f3657b != null) {
            this.f3657b.seekTo(i);
        }
    }

    @Override // com.learnncode.mediachooser.p
    public void a() {
        if (this.f3657b != null) {
            this.f3657b.start();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.f3657b != null) {
            if (this.f3657b.isPlaying()) {
                this.f3657b.stop();
            }
            this.f3657b.release();
            this.f3657b = null;
        }
    }
}
