package com.m.a;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: compiled from: HeaderPositionCalculator.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f3768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.m.a.d.b f3769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.m.a.a.a f3770c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.m.a.b.a f3771d;

    public a(b bVar, com.m.a.a.a aVar, com.m.a.d.b bVar2, com.m.a.b.a aVar2) {
        this.f3768a = bVar;
        this.f3770c = aVar;
        this.f3769b = bVar2;
        this.f3771d = aVar2;
    }

    public boolean a(View view, int i, int i2) {
        int left;
        int i3;
        if (i == 1) {
            left = view.getTop();
            i3 = this.f3771d.a(view).top;
        } else {
            left = view.getLeft();
            i3 = this.f3771d.a(view).left;
        }
        return left <= i3 && this.f3768a.getHeaderId(i2) >= 0;
    }

    public boolean a(int i) {
        if (b(i)) {
            return false;
        }
        long headerId = this.f3768a.getHeaderId(i);
        if (headerId >= 0) {
            return i == 0 || headerId != this.f3768a.getHeaderId(i + (-1));
        }
        return false;
    }

    private boolean b(int i) {
        return i < 0 || i >= this.f3768a.getItemCount();
    }

    public Rect a(RecyclerView recyclerView, View view, View view2, boolean z) {
        Rect rectA = a(recyclerView, view, view2, this.f3769b.a(recyclerView));
        if (z && a(recyclerView, view)) {
            View viewB = b(recyclerView, view);
            a(recyclerView, this.f3769b.a(recyclerView), rectA, view, viewB, this.f3770c.a(recyclerView, recyclerView.getChildAdapterPosition(viewB)));
        }
        return rectA;
    }

    private Rect a(RecyclerView recyclerView, View view, View view2, int i) {
        int top;
        int iMax;
        Rect rectA = this.f3771d.a(view);
        if (i == 1) {
            iMax = rectA.left + view2.getLeft();
            top = Math.max((view2.getTop() - view.getHeight()) - rectA.bottom, rectA.top + a(recyclerView));
        } else {
            top = view2.getTop() + rectA.top;
            iMax = Math.max((view2.getLeft() - view.getWidth()) - rectA.right, rectA.left + b(recyclerView));
        }
        return new Rect(iMax, top, view.getWidth() + iMax, view.getHeight() + top);
    }

    private boolean a(RecyclerView recyclerView, View view) {
        View viewB = b(recyclerView, view);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(viewB);
        if (childAdapterPosition == -1 || childAdapterPosition <= 0 || !a(childAdapterPosition)) {
            return false;
        }
        View viewA = this.f3770c.a(recyclerView, childAdapterPosition);
        Rect rectA = this.f3771d.a(viewA);
        Rect rectA2 = this.f3771d.a(view);
        return this.f3769b.a(recyclerView) == 1 ? ((viewB.getTop() - rectA.bottom) - viewA.getHeight()) - rectA.top < ((recyclerView.getPaddingTop() + view.getBottom()) + rectA2.top) + rectA2.bottom : ((viewB.getLeft() - rectA.right) - viewA.getWidth()) - rectA.left < ((recyclerView.getPaddingLeft() + view.getRight()) + rectA2.left) + rectA2.right;
    }

    private void a(RecyclerView recyclerView, int i, Rect rect, View view, View view2, View view3) {
        Rect rectA = this.f3771d.a(view3);
        Rect rectA2 = this.f3771d.a(view);
        if (i == 1) {
            int iA = rectA2.bottom + a(recyclerView) + rectA2.top;
            int top = ((((view2.getTop() - view3.getHeight()) - rectA.bottom) - rectA.top) - view.getHeight()) - iA;
            if (top < iA) {
                rect.top = top + rect.top;
                return;
            }
            return;
        }
        int iB = rectA2.right + b(recyclerView) + rectA2.left;
        int left = ((((view2.getLeft() - view3.getWidth()) - rectA.right) - rectA.left) - view.getWidth()) - iB;
        if (left < iB) {
            rect.left = left + rect.left;
        }
    }

    private View b(RecyclerView recyclerView, View view) {
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            View childAt = recyclerView.getChildAt(i);
            if (!b(recyclerView, childAt, view, this.f3769b.a(recyclerView))) {
                return childAt;
            }
        }
        return null;
    }

    private boolean b(RecyclerView recyclerView, View view, View view2, int i) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        Rect rectA = this.f3771d.a(view2);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == -1 || this.f3770c.a(recyclerView, childAdapterPosition) != view2) {
            return false;
        }
        if (i == 1) {
            if (view.getTop() - layoutParams.topMargin > rectA.top + view2.getBottom() + rectA.bottom) {
                return false;
            }
        } else {
            if (view.getLeft() - layoutParams.leftMargin > rectA.left + view2.getRight() + rectA.right) {
                return false;
            }
        }
        return true;
    }

    private int a(RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager().getClipToPadding()) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    private int b(RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager().getClipToPadding()) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }
}
