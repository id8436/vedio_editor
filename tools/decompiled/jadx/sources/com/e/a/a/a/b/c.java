package com.e.a.a.a.b;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v7.widget.RecyclerView;

/* JADX INFO: compiled from: BaseEdgeEffectDecorator.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class c extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RecyclerView f1579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EdgeEffectCompat f1580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EdgeEffectCompat f1581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1584f;

    protected abstract int a(int i);

    public c(RecyclerView recyclerView) {
        this.f1579a = recyclerView;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        boolean zA = this.f1580b != null ? false | a(canvas, recyclerView, this.f1583e, this.f1580b) : false;
        if (this.f1581c != null) {
            zA |= a(canvas, recyclerView, this.f1584f, this.f1581c);
        }
        if (zA) {
            ViewCompat.postInvalidateOnAnimation(recyclerView);
        }
    }

    private static boolean a(Canvas canvas, RecyclerView recyclerView, int i, EdgeEffectCompat edgeEffectCompat) {
        if (edgeEffectCompat.isFinished()) {
            return false;
        }
        int iSave = canvas.save();
        boolean zC = c(recyclerView);
        switch (i) {
            case 0:
                canvas.rotate(-90.0f);
                if (zC) {
                    canvas.translate((-recyclerView.getHeight()) + recyclerView.getPaddingTop(), recyclerView.getPaddingLeft());
                } else {
                    canvas.translate(-recyclerView.getHeight(), 0.0f);
                }
                break;
            case 1:
                if (zC) {
                    canvas.translate(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop());
                }
                break;
            case 2:
                canvas.rotate(90.0f);
                if (zC) {
                    canvas.translate(recyclerView.getPaddingTop(), (-recyclerView.getWidth()) + recyclerView.getPaddingRight());
                } else {
                    canvas.translate(0.0f, -recyclerView.getWidth());
                }
                break;
            case 3:
                canvas.rotate(180.0f);
                if (zC) {
                    canvas.translate((-recyclerView.getWidth()) + recyclerView.getPaddingRight(), (-recyclerView.getHeight()) + recyclerView.getPaddingBottom());
                } else {
                    canvas.translate(-recyclerView.getWidth(), -recyclerView.getHeight());
                }
                break;
        }
        boolean zDraw = edgeEffectCompat.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    public void a() {
        if (!this.f1582d) {
            this.f1583e = a(0);
            this.f1584f = a(1);
            this.f1579a.addItemDecoration(this);
            this.f1582d = true;
        }
    }

    public void b() {
        if (this.f1582d) {
            this.f1579a.removeItemDecoration(this);
        }
        c();
        this.f1579a = null;
        this.f1582d = false;
    }

    public void a(float f2) {
        a(this.f1579a);
        if (this.f1580b.onPull(f2, 0.5f)) {
            ViewCompat.postInvalidateOnAnimation(this.f1579a);
        }
    }

    public void b(float f2) {
        b(this.f1579a);
        if (this.f1581c.onPull(f2, 0.5f)) {
            ViewCompat.postInvalidateOnAnimation(this.f1579a);
        }
    }

    public void c() {
        boolean zOnRelease = this.f1580b != null ? false | this.f1580b.onRelease() : false;
        if (this.f1581c != null) {
            zOnRelease |= this.f1581c.onRelease();
        }
        if (zOnRelease) {
            ViewCompat.postInvalidateOnAnimation(this.f1579a);
        }
    }

    private void a(RecyclerView recyclerView) {
        if (this.f1580b == null) {
            this.f1580b = new EdgeEffectCompat(recyclerView.getContext());
        }
        a(recyclerView, this.f1580b, this.f1583e);
    }

    private void b(RecyclerView recyclerView) {
        if (this.f1581c == null) {
            this.f1581c = new EdgeEffectCompat(recyclerView.getContext());
        }
        a(recyclerView, this.f1581c, this.f1584f);
    }

    private static void a(RecyclerView recyclerView, EdgeEffectCompat edgeEffectCompat, int i) {
        int measuredWidth = recyclerView.getMeasuredWidth();
        int measuredHeight = recyclerView.getMeasuredHeight();
        if (c(recyclerView)) {
            measuredWidth -= recyclerView.getPaddingLeft() + recyclerView.getPaddingRight();
            measuredHeight -= recyclerView.getPaddingTop() + recyclerView.getPaddingBottom();
        }
        int iMax = Math.max(0, measuredWidth);
        int iMax2 = Math.max(0, measuredHeight);
        if (i == 0 || i == 2) {
            iMax = iMax2;
            iMax2 = iMax;
        }
        edgeEffectCompat.setSize(iMax, iMax2);
    }

    private static boolean c(RecyclerView recyclerView) {
        return recyclerView.getLayoutManager().getClipToPadding();
    }

    public void d() {
        if (this.f1582d) {
            this.f1579a.removeItemDecoration(this);
            this.f1579a.addItemDecoration(this);
        }
    }
}
