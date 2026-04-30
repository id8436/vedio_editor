package com.alertdialogpro;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.text.NumberFormat;

/* JADX INFO: compiled from: ProgressDialogPro.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ProgressBar f644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f648f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f649g;
    private NumberFormat h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private Drawable n;
    private Drawable o;
    private CharSequence p;
    private boolean q;
    private boolean r;
    private Handler s;

    public b(Context context) {
        this(context, 0);
    }

    public b(Context context, int i) {
        super(context, a(context, i));
        this.f646d = 0;
        this.f643a = new ContextThemeWrapper(context, a(context, i));
        a();
    }

    private void a() {
        this.f648f = "%1d/%2d";
        this.h = NumberFormat.getPercentInstance();
        this.h.setMaximumFractionDigits(0);
    }

    public static b a(Context context, CharSequence charSequence, CharSequence charSequence2) {
        return a(context, charSequence, charSequence2, false);
    }

    public static b a(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return a(context, charSequence, charSequence2, z, false, null);
    }

    public static b a(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2, DialogInterface.OnCancelListener onCancelListener) {
        b bVar = new b(context);
        bVar.setTitle(charSequence);
        bVar.setMessage(charSequence2);
        bVar.a(z);
        bVar.setCancelable(z2);
        bVar.setOnCancelListener(onCancelListener);
        bVar.show();
        return bVar;
    }

    @Override // com.alertdialogpro.a, android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f643a);
        TypedArray typedArrayObtainStyledAttributes = this.f643a.obtainStyledAttributes(null, g.AlertDialogPro, e.alertDialogProStyle, 0);
        if (this.f646d == 1) {
            this.s = new c(this);
            View viewInflate = layoutInflaterFrom.inflate(typedArrayObtainStyledAttributes.getResourceId(g.AlertDialogPro_adpHorizontalProgressLayout, 0), (ViewGroup) null);
            this.f644b = (ProgressBar) viewInflate.findViewById(f.adp_progress);
            this.f647e = (TextView) viewInflate.findViewById(f.adp_progress_number);
            this.f649g = (TextView) viewInflate.findViewById(f.adp_progress_percent);
            setView(viewInflate);
        } else {
            View viewInflate2 = layoutInflaterFrom.inflate(typedArrayObtainStyledAttributes.getResourceId(g.AlertDialogPro_adpProgressLayout, 0), (ViewGroup) null);
            this.f644b = (ProgressBar) viewInflate2.findViewById(f.adp_progress);
            this.f645c = (TextView) viewInflate2.findViewById(f.adp_message);
            setView(viewInflate2);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (this.i > 0) {
            c(this.i);
        }
        if (this.j > 0) {
            a(this.j);
        }
        if (this.k > 0) {
            b(this.k);
        }
        if (this.l > 0) {
            d(this.l);
        }
        if (this.m > 0) {
            e(this.m);
        }
        if (this.n != null) {
            a(this.n);
        }
        if (this.o != null) {
            b(this.o);
        }
        if (this.p != null) {
            setMessage(this.p);
        }
        a(this.q);
        b();
        super.onCreate(bundle);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        this.r = true;
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        this.r = false;
    }

    public void a(int i) {
        if (this.r) {
            this.f644b.setProgress(i);
            b();
        } else {
            this.j = i;
        }
    }

    public void b(int i) {
        if (this.f644b != null) {
            this.f644b.setSecondaryProgress(i);
            b();
        } else {
            this.k = i;
        }
    }

    public void c(int i) {
        if (this.f644b != null) {
            this.f644b.setMax(i);
            b();
        } else {
            this.i = i;
        }
    }

    public void d(int i) {
        if (this.f644b != null) {
            this.f644b.incrementProgressBy(i);
            b();
        } else {
            this.l += i;
        }
    }

    public void e(int i) {
        if (this.f644b != null) {
            this.f644b.incrementSecondaryProgressBy(i);
            b();
        } else {
            this.m += i;
        }
    }

    public void a(Drawable drawable) {
        if (this.f644b != null) {
            this.f644b.setProgressDrawable(drawable);
        } else {
            this.n = drawable;
        }
    }

    public void b(Drawable drawable) {
        if (this.f644b != null) {
            this.f644b.setIndeterminateDrawable(drawable);
        } else {
            this.o = drawable;
        }
    }

    public void a(boolean z) {
        if (this.f644b != null) {
            this.f644b.setIndeterminate(z);
        } else {
            this.q = z;
        }
    }

    @Override // com.alertdialogpro.a, android.app.AlertDialog
    public void setMessage(CharSequence charSequence) {
        if (this.f644b != null) {
            if (this.f646d == 1) {
                super.setMessage(charSequence);
                return;
            } else {
                Log.d("CC", "Message: " + ((Object) charSequence) + " | " + this.f645c);
                this.f645c.setText(charSequence);
                return;
            }
        }
        this.p = charSequence;
    }

    private void b() {
        if (this.f646d == 1 && this.s != null && !this.s.hasMessages(0)) {
            this.s.sendEmptyMessage(0);
        }
    }
}
