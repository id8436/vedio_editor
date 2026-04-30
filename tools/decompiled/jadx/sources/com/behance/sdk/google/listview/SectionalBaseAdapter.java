package com.behance.sdk.google.listview;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.SectionIndexer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SectionalBaseAdapter extends BaseAdapter implements AbsListView.OnScrollListener, SectionIndexer {
    public static final int PINNED_HEADER_GONE = 0;
    public static final int PINNED_HEADER_PUSHED_UP = 2;
    public static final int PINNED_HEADER_VISIBLE = 1;
    public static final String TAG = SectionalBaseAdapter.class.getSimpleName();
    HasMorePagesListener hasMorePagesListener;
    int page = 1;
    int initialPage = 1;
    boolean automaticNextPageLoading = false;

    public interface HasMorePagesListener {
        void mayHaveMorePages();

        void noMorePages();
    }

    protected abstract void bindSectionHeader(View view, int i, boolean z);

    public abstract void configurePinnedHeader(View view, int i, int i2);

    public abstract View getAmazingView(int i, View view, ViewGroup viewGroup);

    @Override // android.widget.SectionIndexer
    public abstract int getPositionForSection(int i);

    @Override // android.widget.SectionIndexer
    public abstract int getSectionForPosition(int i);

    @Override // android.widget.SectionIndexer
    public abstract Object[] getSections();

    protected abstract void onNextPageRequested(int i);

    void setHasMorePagesListener(HasMorePagesListener hasMorePagesListener) {
        this.hasMorePagesListener = hasMorePagesListener;
    }

    public int getPinnedHeaderState(int i) {
        if (i < 0 || getCount() == 0) {
            return 0;
        }
        int positionForSection = getPositionForSection(getSectionForPosition(i) + 1);
        if (positionForSection != -1 && i == positionForSection - 1) {
            return 2;
        }
        return 1;
    }

    public void setInitialPage(int i) {
        this.initialPage = i;
    }

    public void resetPage() {
        this.page = this.initialPage;
    }

    public void nextPage() {
        this.page++;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (absListView instanceof SectionalListView) {
            ((SectionalListView) absListView).configureHeaderView(i);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View amazingView = getAmazingView(i, view, viewGroup);
        if (i == getCount() - 1 && this.automaticNextPageLoading) {
            onNextPageRequested(this.page + 1);
        }
        bindSectionHeader(amazingView, i, getPositionForSection(getSectionForPosition(i)) == i);
        return amazingView;
    }

    public void notifyNoMorePages() {
        this.automaticNextPageLoading = false;
        if (this.hasMorePagesListener != null) {
            this.hasMorePagesListener.noMorePages();
        }
    }

    public void notifyMayHaveMorePages() {
        this.automaticNextPageLoading = true;
        if (this.hasMorePagesListener != null) {
            this.hasMorePagesListener.mayHaveMorePages();
        }
    }
}
