package com.learnncode.mediachooser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import java.util.Formatter;
import java.util.Locale;
import org.joda.time.DateTimeConstants;

/* JADX INFO: compiled from: VideoControllerView.java */
/* JADX INFO: loaded from: classes3.dex */
public class m extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    StringBuilder f3758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Formatter f3759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private p f3760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f3761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ViewGroup f3762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f3763f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ProgressBar f3764g;
    private TextView h;
    private boolean i;
    private boolean j;
    private boolean k;
    private ImageButton l;
    private Handler m;
    private View.OnClickListener n;
    private SeekBar.OnSeekBarChangeListener o;

    public m(Context context, boolean z) {
        super(context);
        this.m = new q(this);
        this.n = new n(this);
        this.o = new o(this);
        this.f3761d = context;
        this.k = z;
        Log.i("VideoControllerView", "VideoControllerView");
    }

    public m(Context context) {
        this(context, true);
        Log.i("VideoControllerView", "VideoControllerView");
    }

    @Override // android.view.View
    public void onFinishInflate() {
        if (this.f3763f != null) {
            a(this.f3763f);
        }
    }

    public void setMediaPlayer(p pVar) {
        this.f3760c = pVar;
        d();
    }

    public void setAnchorView(ViewGroup viewGroup) {
        this.f3762e = viewGroup;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        removeAllViews();
        addView(a(), layoutParams);
        b();
    }

    protected View a() {
        this.f3763f = ((LayoutInflater) this.f3761d.getSystemService("layout_inflater")).inflate(k.media_controller, (ViewGroup) null);
        a(this.f3763f);
        return this.f3763f;
    }

    private void a(View view) {
        this.l = (ImageButton) view.findViewById(j.pause);
        if (this.l != null) {
            this.l.requestFocus();
            this.l.setOnClickListener(this.n);
        }
        this.f3764g = (SeekBar) view.findViewById(j.mediacontroller_progress);
        if (this.f3764g != null) {
            if (this.f3764g instanceof SeekBar) {
                ((SeekBar) this.f3764g).setOnSeekBarChangeListener(this.o);
            }
            this.f3764g.setMax(1000);
        }
        this.h = (TextView) view.findViewById(j.time);
        this.f3758a = new StringBuilder();
        this.f3759b = new Formatter(this.f3758a, Locale.getDefault());
    }

    public void b() {
        a(0);
    }

    private void f() {
        if (this.f3760c != null) {
            try {
                if (this.l != null && !this.f3760c.g()) {
                    this.l.setEnabled(false);
                }
            } catch (IncompatibleClassChangeError e2) {
            }
        }
    }

    public void a(int i) {
        if (!this.i && this.f3762e != null) {
            g();
            if (this.l != null) {
                this.l.requestFocus();
            }
            f();
            this.f3762e.addView(this, new FrameLayout.LayoutParams(-1, -2, 80));
            this.i = true;
        }
        d();
        this.m.sendEmptyMessage(2);
        Message messageObtainMessage = this.m.obtainMessage(1);
        if (i != 0) {
            this.m.removeMessages(1);
            this.m.sendMessageDelayed(messageObtainMessage, i);
        }
    }

    public void c() {
        a(0);
    }

    private String b(int i) {
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / DateTimeConstants.SECONDS_PER_HOUR;
        this.f3758a.setLength(0);
        return i5 > 0 ? this.f3759b.format("%d:%02d:%02d", Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)).toString() : this.f3759b.format("%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3)).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g() {
        if (this.f3760c == null || this.j) {
            return 0;
        }
        int iD = this.f3760c.d();
        int iC = this.f3760c.c();
        if (this.f3764g != null) {
            if (iC > 0) {
                this.f3764g.setProgress((int) ((1000 * ((long) iD)) / ((long) iC)));
            }
            this.f3764g.setSecondaryProgress(this.f3760c.f() * 10);
        }
        if (this.h != null) {
            this.h.setText(b(iC));
            return iD;
        }
        return iD;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        a(0);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.f3760c == null) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (keyCode == 79 || keyCode == 85 || keyCode == 62) {
            if (!z) {
                return true;
            }
            h();
            a(0);
            if (this.l == null) {
                return true;
            }
            this.l.requestFocus();
            return true;
        }
        if (keyCode == 126) {
            if (!z || this.f3760c.e()) {
                return true;
            }
            this.f3760c.a();
            d();
            a(0);
            return true;
        }
        if (keyCode == 86 || keyCode == 127) {
            if (!z || !this.f3760c.e()) {
                return true;
            }
            this.f3760c.b();
            d();
            a(0);
            return true;
        }
        if (keyCode == 25 || keyCode == 24 || keyCode == 164) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyCode == 4 || keyCode == 82) {
            if (!z) {
                return true;
            }
            c();
            return true;
        }
        a(0);
        return super.dispatchKeyEvent(keyEvent);
    }

    public void d() {
        if (this.f3763f != null && this.l != null && this.f3760c != null) {
            if (this.f3760c.e()) {
                this.l.setImageResource(i.ic_media_pause);
            } else {
                this.l.setImageResource(i.ic_media_play);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f3760c != null) {
            if (this.f3760c.e()) {
                this.f3760c.b();
            } else {
                this.f3760c.a();
            }
            d();
        }
    }

    public void e() {
        if (this.f3760c != null) {
            this.f3760c.a(0);
            this.l.setImageResource(i.ic_media_play);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (this.l != null) {
            this.l.setEnabled(z);
        }
        if (this.f3764g != null) {
            this.f3764g.setEnabled(z);
        }
        f();
        super.setEnabled(z);
    }
}
