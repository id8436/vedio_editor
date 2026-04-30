package com.e.a.a.a.b;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.animation.Interpolator;

/* JADX INFO: compiled from: SwapTargetItemOperator.java */
/* JADX INFO: loaded from: classes2.dex */
class t extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RecyclerView.ViewHolder f1623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f1624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1626f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Rect f1627g;
    private Rect h;
    private Rect i;
    private boolean j;
    private float k;
    private float l;
    private i m;
    private j n;

    public t(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, j jVar, i iVar) {
        super(recyclerView, viewHolder);
        this.f1627g = new Rect();
        this.h = new Rect();
        this.i = new Rect();
        this.m = iVar;
        this.n = jVar;
        com.e.a.a.a.d.d.a(this.f1572a.getLayoutManager(), this.f1573b.itemView, this.i);
    }

    private static float a(float f2, float f3) {
        float f4 = (0.7f * f2) + (0.3f * f3);
        return Math.abs(f4 - f3) < 0.01f ? f3 : f4;
    }

    public void b(Interpolator interpolator) {
        this.f1624d = interpolator;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        RecyclerView.ViewHolder viewHolder = this.f1573b;
        if (viewHolder != null && viewHolder.getItemId() == this.m.f1602c) {
            RecyclerView.ViewHolder viewHolderA = l.a(this.f1572a, viewHolder, this.m, this.f1625e, this.f1626f, this.n);
            if (this.f1623c != viewHolderA && this.f1623c != null) {
                a(this.f1572a, this.f1623c, 0.0f, 0.0f);
            }
            if (viewHolderA != null) {
                this.k = a(viewHolder, viewHolderA);
                if (this.f1623c != viewHolderA) {
                    this.l = this.k;
                } else {
                    this.l = a(this.l, this.k);
                }
                a(viewHolder, viewHolderA, this.l);
            }
            this.f1623c = viewHolderA;
        }
    }

    private float a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        View view = viewHolder2.itemView;
        int layoutPosition = viewHolder.getLayoutPosition();
        int layoutPosition2 = viewHolder2.getLayoutPosition();
        com.e.a.a.a.d.d.a(this.f1572a.getLayoutManager(), view, this.f1627g);
        com.e.a.a.a.d.d.a(view, this.h);
        Rect rect = this.h;
        Rect rect2 = this.f1627g;
        int height = view.getHeight() + rect.top + rect.bottom + rect2.top + rect2.bottom;
        int width = view.getWidth() + rect.left + rect.right + rect2.left + rect2.right;
        float left = width != 0 ? (viewHolder.itemView.getLeft() - this.f1625e) / width : 0.0f;
        float top = height != 0 ? (viewHolder.itemView.getTop() - this.f1626f) / height : 0.0f;
        if (com.e.a.a.a.d.d.e(this.f1572a) == 1) {
            if (layoutPosition <= layoutPosition2) {
                top += 1.0f;
            }
        } else if (com.e.a.a.a.d.d.e(this.f1572a) == 0) {
            top = layoutPosition > layoutPosition2 ? left : 1.0f + left;
        } else {
            top = 0.0f;
        }
        return Math.min(Math.max(top, 0.0f), 1.0f);
    }

    private void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, float f2) {
        View view = viewHolder2.itemView;
        int layoutPosition = viewHolder.getLayoutPosition();
        int layoutPosition2 = viewHolder2.getLayoutPosition();
        Rect rect = this.m.f1605f;
        Rect rect2 = this.i;
        int i = this.m.f1601b + rect.top + rect.bottom + rect2.top + rect2.bottom;
        int i2 = rect.right + this.m.f1600a + rect.left + rect2.left + rect2.right;
        if (this.f1624d != null) {
            f2 = this.f1624d.getInterpolation(f2);
        }
        switch (com.e.a.a.a.d.d.e(this.f1572a)) {
            case 0:
                if (layoutPosition > layoutPosition2) {
                    ViewCompat.setTranslationX(view, i2 * f2);
                } else {
                    ViewCompat.setTranslationX(view, (f2 - 1.0f) * i2);
                }
                break;
            case 1:
                if (layoutPosition > layoutPosition2) {
                    ViewCompat.setTranslationY(view, i * f2);
                } else {
                    ViewCompat.setTranslationY(view, (f2 - 1.0f) * i);
                }
                break;
        }
    }

    public void a() {
        if (!this.j) {
            this.f1572a.addItemDecoration(this, 0);
            this.j = true;
        }
    }

    public void a(boolean z) {
        if (this.j) {
            this.f1572a.removeItemDecoration(this);
        }
        RecyclerView.ItemAnimator itemAnimator = this.f1572a.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        this.f1572a.stopScroll();
        if (this.f1623c != null) {
            a(this.f1573b, this.f1623c, this.l);
            a(this.f1623c.itemView, z);
            this.f1623c = null;
        }
        this.n = null;
        this.f1573b = null;
        this.f1625e = 0;
        this.f1626f = 0;
        this.l = 0.0f;
        this.k = 0.0f;
        this.j = false;
        this.m = null;
    }

    public void a(int i, int i2) {
        this.f1625e = i;
        this.f1626f = i2;
    }
}
