package com.alertdialogpro.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.alertdialogpro.e;
import com.alertdialogpro.f;
import com.alertdialogpro.g;

/* JADX INFO: loaded from: classes2.dex */
public class AlertController {
    private ImageView A;
    private TextView B;
    private TextView C;
    private View D;
    private ListAdapter E;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private Handler L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DialogInterface f653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Window f654d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f656f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ListView f657g;
    private View h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private Button o;
    private CharSequence p;
    private Message q;
    private Button r;
    private CharSequence s;
    private Message t;
    private Button u;
    private CharSequence v;
    private Message w;
    private ScrollView x;
    private Drawable z;
    private boolean n = false;
    private int y = -1;
    private int F = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View.OnClickListener f651a = new a(this);

    public AlertController(Context context, DialogInterface dialogInterface, Window window) {
        this.f652b = context;
        this.f653c = dialogInterface;
        this.f654d = window;
        this.L = new b(dialogInterface);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, g.AlertDialogPro, e.alertDialogProStyle, 0);
        this.G = typedArrayObtainStyledAttributes.getResourceId(g.AlertDialogPro_adpLayout, 0);
        this.H = typedArrayObtainStyledAttributes.getResourceId(g.AlertDialogPro_adpListLayout, 0);
        this.I = typedArrayObtainStyledAttributes.getResourceId(g.AlertDialogPro_adpMultiChoiceItemLayout, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(g.AlertDialogPro_adpSingleChoiceItemLayout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(g.AlertDialogPro_adpListItemLayout, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        this.f654d.requestFeature(1);
        this.f654d.setContentView(this.G);
        c();
    }

    public void a(CharSequence charSequence) {
        this.f655e = charSequence;
        if (this.B != null) {
            this.B.setText(charSequence);
        }
    }

    public void b(View view) {
        this.D = view;
    }

    public void b(CharSequence charSequence) {
        this.f656f = charSequence;
        if (this.C != null) {
            this.C.setText(charSequence);
        }
    }

    public void c(View view) {
        this.h = view;
        this.i = 0;
        this.n = false;
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        this.h = view;
        this.i = 0;
        this.n = true;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = i4;
    }

    public void a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.L.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case -3:
                this.v = charSequence;
                this.w = message;
                return;
            case -2:
                this.s = charSequence;
                this.t = message;
                return;
            case -1:
                this.p = charSequence;
                this.q = message;
                return;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void a(int i) {
        this.y = i;
        if (this.A != null) {
            if (i > 0) {
                this.A.setImageResource(this.y);
            } else if (i == 0) {
                this.A.setVisibility(8);
            }
        }
    }

    public void a(Drawable drawable) {
        this.z = drawable;
        if (this.A != null && this.z != null) {
            this.A.setImageDrawable(drawable);
        }
    }

    public ListView b() {
        return this.f657g;
    }

    public Button b(int i) {
        switch (i) {
            case -3:
                return this.u;
            case -2:
                return this.r;
            case -1:
                return this.o;
            default:
                return null;
        }
    }

    public boolean a(int i, KeyEvent keyEvent) {
        return this.x != null && this.x.executeKeyEvent(keyEvent);
    }

    public boolean b(int i, KeyEvent keyEvent) {
        return this.x != null && this.x.executeKeyEvent(keyEvent);
    }

    private void c() {
        View viewInflate;
        View viewFindViewById;
        b((LinearLayout) this.f654d.findViewById(f.adp_contentPanel));
        boolean zD = d();
        boolean zA = a((LinearLayout) this.f654d.findViewById(f.adp_topPanel));
        View viewFindViewById2 = this.f654d.findViewById(f.adp_buttonPanel);
        if (!zD) {
            viewFindViewById2.setVisibility(8);
            if (!zD) {
                viewFindViewById2.setVisibility(8);
                View viewFindViewById3 = this.f654d.findViewById(f.adp_textSpacerNoButtons);
                if (viewFindViewById3 != null) {
                    viewFindViewById3.setVisibility(0);
                }
            }
        }
        FrameLayout frameLayout = (FrameLayout) this.f654d.findViewById(f.adp_customPanel);
        if (this.h != null) {
            viewInflate = this.h;
        } else if (this.i != 0) {
            viewInflate = LayoutInflater.from(this.f652b).inflate(this.i, (ViewGroup) frameLayout, false);
        } else {
            viewInflate = null;
        }
        boolean z = viewInflate != null;
        if (!z || !a(viewInflate)) {
            this.f654d.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout2 = (FrameLayout) this.f654d.findViewById(f.adp_custom);
            frameLayout2.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (this.n) {
                frameLayout2.setPadding(this.j, this.k, this.l, this.m);
            }
            if (this.f657g != null) {
                ((LinearLayout.LayoutParams) frameLayout.getLayoutParams()).weight = 0.0f;
            }
        } else {
            frameLayout.setVisibility(8);
        }
        if (zA) {
            if (this.f656f != null || this.h != null || this.f657g != null) {
                viewFindViewById = this.f654d.findViewById(f.adp_titleDivider);
            } else {
                viewFindViewById = this.f654d.findViewById(f.adp_titleDividerTop);
            }
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
        }
        if (this.f657g != null && this.E != null) {
            this.f657g.setAdapter(this.E);
            if (this.F > -1) {
                this.f657g.setItemChecked(this.F, true);
                this.f657g.setSelection(this.F);
            }
        }
    }

    private boolean a(LinearLayout linearLayout) {
        if (this.D != null) {
            linearLayout.addView(this.D, 0, new LinearLayout.LayoutParams(-1, -2));
            this.f654d.findViewById(f.adp_title_template).setVisibility(8);
            return true;
        }
        boolean z = !TextUtils.isEmpty(this.f655e);
        this.A = (ImageView) this.f654d.findViewById(f.adp_icon);
        if (z) {
            this.B = (TextView) this.f654d.findViewById(f.adp_alertTitle);
            this.B.setText(this.f655e);
            if (this.y > 0) {
                this.A.setImageResource(this.y);
                return true;
            }
            if (this.z != null) {
                this.A.setImageDrawable(this.z);
                return true;
            }
            if (this.y != 0) {
                return true;
            }
            this.B.setPadding(this.A.getPaddingLeft(), this.A.getPaddingTop(), this.A.getPaddingRight(), this.A.getPaddingBottom());
            this.A.setVisibility(8);
            return true;
        }
        this.f654d.findViewById(f.adp_title_template).setVisibility(8);
        this.A.setVisibility(8);
        linearLayout.setVisibility(8);
        return false;
    }

    private void b(LinearLayout linearLayout) {
        this.x = (ScrollView) this.f654d.findViewById(f.adp_scrollView);
        this.x.setFocusable(false);
        this.C = (TextView) this.f654d.findViewById(f.adp_message);
        if (this.C != null) {
            if (this.f656f != null) {
                this.C.setText(this.f656f);
                return;
            }
            this.C.setVisibility(8);
            this.x.removeView(this.C);
            if (this.f657g != null) {
                linearLayout.removeView(this.f654d.findViewById(f.adp_scrollView));
                linearLayout.addView(this.f657g, new LinearLayout.LayoutParams(-1, -1));
                linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
                return;
            }
            linearLayout.setVisibility(8);
        }
    }

    private boolean d() {
        int i;
        this.o = (Button) this.f654d.findViewById(f.adp_button1);
        this.o.setOnClickListener(this.f651a);
        if (TextUtils.isEmpty(this.p)) {
            this.o.setVisibility(8);
            i = 0;
        } else {
            this.o.setText(this.p);
            this.o.setVisibility(0);
            i = 1;
        }
        this.r = (Button) this.f654d.findViewById(f.adp_button2);
        this.r.setOnClickListener(this.f651a);
        if (TextUtils.isEmpty(this.s)) {
            this.r.setVisibility(8);
        } else {
            this.r.setText(this.s);
            this.r.setVisibility(0);
            i |= 2;
        }
        this.u = (Button) this.f654d.findViewById(f.adp_button3);
        this.u.setOnClickListener(this.f651a);
        if (TextUtils.isEmpty(this.v)) {
            this.u.setVisibility(8);
        } else {
            this.u.setText(this.v);
            this.u.setVisibility(0);
            i |= 4;
        }
        return i != 0;
    }

    public class RecycleListView extends ListView {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f658a;

        public RecycleListView(Context context) {
            super(context);
            this.f658a = true;
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f658a = true;
        }

        public RecycleListView(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f658a = true;
        }
    }
}
