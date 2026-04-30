package com.e.a.a.a.b;

import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

/* JADX INFO: compiled from: RecyclerViewDragDropManager.java */
/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Interpolator f1608a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Interpolator f1609b = new DecelerateInterpolator();
    private g A;
    private RecyclerView.ViewHolder B;
    private i C;
    private h D;
    private t E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private int O;
    private j P;
    private q Q;
    private r R;
    private boolean S;
    private boolean T;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RecyclerView f1610c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1613f;
    private c i;
    private NinePatchDrawable j;
    private float k;
    private int l;
    private int m;
    private int n;
    private int o;
    private boolean q;
    private boolean t;
    private int u;
    private int v;
    private Runnable x;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f1611d = f1608a;
    private long p = -1;
    private boolean r = true;
    private Rect w = new Rect();
    private int y = 200;
    private Interpolator z = f1609b;
    private int N = 0;
    private float U = 1.0f;

    @Deprecated
    private long V = -1;
    private Runnable W = new p(this);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RecyclerView.OnItemTouchListener f1614g = new m(this);
    private RecyclerView.OnScrollListener h = new n(this);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private s f1612e = new s(this);
    private int s = ViewConfiguration.getLongPressTimeout();

    public RecyclerView.Adapter a(@NonNull RecyclerView.Adapter adapter) {
        if (this.A != null) {
            throw new IllegalStateException("already have a wrapped adapter");
        }
        this.A = new g(this, adapter);
        return this.A;
    }

    public boolean a() {
        return this.f1614g == null;
    }

    public void a(@NonNull RecyclerView recyclerView) {
        a(recyclerView, (com.e.a.a.a.c.c) null);
    }

    @Deprecated
    public void a(@NonNull RecyclerView recyclerView, @Nullable com.e.a.a.a.c.c cVar) {
        RecyclerView recyclerViewA;
        if (recyclerView == null) {
            throw new IllegalArgumentException("RecyclerView cannot be null");
        }
        if (a()) {
            throw new IllegalStateException("Accessing released object");
        }
        if (this.f1610c != null) {
            throw new IllegalStateException("RecyclerView instance has already been set");
        }
        if (this.A == null || c(recyclerView) != this.A) {
            throw new IllegalStateException("adapter is not set properly");
        }
        if (cVar != null && (recyclerViewA = cVar.a()) != null && recyclerViewA != recyclerView) {
            throw new IllegalArgumentException("The scroll event distributor attached to different RecyclerView instance");
        }
        this.f1610c = recyclerView;
        if (cVar != null) {
            cVar.a(this.h);
            this.f1613f = true;
        } else {
            this.f1610c.addOnScrollListener(this.h);
            this.f1613f = false;
        }
        this.f1610c.addOnItemTouchListener(this.f1614g);
        this.k = this.f1610c.getResources().getDisplayMetrics().density;
        this.l = ViewConfiguration.get(this.f1610c.getContext()).getScaledTouchSlop();
        this.m = (int) ((this.l * 1.5f) + 0.5f);
        this.Q = new q(this);
        if (k()) {
            switch (com.e.a.a.a.d.d.e(this.f1610c)) {
                case 0:
                    this.i = new k(this.f1610c);
                    break;
                case 1:
                    this.i = new u(this.f1610c);
                    break;
            }
            if (this.i != null) {
                this.i.a();
            }
        }
    }

    public void b() {
        d();
        if (this.Q != null) {
            this.Q.a();
            this.Q = null;
        }
        if (this.i != null) {
            this.i.b();
            this.i = null;
        }
        if (this.f1610c != null && this.f1614g != null) {
            this.f1610c.removeOnItemTouchListener(this.f1614g);
        }
        this.f1614g = null;
        if (this.f1610c != null && this.h != null && this.f1613f) {
            this.f1610c.removeOnScrollListener(this.h);
        }
        this.h = null;
        if (this.f1612e != null) {
            this.f1612e.c();
            this.f1612e = null;
        }
        this.A = null;
        this.f1610c = null;
        this.f1611d = null;
        this.f1613f = false;
    }

    public boolean c() {
        return this.C != null && this.x == null;
    }

    public void a(boolean z) {
        this.q = z;
    }

    public void b(boolean z) {
        this.r = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0008 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean a(android.support.v7.widget.RecyclerView r3, android.view.MotionEvent r4) {
        /*
            r2 = this;
            r0 = 1
            int r1 = android.support.v4.view.MotionEventCompat.getActionMasked(r4)
            switch(r1) {
                case 0: goto Le;
                case 1: goto La;
                case 2: goto L18;
                case 3: goto La;
                default: goto L8;
            }
        L8:
            r0 = 0
        L9:
            return r0
        La:
            r2.a(r1, r0)
            goto L8
        Le:
            boolean r0 = r2.c()
            if (r0 != 0) goto L8
            r2.c(r3, r4)
            goto L8
        L18:
            boolean r1 = r2.c()
            if (r1 == 0) goto L22
            r2.e(r3, r4)
            goto L9
        L22:
            boolean r1 = r2.d(r3, r4)
            if (r1 == 0) goto L8
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.e.a.a.a.b.l.a(android.support.v7.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    void b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (c()) {
            switch (actionMasked) {
                case 1:
                case 3:
                    a(actionMasked, true);
                    break;
                case 2:
                    e(recyclerView, motionEvent);
                    break;
            }
        }
    }

    void c(boolean z) {
        if (z) {
            d(true);
        }
    }

    void a(RecyclerView recyclerView, int i, int i2) {
        if (this.t) {
            this.u = i;
            this.v = i2;
        }
    }

    void a(RecyclerView recyclerView, int i) {
        if (i == 1) {
            d(true);
        }
    }

    private boolean c(RecyclerView recyclerView, MotionEvent motionEvent) {
        boolean z = false;
        RecyclerView.ViewHolder viewHolderA = com.e.a.a.a.d.d.a(recyclerView, motionEvent.getX(), motionEvent.getY());
        if (!a(recyclerView, viewHolderA)) {
            return false;
        }
        int iE = com.e.a.a.a.d.d.e(this.f1610c);
        int iD = com.e.a.a.a.d.d.d(this.f1610c);
        int x = (int) (motionEvent.getX() + 0.5f);
        this.F = x;
        this.n = x;
        int y = (int) (motionEvent.getY() + 0.5f);
        this.G = y;
        this.o = y;
        this.p = viewHolderA.getItemId();
        this.S = iE == 0 || (iE == 1 && iD > 1);
        if (iE == 1 || (iE == 0 && iD > 1)) {
            z = true;
        }
        this.T = z;
        if (this.q) {
            this.Q.a(motionEvent, this.s);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MotionEvent motionEvent) {
        if (this.q) {
            a(this.f1610c, motionEvent, false);
        }
    }

    private void a(RecyclerView recyclerView, MotionEvent motionEvent, RecyclerView.ViewHolder viewHolder, j jVar) {
        b(recyclerView, viewHolder);
        this.Q.b();
        this.C = new i(viewHolder, this.F, this.G);
        this.B = viewHolder;
        this.P = jVar;
        this.O = ViewCompat.getOverScrollMode(recyclerView);
        ViewCompat.setOverScrollMode(recyclerView, 2);
        this.F = (int) (motionEvent.getX() + 0.5f);
        this.G = (int) (motionEvent.getY() + 0.5f);
        int i = this.G;
        this.M = i;
        this.K = i;
        this.I = i;
        int i2 = this.F;
        this.L = i2;
        this.J = i2;
        this.H = i2;
        this.N = 0;
        this.f1610c.getParent().requestDisallowInterceptTouchEvent(true);
        i();
        this.A.a(this.C, viewHolder, this.P);
        this.A.onBindViewHolder(viewHolder, viewHolder.getLayoutPosition());
        this.D = new h(this.f1610c, viewHolder, this.P);
        this.D.a(this.j);
        this.D.a(motionEvent, this.C);
        int iA = com.e.a.a.a.d.d.a(this.f1610c);
        if (l() && (iA == 1 || iA == 0)) {
            this.E = new t(this.f1610c, viewHolder, this.P, this.C);
            this.E.b(this.f1611d);
            this.E.a();
            this.E.a(this.D.c(), this.D.b());
        }
        if (this.i != null) {
            this.i.d();
        }
        if (this.R != null) {
            this.R.a(this.A.d());
        }
    }

    public void d() {
        d(false);
    }

    private void d(boolean z) {
        a(3, false);
        if (z) {
            e(false);
        } else if (c() && this.x == null) {
            this.x = new o(this);
            this.f1610c.post(this.x);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(boolean z) {
        int iD;
        int iE = -1;
        if (c()) {
            if (this.x != null) {
                this.f1610c.removeCallbacks(this.x);
                this.x = null;
            }
            if (this.f1610c != null && this.B != null) {
                ViewCompat.setOverScrollMode(this.f1610c, this.O);
            }
            if (this.D != null) {
                this.D.a(this.y);
                this.D.a(this.z);
                this.D.a(true);
            }
            if (this.E != null) {
                this.E.a(this.y);
                this.D.a(this.z);
                this.E.a(true);
            }
            if (this.i != null) {
                this.i.c();
            }
            j();
            if (this.f1610c != null && this.f1610c.getParent() != null) {
                this.f1610c.getParent().requestDisallowInterceptTouchEvent(false);
            }
            if (this.f1610c != null) {
                this.f1610c.invalidate();
            }
            this.P = null;
            this.D = null;
            this.E = null;
            this.B = null;
            this.C = null;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.S = false;
            this.T = false;
            if (this.A != null) {
                iD = this.A.d();
                iE = this.A.e();
                this.A.a(z);
            } else {
                iD = -1;
            }
            if (this.R != null) {
                this.R.a(iD, iE, z);
            }
        }
    }

    private boolean a(int i, boolean z) {
        boolean z2 = i == 1;
        this.Q.b();
        this.n = 0;
        this.o = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.p = -1L;
        this.S = false;
        this.T = false;
        if (z && c()) {
            e(z2);
        }
        return true;
    }

    private boolean d(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.r) {
            return a(recyclerView, motionEvent, true);
        }
        return false;
    }

    private boolean a(RecyclerView recyclerView, MotionEvent motionEvent, boolean z) {
        int iA;
        if (this.C != null) {
            return false;
        }
        int x = (int) (motionEvent.getX() + 0.5f);
        int y = (int) (motionEvent.getY() + 0.5f);
        this.F = x;
        this.G = y;
        if (this.p == -1) {
            return false;
        }
        if (z && ((!this.S || Math.abs(x - this.n) <= this.l) && (!this.T || Math.abs(y - this.o) <= this.l))) {
            return false;
        }
        RecyclerView.ViewHolder viewHolderA = com.e.a.a.a.d.d.a(recyclerView, this.n, this.o);
        if (viewHolderA != null && (iA = com.e.a.a.a.d.d.a(viewHolderA)) != -1) {
            View view = viewHolderA.itemView;
            if (!this.A.a(viewHolderA, iA, x - (((int) (ViewCompat.getTranslationX(view) + 0.5f)) + view.getLeft()), y - (view.getTop() + ((int) (ViewCompat.getTranslationY(view) + 0.5f))))) {
                return false;
            }
            j jVarA = this.A.a(viewHolderA, iA);
            if (jVarA == null) {
                jVarA = new j(0, Math.max(0, this.A.getItemCount() - 1));
            }
            a(jVarA, viewHolderA);
            a(recyclerView, motionEvent, viewHolderA, jVarA);
            return true;
        }
        return false;
    }

    private void a(j jVar, RecyclerView.ViewHolder viewHolder) {
        int iMax = Math.max(0, this.A.getItemCount() - 1);
        if (jVar.a() > jVar.b()) {
            throw new IllegalStateException("Invalid range specified --- start > range (range = " + jVar + ")");
        }
        if (jVar.a() < 0) {
            throw new IllegalStateException("Invalid range specified --- start < 0 (range = " + jVar + ")");
        }
        if (jVar.b() > iMax) {
            throw new IllegalStateException("Invalid range specified --- end >= count (range = " + jVar + ")");
        }
        if (!jVar.a(viewHolder.getAdapterPosition())) {
            throw new IllegalStateException("Invalid range specified --- does not contain drag target item (range = " + jVar + ", position = " + viewHolder.getAdapterPosition() + ")");
        }
    }

    private void e(RecyclerView recyclerView, MotionEvent motionEvent) {
        this.F = (int) (motionEvent.getX() + 0.5f);
        this.G = (int) (motionEvent.getY() + 0.5f);
        this.J = Math.min(this.J, this.F);
        this.K = Math.min(this.K, this.G);
        this.L = Math.max(this.L, this.F);
        this.M = Math.max(this.M, this.G);
        h();
        this.D.a(motionEvent);
        if (this.E != null) {
            this.E.a(this.D.c(), this.D.b());
        }
        b(recyclerView);
    }

    private void h() {
        if (com.e.a.a.a.d.d.e(this.f1610c) == 1) {
            if (this.I - this.K > this.m || this.M - this.G > this.m) {
                this.N |= 1;
            }
            if (this.M - this.I > this.m || this.G - this.K > this.m) {
                this.N |= 2;
                return;
            }
            return;
        }
        if (com.e.a.a.a.d.d.e(this.f1610c) == 0) {
            if (this.H - this.J > this.m || this.L - this.F > this.m) {
                this.N |= 4;
            }
            if (this.L - this.H > this.m || this.F - this.J > this.m) {
                this.N |= 8;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(RecyclerView recyclerView) {
        RecyclerView.ViewHolder viewHolder = this.B;
        RecyclerView.ViewHolder viewHolderA = a(recyclerView, viewHolder, this.C, this.F - this.C.f1603d, this.G - this.C.f1604e, this.P);
        if (viewHolderA != null && viewHolderA != this.B) {
            a(recyclerView, this.A.e(), viewHolder, viewHolderA);
        }
    }

    void e() {
        RecyclerView recyclerView = this.f1610c;
        switch (com.e.a.a.a.d.d.e(recyclerView)) {
            case 0:
                a(recyclerView, true);
                break;
            case 1:
                a(recyclerView, false);
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0169, code lost:
    
        r0 = r15.k * 0.005f;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0186 A[PHI: r0
  0x0186: PHI (r0v12 boolean) = (r0v11 boolean), (r0v58 boolean) binds: [B:11:0x0060, B:16:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(android.support.v7.widget.RecyclerView r16, boolean r17) {
        /*
            Method dump skipped, instruction units count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.e.a.a.a.b.l.a(android.support.v7.widget.RecyclerView, boolean):void");
    }

    private void a(float f2) {
        if (f2 == 0.0f) {
            this.i.c();
        } else if (f2 < 0.0f) {
            this.i.a(f2);
        } else {
            this.i.b(f2);
        }
    }

    private int a(int i) {
        this.v = 0;
        this.t = true;
        this.f1610c.scrollBy(0, i);
        this.t = false;
        return this.v;
    }

    private int b(int i) {
        this.u = 0;
        this.t = true;
        this.f1610c.scrollBy(i, 0);
        this.t = false;
        return this.u;
    }

    RecyclerView f() {
        return this.f1610c;
    }

    private void i() {
        this.f1612e.a();
    }

    private void j() {
        if (this.f1612e != null) {
            this.f1612e.b();
        }
    }

    private void a(RecyclerView recyclerView, int i, @Nullable RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
        Rect rectA = com.e.a.a.a.d.d.a(viewHolder2.itemView, this.w);
        int adapterPosition = viewHolder2.getAdapterPosition();
        int iAbs = Math.abs(i - adapterPosition);
        boolean z = false;
        if (i != -1 && adapterPosition != -1 && recyclerView.getAdapter().getItemId(i) == this.C.f1602c) {
            if (iAbs != 0) {
                if (iAbs == 1 && viewHolder != null) {
                    View view = viewHolder.itemView;
                    View view2 = viewHolder2.itemView;
                    Rect rect = this.C.f1605f;
                    if (this.S) {
                        float fMax = ((Math.max(view.getRight() + rect.right, view2.getRight() + rectA.right) - r6) * 0.5f) + Math.min(view.getLeft() - rect.left, view2.getLeft() - rectA.left);
                        float f2 = (this.F - this.C.f1603d) + (this.C.f1600a * 0.5f);
                        if (adapterPosition < i) {
                            if (f2 < fMax) {
                                z = true;
                            }
                        } else if (f2 > fMax) {
                            z = true;
                        }
                    }
                    if (!z && this.T) {
                        float fMax2 = ((Math.max(view.getBottom() + rect.bottom, view2.getBottom() + rectA.bottom) - r6) * 0.5f) + Math.min(view.getTop() - rect.top, view2.getTop() - rectA.top);
                        float f3 = (this.G - this.C.f1604e) + (this.C.f1601b * 0.5f);
                        if (adapterPosition < i) {
                            if (f3 < fMax2) {
                                z = true;
                            }
                        } else if (f3 > fMax2) {
                            z = true;
                        }
                    }
                } else {
                    z = true;
                }
            }
            if (z) {
                a(recyclerView, viewHolder2, rectA, i, adapterPosition);
            }
        }
    }

    private void a(RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, Rect rect, int i, int i2) {
        View childAt;
        if (this.R != null) {
            this.R.a(i, i2);
        }
        RecyclerView.ViewHolder childViewHolder = null;
        if (recyclerView.getChildCount() > 0 && (childAt = recyclerView.getChildAt(0)) != null) {
            childViewHolder = recyclerView.getChildViewHolder(childAt);
        }
        int adapterPosition = childViewHolder != null ? childViewHolder.getAdapterPosition() : -1;
        this.A.d(i, i2);
        d(recyclerView);
        switch (com.e.a.a.a.d.d.e(recyclerView)) {
            case 0:
                if (i == adapterPosition) {
                    b(-(viewHolder.itemView.getWidth() + rect.left + rect.right));
                } else if (i2 == adapterPosition) {
                    Rect rect2 = this.C.f1605f;
                    b(-(rect2.right + this.C.f1600a + rect2.left));
                }
                break;
            case 1:
                if (i == adapterPosition) {
                    a(-(viewHolder.itemView.getHeight() + rect.top + rect.bottom));
                } else if (i2 == adapterPosition) {
                    Rect rect3 = this.C.f1605f;
                    a(-(rect3.bottom + this.C.f1601b + rect3.top));
                }
                break;
        }
        d(recyclerView);
    }

    private static g c(RecyclerView recyclerView) {
        return (g) com.e.a.a.a.d.e.a(recyclerView.getAdapter(), g.class);
    }

    private boolean a(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        if (!(viewHolder instanceof f)) {
            return false;
        }
        int adapterPosition = viewHolder.getAdapterPosition();
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        return adapterPosition >= 0 && adapterPosition < adapter.getItemCount() && viewHolder.getItemId() == adapter.getItemId(adapterPosition);
    }

    private static boolean k() {
        return Build.VERSION.SDK_INT >= 14;
    }

    private static boolean l() {
        return Build.VERSION.SDK_INT >= 11;
    }

    private static void b(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        RecyclerView.ItemAnimator itemAnimator = recyclerView != null ? recyclerView.getItemAnimator() : null;
        if (itemAnimator != null) {
            itemAnimator.endAnimation(viewHolder);
        }
    }

    private static void d(RecyclerView recyclerView) {
        RecyclerView.ItemAnimator itemAnimator = recyclerView != null ? recyclerView.getItemAnimator() : null;
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
    }

    static RecyclerView.ViewHolder a(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, i iVar, int i, int i2, j jVar) {
        int iMin;
        int iMin2;
        RecyclerView.ViewHolder viewHolderB;
        if (viewHolder == null || (viewHolder.getAdapterPosition() != -1 && viewHolder.getItemId() == iVar.f1602c)) {
            int iA = com.e.a.a.a.d.d.a(recyclerView);
            boolean z = com.e.a.a.a.d.d.a(iA) == 1;
            if (z) {
                iMin2 = Math.min(Math.max(i, recyclerView.getPaddingLeft()), Math.max(0, (recyclerView.getWidth() - recyclerView.getPaddingRight()) - iVar.f1600a));
                iMin = i2;
            } else {
                iMin = Math.min(Math.max(i2, recyclerView.getPaddingTop()), Math.max(0, (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - iVar.f1601b));
                iMin2 = i;
            }
            switch (iA) {
                case 0:
                    viewHolderB = c(recyclerView, viewHolder, iVar, iMin2, iMin, jVar);
                    break;
                case 1:
                    viewHolderB = b(recyclerView, viewHolder, iVar, iMin2, iMin, jVar);
                    break;
                case 2:
                case 3:
                    viewHolderB = a(recyclerView, viewHolder, iVar, iMin2, iMin, jVar, z);
                    break;
                default:
                    viewHolderB = null;
                    break;
            }
        } else {
            viewHolderB = null;
        }
        if (viewHolderB == null || jVar == null || jVar.a(viewHolderB.getAdapterPosition())) {
            return viewHolderB;
        }
        return null;
    }

    private static RecyclerView.ViewHolder a(RecyclerView recyclerView, @Nullable RecyclerView.ViewHolder viewHolder, i iVar, int i, int i2, j jVar, boolean z) {
        RecyclerView.ViewHolder viewHolderA = com.e.a.a.a.d.d.a(recyclerView, i + (iVar.f1600a / 2), i2 + (iVar.f1601b / 2));
        if (viewHolderA != null) {
            if (viewHolderA != viewHolder) {
                return viewHolderA;
            }
        } else {
            int iD = com.e.a.a.a.d.d.d(recyclerView);
            int height = recyclerView.getHeight();
            int width = recyclerView.getWidth();
            int paddingLeft = z ? recyclerView.getPaddingLeft() : 0;
            int paddingTop = !z ? recyclerView.getPaddingTop() : 0;
            int paddingRight = ((width - paddingLeft) - (z ? recyclerView.getPaddingRight() : 0)) / iD;
            int paddingBottom = ((height - paddingTop) - (!z ? recyclerView.getPaddingBottom() : 0)) / iD;
            int i3 = iD - 1;
            while (true) {
                if (i3 < 0) {
                    break;
                }
                RecyclerView.ViewHolder viewHolderA2 = com.e.a.a.a.d.d.a(recyclerView, z ? (paddingRight * i3) + paddingLeft + (paddingRight / 2) : r5, !z ? (paddingBottom * i3) + paddingTop + (paddingBottom / 2) : r1);
                if (viewHolderA2 == null) {
                    i3--;
                } else {
                    int itemCount = recyclerView.getLayoutManager().getItemCount();
                    int adapterPosition = viewHolderA2.getAdapterPosition();
                    if (adapterPosition != -1 && adapterPosition == itemCount - 1 && viewHolderA != viewHolder) {
                        return viewHolderA2;
                    }
                }
            }
        }
        return null;
    }

    private static RecyclerView.ViewHolder b(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, i iVar, int i, int i2, j jVar) {
        if (viewHolder == null) {
            return null;
        }
        int adapterPosition = viewHolder.getAdapterPosition();
        int top = viewHolder.itemView.getTop();
        if (i2 < top) {
            if (adapterPosition <= 0) {
                return null;
            }
            return recyclerView.findViewHolderForAdapterPosition(adapterPosition - 1);
        }
        if (i2 <= top || adapterPosition >= recyclerView.getAdapter().getItemCount() - 1) {
            return null;
        }
        return recyclerView.findViewHolderForAdapterPosition(adapterPosition + 1);
    }

    private static RecyclerView.ViewHolder c(RecyclerView recyclerView, @Nullable RecyclerView.ViewHolder viewHolder, i iVar, int i, int i2, j jVar) {
        if (viewHolder == null) {
            return null;
        }
        int adapterPosition = viewHolder.getAdapterPosition();
        int left = viewHolder.itemView.getLeft();
        if (i < left) {
            if (adapterPosition <= 0) {
                return null;
            }
            return recyclerView.findViewHolderForAdapterPosition(adapterPosition - 1);
        }
        if (i <= left || adapterPosition >= recyclerView.getAdapter().getItemCount() - 1) {
            return null;
        }
        return recyclerView.findViewHolderForAdapterPosition(adapterPosition + 1);
    }

    void g() {
        this.B = null;
        this.D.l();
    }

    void a(RecyclerView.ViewHolder viewHolder) {
        this.B = viewHolder;
        this.D.a(viewHolder);
    }
}
