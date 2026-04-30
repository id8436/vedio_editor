package com.m.a.c;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.m.a.d.b;

/* JADX INFO: compiled from: HeaderRenderer.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.m.a.b.a f3782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f3783b;

    public a(b bVar) {
        this(bVar, new com.m.a.b.a());
    }

    private a(b bVar, com.m.a.b.a aVar) {
        this.f3783b = bVar;
        this.f3782a = aVar;
    }

    public void a(RecyclerView recyclerView, Canvas canvas, View view, Rect rect) {
        canvas.save();
        if (recyclerView.getLayoutManager().getClipToPadding()) {
            canvas.clipRect(a(recyclerView, view));
        }
        canvas.translate(rect.left, rect.top);
        view.draw(canvas);
        canvas.restore();
    }

    private Rect a(RecyclerView recyclerView, View view) {
        Rect rectA = this.f3782a.a(view);
        return this.f3783b.a(recyclerView) == 1 ? new Rect(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), (recyclerView.getWidth() - recyclerView.getPaddingRight()) - rectA.right, recyclerView.getHeight() - recyclerView.getPaddingBottom()) : new Rect(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getWidth() - recyclerView.getPaddingRight(), (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - rectA.bottom);
    }
}
