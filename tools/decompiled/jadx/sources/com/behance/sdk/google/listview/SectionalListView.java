package com.behance.sdk.google.listview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.behance.sdk.google.listview.SectionalBaseAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class SectionalListView extends ListView implements SectionalBaseAdapter.HasMorePagesListener {
    public static final String TAG = SectionalListView.class.getSimpleName();
    private SectionalBaseAdapter adapter;
    boolean footerViewAttached;
    View listFooter;
    private View mHeaderView;
    private int mHeaderViewHeight;
    private boolean mHeaderViewVisible;
    private int mHeaderViewWidth;

    public void setPinnedHeaderView(View view) {
        this.mHeaderView = view;
        if (this.mHeaderView != null) {
            setFadingEdgeLength(0);
        }
        requestLayout();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mHeaderView != null) {
            measureChild(this.mHeaderView, i, i2);
            this.mHeaderViewWidth = getMeasuredWidth();
            this.mHeaderViewHeight = this.mHeaderView.getMeasuredHeight();
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mHeaderView != null) {
            this.mHeaderView.layout(0, 0, this.mHeaderViewWidth, this.mHeaderViewHeight);
            configureHeaderView(getFirstVisiblePosition());
        }
    }

    public void configureHeaderView(int i) {
        int i2;
        int i3 = 255;
        if (this.mHeaderView != null) {
            switch (this.adapter.getPinnedHeaderState(i)) {
                case 0:
                    this.mHeaderViewVisible = false;
                    break;
                case 1:
                    this.adapter.configurePinnedHeader(this.mHeaderView, i, 255);
                    if (this.mHeaderView.getTop() != 0) {
                        this.mHeaderView.layout(0, 0, this.mHeaderViewWidth, this.mHeaderViewHeight);
                    }
                    this.mHeaderViewVisible = true;
                    break;
                case 2:
                    View childAt = getChildAt(0);
                    if (childAt != null) {
                        int bottom = childAt.getBottom();
                        int height = this.mHeaderView.getHeight();
                        if (bottom < height) {
                            i2 = bottom - height;
                            i3 = ((height + i2) * 255) / height;
                        } else {
                            i2 = 0;
                        }
                        this.adapter.configurePinnedHeader(this.mHeaderView, i, i3);
                        if (this.mHeaderView.getTop() != i2) {
                            this.mHeaderView.layout(0, i2, this.mHeaderViewWidth, this.mHeaderViewHeight + i2);
                        }
                        this.mHeaderViewVisible = true;
                    }
                    break;
            }
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mHeaderViewVisible) {
            drawChild(canvas, this.mHeaderView, getDrawingTime());
        }
    }

    public SectionalListView(Context context) {
        super(context);
        this.footerViewAttached = false;
    }

    public SectionalListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.footerViewAttached = false;
    }

    public SectionalListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.footerViewAttached = false;
    }

    public void setLoadingView(View view) {
        this.listFooter = view;
    }

    public View getLoadingView() {
        return this.listFooter;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof SectionalBaseAdapter)) {
            throw new IllegalArgumentException(SectionalListView.class.getSimpleName() + " must use adapter of type " + SectionalBaseAdapter.class.getSimpleName());
        }
        if (this.adapter != null) {
            this.adapter.setHasMorePagesListener(null);
            setOnScrollListener(null);
        }
        this.adapter = (SectionalBaseAdapter) listAdapter;
        ((SectionalBaseAdapter) listAdapter).setHasMorePagesListener(this);
        setOnScrollListener((SectionalBaseAdapter) listAdapter);
        View view = new View(getContext());
        super.addFooterView(view);
        super.setAdapter(listAdapter);
        super.removeFooterView(view);
    }

    @Override // android.widget.ListView, android.widget.AdapterView
    public SectionalBaseAdapter getAdapter() {
        return this.adapter;
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter.HasMorePagesListener
    public void noMorePages() {
        if (this.listFooter != null) {
            removeFooterView(this.listFooter);
        }
        this.footerViewAttached = false;
    }

    @Override // com.behance.sdk.google.listview.SectionalBaseAdapter.HasMorePagesListener
    public void mayHaveMorePages() {
        if (!this.footerViewAttached && this.listFooter != null) {
            addFooterView(this.listFooter);
            this.footerViewAttached = true;
        }
    }

    public boolean isLoadingViewVisible() {
        return this.footerViewAttached;
    }
}
