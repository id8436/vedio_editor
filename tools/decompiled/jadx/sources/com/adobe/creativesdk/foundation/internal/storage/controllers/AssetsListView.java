package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.assetux.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AssetsListView {
    static final double kAdobeStorageInfiniteScrollPercentThreshold = 0.8d;
    protected WeakReference<IAdobeAssetContainerListViewDelegate> _parentContainer;
    protected Context context;

    public abstract InstanceState getInstanceState();

    public abstract View getMainView();

    public abstract void performInitialization(Context context);

    public abstract void refreshDueToDataChange();

    public abstract void refreshDueToNewItemsInsertion();

    public abstract void restoreFromState(InstanceState instanceState);

    public abstract void showLoadingFooter();

    public abstract void startRefreshAnimation();

    public abstract void stopRefreshAnimation();

    /* JADX INFO: Access modifiers changed from: protected */
    public Activity getHostActivity() {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        if (this._parentContainer != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            return iAdobeAssetContainerListViewDelegate.getHostActivity();
        }
        return null;
    }

    public class InstanceState {
        public InstanceState() {
        }
    }

    public AssetsListView(Context context) {
        this.context = context;
    }

    public void setContainerController(IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate) {
        this._parentContainer = new WeakReference<>(iAdobeAssetContainerListViewDelegate);
    }

    public void checkToSetEmptySearchView(boolean z) {
        RelativeLayout relativeLayout = (RelativeLayout) getMainView().findViewById(R.id.adobe_search_empty_layout);
        if (relativeLayout != null) {
            if (z) {
                relativeLayout.setVisibility(0);
            } else {
                relativeLayout.setVisibility(8);
            }
        }
    }

    public class RecyclerViewBottomOffsetDecoration extends RecyclerView.ItemDecoration {
        private int mOffset;

        public RecyclerViewBottomOffsetDecoration(int i) {
            this.mOffset = i;
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            int itemCount = state.getItemCount();
            int childPosition = recyclerView.getChildPosition(view);
            if (itemCount > 0 && childPosition == itemCount - 1) {
                rect.set(0, 0, 0, this.mOffset);
            } else {
                rect.set(0, 0, 0, 0);
            }
        }
    }
}
