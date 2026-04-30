package com.m.a.a;

import android.support.v4.util.LongSparseArray;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: HeaderViewCache.java */
/* JADX INFO: loaded from: classes3.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.m.a.b f3772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LongSparseArray<View> f3773b = new LongSparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.m.a.d.b f3774c;

    public b(com.m.a.b bVar, com.m.a.d.b bVar2) {
        this.f3772a = bVar;
        this.f3774c = bVar2;
    }

    @Override // com.m.a.a.a
    public View a(RecyclerView recyclerView, int i) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        long headerId = this.f3772a.getHeaderId(i);
        View view = this.f3773b.get(headerId);
        if (view == null) {
            RecyclerView.ViewHolder viewHolderOnCreateHeaderViewHolder = this.f3772a.onCreateHeaderViewHolder(recyclerView);
            this.f3772a.onBindHeaderViewHolder(viewHolderOnCreateHeaderViewHolder, i);
            View view2 = viewHolderOnCreateHeaderViewHolder.itemView;
            if (view2.getLayoutParams() == null) {
                view2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            if (this.f3774c.a(recyclerView) == 1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 0);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 0);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824);
            }
            view2.measure(ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, recyclerView.getPaddingLeft() + recyclerView.getPaddingRight(), view2.getLayoutParams().width), ViewGroup.getChildMeasureSpec(iMakeMeasureSpec2, recyclerView.getPaddingTop() + recyclerView.getPaddingBottom(), view2.getLayoutParams().height));
            view2.layout(0, 0, view2.getMeasuredWidth(), view2.getMeasuredHeight());
            this.f3773b.put(headerId, view2);
            return view2;
        }
        return view;
    }

    @Override // com.m.a.a.a
    public void a() {
        this.f3773b.clear();
    }
}
