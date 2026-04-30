package com.m.a;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.View;

/* JADX INFO: compiled from: StickyRecyclerHeadersDecoration.java */
/* JADX INFO: loaded from: classes3.dex */
public class c extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f3775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray<Rect> f3776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.m.a.a.a f3777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.m.a.d.b f3778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f3779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.m.a.c.a f3780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.m.a.b.a f3781g;

    public c(b bVar) {
        this(bVar, new com.m.a.d.a(), new com.m.a.b.a());
    }

    private c(b bVar, com.m.a.d.b bVar2, com.m.a.b.a aVar) {
        this(bVar, bVar2, aVar, new com.m.a.c.a(bVar2), new com.m.a.a.b(bVar, bVar2));
    }

    private c(b bVar, com.m.a.d.b bVar2, com.m.a.b.a aVar, com.m.a.c.a aVar2, com.m.a.a.a aVar3) {
        this(bVar, aVar2, bVar2, aVar, aVar3, new a(bVar, aVar3, bVar2, aVar));
    }

    private c(b bVar, com.m.a.c.a aVar, com.m.a.d.b bVar2, com.m.a.b.a aVar2, com.m.a.a.a aVar3, a aVar4) {
        this.f3776b = new SparseArray<>();
        this.f3775a = bVar;
        this.f3777c = aVar3;
        this.f3778d = bVar2;
        this.f3780f = aVar;
        this.f3781g = aVar2;
        this.f3779e = aVar4;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition != -1 && this.f3779e.a(childAdapterPosition)) {
            a(rect, a(recyclerView, childAdapterPosition), this.f3778d.a(recyclerView));
        }
    }

    private void a(Rect rect, View view, int i) {
        Rect rectA = this.f3781g.a(view);
        if (i == 1) {
            rect.top = rectA.bottom + view.getHeight() + rectA.top;
        } else {
            rect.left = rectA.right + view.getWidth() + rectA.left;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        boolean zA;
        super.onDrawOver(canvas, recyclerView, state);
        this.f3776b.clear();
        if (recyclerView.getChildCount() > 0 && this.f3775a.getItemCount() > 0) {
            for (int i = 0; i < recyclerView.getChildCount(); i++) {
                View childAt = recyclerView.getChildAt(i);
                int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
                if (childAdapterPosition != -1 && ((zA = this.f3779e.a(childAt, this.f3778d.a(recyclerView), childAdapterPosition)) || this.f3779e.a(childAdapterPosition))) {
                    View viewA = this.f3777c.a(recyclerView, childAdapterPosition);
                    Rect rectA = this.f3779e.a(recyclerView, viewA, childAt, zA);
                    this.f3780f.a(recyclerView, canvas, viewA, rectA);
                    this.f3776b.put(childAdapterPosition, rectA);
                }
            }
        }
    }

    public View a(RecyclerView recyclerView, int i) {
        return this.f3777c.a(recyclerView, i);
    }

    public void a() {
        this.f3777c.a();
    }
}
