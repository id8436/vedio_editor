package com.e.a.a.a.b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: DraggingItemDecorator.java */
/* JADX INFO: loaded from: classes2.dex */
class h extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1595c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Bitmap f1597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1599g;
    private int h;
    private int i;
    private int j;
    private int k;
    private NinePatchDrawable l;
    private Rect m;
    private boolean n;
    private boolean o;
    private j p;
    private int q;
    private i r;

    public h(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, j jVar) {
        super(recyclerView, viewHolder);
        this.m = new Rect();
        this.p = jVar;
    }

    private static int a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    private static View a(RecyclerView recyclerView, j jVar, int i, int i2) {
        int layoutPosition;
        if (i == -1 || i2 == -1) {
            return null;
        }
        int childCount = recyclerView.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = recyclerView.getChildAt(i3);
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(childAt);
            if (childViewHolder != null && (layoutPosition = childViewHolder.getLayoutPosition()) >= i && layoutPosition <= i2 && jVar.a(layoutPosition)) {
                return childAt;
            }
        }
        return null;
    }

    private static View b(RecyclerView recyclerView, j jVar, int i, int i2) {
        int layoutPosition;
        if (i == -1 || i2 == -1) {
            return null;
        }
        for (int childCount = recyclerView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = recyclerView.getChildAt(childCount);
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(childAt);
            if (childViewHolder != null && (layoutPosition = childViewHolder.getLayoutPosition()) >= i && layoutPosition <= i2 && jVar.a(layoutPosition)) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.f1597e != null) {
            canvas.drawBitmap(this.f1597e, (this.f1595c + this.r.f1605f.left) - this.m.left, this.f1596d - this.m.top, (Paint) null);
        }
    }

    public void a(MotionEvent motionEvent, i iVar) {
        if (!this.n) {
            View view = this.f1573b.itemView;
            this.r = iVar;
            this.f1597e = a(view);
            this.f1598f = this.f1572a.getPaddingLeft();
            this.h = this.f1572a.getPaddingTop();
            this.q = com.e.a.a.a.d.d.e(this.f1572a);
            view.setVisibility(4);
            a(motionEvent);
            this.f1572a.addItemDecoration(this);
            this.n = true;
        }
    }

    public void a(boolean z) {
        if (this.n) {
            this.f1572a.removeItemDecoration(this);
        }
        RecyclerView.ItemAnimator itemAnimator = this.f1572a.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        this.f1572a.stopScroll();
        a(this.f1595c, this.f1596d);
        if (this.f1573b != null) {
            a(this.f1573b.itemView, z);
        }
        if (this.f1573b != null) {
            this.f1573b.itemView.setVisibility(0);
        }
        this.f1573b = null;
        if (this.f1597e != null) {
            this.f1597e.recycle();
            this.f1597e = null;
        }
        this.p = null;
        this.f1595c = 0;
        this.f1596d = 0;
        this.f1598f = 0;
        this.f1599g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.n = false;
    }

    public void a(MotionEvent motionEvent) {
        this.j = (int) (motionEvent.getX() + 0.5f);
        this.k = (int) (motionEvent.getY() + 0.5f);
        a();
    }

    public void a() {
        m();
        a(this.f1595c, this.f1596d);
        ViewCompat.postInvalidateOnAnimation(this.f1572a);
    }

    public void a(NinePatchDrawable ninePatchDrawable) {
        this.l = ninePatchDrawable;
        if (this.l != null) {
            this.l.getPadding(this.m);
        }
    }

    public int b() {
        return this.f1596d;
    }

    public int c() {
        return this.f1595c;
    }

    private void m() {
        RecyclerView recyclerView = this.f1572a;
        if (recyclerView.getChildCount() > 0) {
            this.f1598f = 0;
            this.f1599g = recyclerView.getWidth() - this.r.f1600a;
            this.h = 0;
            this.i = recyclerView.getHeight() - this.r.f1601b;
            switch (this.q) {
                case 0:
                    this.h += recyclerView.getPaddingTop();
                    this.i -= recyclerView.getPaddingBottom();
                    break;
                case 1:
                    this.f1598f += recyclerView.getPaddingLeft();
                    this.f1599g -= recyclerView.getPaddingRight();
                    break;
            }
            this.f1599g = Math.max(this.f1598f, this.f1599g);
            this.i = Math.max(this.h, this.i);
            if (!this.o) {
                int iA = com.e.a.a.a.d.d.a(recyclerView, true);
                int iB = com.e.a.a.a.d.d.b(recyclerView, true);
                View viewA = a(recyclerView, this.p, iA, iB);
                View viewB = b(recyclerView, this.p, iA, iB);
                switch (this.q) {
                    case 0:
                        if (viewA != null) {
                            this.f1598f = Math.min(this.f1598f, viewA.getLeft());
                        }
                        if (viewB != null) {
                            this.f1599g = Math.min(this.f1599g, viewB.getLeft());
                        }
                        break;
                    case 1:
                        if (viewA != null) {
                            this.h = Math.min(this.i, viewA.getTop());
                        }
                        if (viewB != null) {
                            this.i = Math.min(this.i, viewB.getTop());
                        }
                        break;
                }
            }
        } else {
            int paddingLeft = recyclerView.getPaddingLeft();
            this.f1598f = paddingLeft;
            this.f1599g = paddingLeft;
            int paddingTop = recyclerView.getPaddingTop();
            this.h = paddingTop;
            this.i = paddingTop;
        }
        this.f1595c = this.j - this.r.f1603d;
        this.f1596d = this.k - this.r.f1604e;
        this.f1595c = a(this.f1595c, this.f1598f, this.f1599g);
        this.f1596d = a(this.f1596d, this.h, this.i);
    }

    public boolean d() {
        return this.f1596d == this.h;
    }

    public boolean e() {
        return this.f1596d == this.i;
    }

    public boolean f() {
        return this.f1595c == this.f1598f;
    }

    public boolean g() {
        return this.f1595c == this.f1599g;
    }

    private Bitmap a(View view) {
        int width = view.getWidth() + this.m.left + this.m.right;
        int height = view.getHeight() + this.m.top + this.m.bottom;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int iSave = canvas.save(3);
        canvas.clipRect(this.m.left, this.m.top, width - this.m.right, height - this.m.bottom);
        canvas.translate(this.m.left, this.m.top);
        canvas.scale(0.84f, 0.84f, width / 2, height / 2);
        canvas.rotate(12.5f, width / 2, height / 2);
        view.draw(canvas);
        canvas.restoreToCount(iSave);
        return bitmapCreateBitmap;
    }

    private void a(float f2, int i) {
        if (this.f1573b != null) {
            a(this.f1572a, this.f1573b, f2 - this.f1573b.itemView.getLeft(), i - this.f1573b.itemView.getTop());
        }
    }

    public void b(boolean z) {
        if (this.o != z) {
            this.o = z;
        }
    }

    public int h() {
        return this.f1596d;
    }

    public int i() {
        return this.f1596d + this.r.f1601b;
    }

    public int j() {
        return this.f1595c;
    }

    public int k() {
        return this.f1595c + this.r.f1600a;
    }

    public void l() {
        if (this.f1573b != null) {
            ViewCompat.setTranslationX(this.f1573b.itemView, 0.0f);
            ViewCompat.setTranslationY(this.f1573b.itemView, 0.0f);
            this.f1573b.itemView.setVisibility(0);
        }
        this.f1573b = null;
    }

    public void a(RecyclerView.ViewHolder viewHolder) {
        if (this.f1573b != null) {
            throw new IllegalStateException("A new view holder is attempt to be assigned before invalidating the older one");
        }
        this.f1573b = viewHolder;
        viewHolder.itemView.setVisibility(4);
    }
}
