package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AssetsRecyclerListView extends AssetsListView {
    protected RecyclerView.ItemDecoration _itemDecoration;
    protected RecyclerView.Adapter<RecyclerView.ViewHolder> _itemsAdapter;
    protected RecyclerView.LayoutManager _layoutManager;
    private View _mainRootView;
    private RecyclerView.OnScrollListener _onScrollListener;
    private RecyclerView _recyclerView;
    protected SwipeRefreshLayout _swipeRefreshLayout;
    protected AssetContextMenuClickListener contextMenuClickListener;

    protected abstract RecyclerView.Adapter<RecyclerView.ViewHolder> createRecyclerViewAdapter(Context context, RecyclerView recyclerView);

    protected abstract RecyclerView getConcreteRecyclerView(Context context);

    protected abstract RecyclerView.ItemDecoration getItemDecoration(RecyclerView recyclerView, Context context);

    protected abstract RecyclerView.LayoutManager getLayoutManager(Context context);

    protected abstract View getMainRootView(Context context);

    protected abstract SwipeRefreshLayout getSwipeRefreshLayout();

    protected abstract void handleItemClick(View view, int i);

    protected abstract void handleListItemLongClick(View view, int i);

    protected abstract void handlePopupMenuClick(int i, View view);

    protected int getFirstVisiblePosition() {
        if (this._recyclerView.getChildCount() == 0) {
            return 0;
        }
        return this._recyclerView.getChildPosition(this._recyclerView.getChildAt(0));
    }

    protected int getLastVisiblePosition() {
        int childCount = this._recyclerView.getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return this._recyclerView.getChildPosition(this._recyclerView.getChildAt(childCount - 1));
    }

    void handleScrollOffsetChange() {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        int itemCount = this._itemsAdapter.getItemCount();
        if (itemCount != 0) {
            int firstVisiblePosition = getFirstVisiblePosition();
            int lastVisiblePosition = getLastVisiblePosition();
            if (itemCount - 1 != lastVisiblePosition - firstVisiblePosition && ((double) lastVisiblePosition) / ((double) (itemCount - (lastVisiblePosition - firstVisiblePosition))) > 0.8d && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
                iAdobeAssetContainerListViewDelegate.loadMoreItemsFromDataSource();
            }
        }
    }

    public AssetsRecyclerListView(Context context) {
        super(context);
        this._onScrollListener = new RecyclerView.OnScrollListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView.1
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 0) {
                    AssetsRecyclerListView.this.handleScrollOffsetChange();
                }
            }
        };
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToDataChange() {
        this._itemsAdapter.notifyDataSetChanged();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToNewItemsInsertion() {
        this._itemsAdapter.notifyDataSetChanged();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void startRefreshAnimation() {
        this._swipeRefreshLayout.setRefreshing(true);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void stopRefreshAnimation() {
        this._swipeRefreshLayout.setRefreshing(false);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void showLoadingFooter() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public AssetsListView.InstanceState getInstanceState() {
        if (this._layoutManager == null) {
            return null;
        }
        RecyclerViewInstanceState recyclerViewInstanceState = new RecyclerViewInstanceState();
        recyclerViewInstanceState._layoutManagerState = this._layoutManager.onSaveInstanceState();
        return recyclerViewInstanceState;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void restoreFromState(AssetsListView.InstanceState instanceState) {
        if (instanceState != null && this._layoutManager != null && (instanceState instanceof RecyclerViewInstanceState)) {
            this._layoutManager.onRestoreInstanceState(((RecyclerViewInstanceState) instanceState)._layoutManagerState);
        }
    }

    protected void attachScrollListenerToListView() {
        this._recyclerView.setOnScrollListener(this._onScrollListener);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public View getMainView() {
        return this._mainRootView;
    }

    protected boolean recyclerViewHasFixedItemSize() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void performInitialization(Context context) {
        this._mainRootView = getMainRootView(context);
        this._recyclerView = getConcreteRecyclerView(context);
        this._recyclerView.setHasFixedSize(recyclerViewHasFixedItemSize());
        this._itemDecoration = getItemDecoration(this._recyclerView, context);
        this._recyclerView.addItemDecoration(this._itemDecoration);
        this._layoutManager = getLayoutManager(context);
        this._recyclerView.setLayoutManager(this._layoutManager);
        this._swipeRefreshLayout = getSwipeRefreshLayout();
        this._swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView.2
            @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = null;
                if (AssetsRecyclerListView.this._parentContainer != null) {
                    iAdobeAssetContainerListViewDelegate = AssetsRecyclerListView.this._parentContainer.get();
                }
                if (iAdobeAssetContainerListViewDelegate != null) {
                    if (AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
                        AssetsRecyclerListView.this.startRefreshAnimation();
                        iAdobeAssetContainerListViewDelegate.reloadAssetItemsFromDataSourceDueToSwipeRefresh();
                    } else {
                        AssetsRecyclerListView.this.stopRefreshAnimation();
                    }
                }
            }
        });
        this._recyclerView.addItemDecoration(new AssetsListView.RecyclerViewBottomOffsetDecoration((int) context.getResources().getDimension(R.dimen.adobe_csdk_recylerview_padding_bottom_offset)));
        int color = Color.parseColor("#2098f5");
        int color2 = Color.parseColor("#f5f9fa");
        this._swipeRefreshLayout.setColorSchemeColors(color, color2, color, color2);
        attachScrollListenerToListView();
        this._itemsAdapter = createRecyclerViewAdapter(context, this._recyclerView);
        this._recyclerView.setAdapter(this._itemsAdapter);
    }

    public void refreshLayoutDueToOrientationChange() {
        final int firstVisiblePosition = this._layoutManager != null ? ((TwoWayLayoutManager) this._layoutManager).getFirstVisiblePosition() : -1;
        if (this._itemDecoration != null) {
            this._recyclerView.removeItemDecoration(this._itemDecoration);
        }
        this._layoutManager = getLayoutManager(getHostActivity());
        this._recyclerView.setLayoutManager(this._layoutManager);
        this._itemDecoration = getItemDecoration(this._recyclerView, null);
        this._recyclerView.addItemDecoration(this._itemDecoration);
        refreshDueToDataChange();
        if (firstVisiblePosition != -1) {
            new Handler().post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView.3
                @Override // java.lang.Runnable
                public void run() {
                    AssetsRecyclerListView.this._layoutManager.scrollToPosition(firstVisiblePosition);
                }
            });
        }
    }

    public class AssetContextMenuClickListener implements View.OnClickListener {
        private int positionClicked;

        public AssetContextMenuClickListener(int i) {
            this.positionClicked = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AssetsRecyclerListView.this.handlePopupMenuClick(this.positionClicked, view);
        }
    }

    public class AssetClickListener implements View.OnClickListener {
        private int positionClicked;

        public AssetClickListener(int i) {
            this.positionClicked = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AssetsRecyclerListView.this.handleItemClick(view, this.positionClicked);
        }
    }

    public class RecyclerViewInstanceState extends AssetsListView.InstanceState {
        public Parcelable _layoutManagerState;

        protected RecyclerViewInstanceState() {
            super();
        }
    }
}
