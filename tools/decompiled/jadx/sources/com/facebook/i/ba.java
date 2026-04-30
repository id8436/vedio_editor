package com.facebook.i;

import android.R;
import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.adobe.premiereclip.project.sequence.Sequence;
import java.util.Locale;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: WebDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class ba extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private bh f2331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebView f2332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ProgressDialog f2333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f2334f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private FrameLayout f2335g;
    private boolean h;
    private boolean i;
    private boolean j;

    public ba(Context context, String str) {
        this(context, str, R.style.Theme.Translucent.NoTitleBar);
    }

    public ba(Context context, String str, int i) {
        super(context, i == 0 ? R.style.Theme.Translucent.NoTitleBar : i);
        this.f2330b = "fbconnect://success";
        this.h = false;
        this.i = false;
        this.j = false;
        this.f2329a = str;
    }

    public ba(Context context, String str, Bundle bundle, int i, bh bhVar) {
        super(context, i == 0 ? R.style.Theme.Translucent.NoTitleBar : i);
        this.f2330b = "fbconnect://success";
        this.h = false;
        this.i = false;
        this.j = false;
        bundle = bundle == null ? new Bundle() : bundle;
        bundle.putString("redirect_uri", "fbconnect://success");
        bundle.putString("display", "touch");
        bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", com.facebook.w.g()));
        this.f2329a = as.a(ar.a(), ar.d() + URIUtil.SLASH + "dialog/" + str, bundle).toString();
        this.f2331c = bhVar;
    }

    public void a(bh bhVar) {
        this.f2331c = bhVar;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f2332d != null) {
            this.f2332d.stopLoading();
        }
        if (!this.i && this.f2333e != null && this.f2333e.isShowing()) {
            this.f2333e.dismiss();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        d();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.i = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        this.i = false;
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2333e = new ProgressDialog(getContext());
        this.f2333e.requestWindowFeature(1);
        this.f2333e.setMessage(getContext().getString(com.facebook.bh.com_facebook_loading));
        this.f2333e.setOnCancelListener(new bb(this));
        requestWindowFeature(1);
        this.f2335g = new FrameLayout(getContext());
        d();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        e();
        a((this.f2334f.getDrawable().getIntrinsicWidth() / 2) + 1);
        this.f2335g.addView(this.f2334f, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.f2335g);
    }

    protected void b(String str) {
        this.f2330b = str;
    }

    protected Bundle a(String str) {
        Uri uri = Uri.parse(str);
        Bundle bundleB = as.b(uri.getQuery());
        bundleB.putAll(as.b(uri.getFragment()));
        return bundleB;
    }

    protected boolean a() {
        return this.h;
    }

    protected boolean b() {
        return this.j;
    }

    protected WebView c() {
        return this.f2332d;
    }

    public void d() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, Sequence.EXPORT_HD_WIDTH), displayMetrics.heightPixels));
    }

    private int a(int i, float f2, int i2, int i3) {
        double d2 = 0.5d;
        int i4 = (int) (i / f2);
        if (i4 <= i2) {
            d2 = 1.0d;
        } else if (i4 < i3) {
            d2 = 0.5d + ((((double) (i3 - i4)) / ((double) (i3 - i2))) * 0.5d);
        }
        return (int) (d2 * ((double) i));
    }

    protected void a(Bundle bundle) {
        if (this.f2331c != null && !this.h) {
            this.h = true;
            this.f2331c.a(bundle, null);
            dismiss();
        }
    }

    protected void a(Throwable th) {
        com.facebook.q qVar;
        if (this.f2331c != null && !this.h) {
            this.h = true;
            if (th instanceof com.facebook.q) {
                qVar = (com.facebook.q) th;
            } else {
                qVar = new com.facebook.q(th);
            }
            this.f2331c.a(null, qVar);
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f2331c != null && !this.h) {
            a(new com.facebook.r());
        }
    }

    private void e() {
        this.f2334f = new ImageView(getContext());
        this.f2334f.setOnClickListener(new bc(this));
        this.f2334f.setImageDrawable(getContext().getResources().getDrawable(com.facebook.be.com_facebook_close));
        this.f2334f.setVisibility(4);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void a(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f2332d = new bd(this, getContext().getApplicationContext());
        this.f2332d.setVerticalScrollBarEnabled(false);
        this.f2332d.setHorizontalScrollBarEnabled(false);
        this.f2332d.setWebViewClient(new bg(this, null));
        this.f2332d.getSettings().setJavaScriptEnabled(true);
        this.f2332d.loadUrl(this.f2329a);
        this.f2332d.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f2332d.setVisibility(4);
        this.f2332d.getSettings().setSavePassword(false);
        this.f2332d.getSettings().setSaveFormData(false);
        this.f2332d.setFocusable(true);
        this.f2332d.setFocusableInTouchMode(true);
        this.f2332d.setOnTouchListener(new be(this));
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.f2332d);
        linearLayout.setBackgroundColor(-872415232);
        this.f2335g.addView(linearLayout);
    }
}
