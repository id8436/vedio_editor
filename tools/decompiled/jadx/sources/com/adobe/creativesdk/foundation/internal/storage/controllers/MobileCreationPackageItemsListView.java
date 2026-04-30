package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.DesignLibrarySpacingItemDecoration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeWaterFallLayoutManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.MobilePackageItemsOneUpData;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.GridLayoutManager;
import com.adobe.creativesdk.foundation.internal.twowayview.widget.TwoWayView;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetInfoUtil;
import com.adobe.creativesdk.foundation.internal.utils.ColumnCountUtil;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class MobileCreationPackageItemsListView extends AssetsRecyclerListView {
    private MobileCreationPackageItemsListViewAdapter _itemsAdapter;
    private int _numColumnsInTwoWay;
    ReusableImageBitmapWorker _reusableImageWorker;
    private AdobeAssetPackagePages _targetPackage;
    private TwoWayView _twowayRecyclerView;
    private DesignLibrarySpacingItemDecoration _uniformItemSpacingItemDecoration;
    private AdobeWaterFallLayoutManager _waterFallLayoutManager;

    public MobileCreationPackageItemsListView(Context context) {
        super(context);
    }

    public void setTargetPackage(AdobeAssetPackagePages adobeAssetPackagePages) {
        this._targetPackage = adobeAssetPackagePages;
    }

    private AdobeAssetPackagePages getTargetPackage() {
        return this._targetPackage;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected View getMainRootView(Context context) {
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.adobe_assets_mobilecreations_items_view, new FrameLayout(context));
        this._swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.adobe_csdk_asset_mobilecreations_itemsview_swipe_refresh_layout);
        this._twowayRecyclerView = (TwoWayView) viewInflate.findViewById(R.id.adobe_csdk_asset_mobilecreations_items_twowayview);
        return viewInflate;
    }

    public RecyclerView.Adapter<RecyclerView.ViewHolder> getAdapter() {
        return this._itemsAdapter;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView getConcreteRecyclerView(Context context) {
        return this._twowayRecyclerView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.ItemDecoration getItemDecoration(RecyclerView recyclerView, Context context) {
        int dimensionPixelSize = getHostActivity().getResources().getDimensionPixelSize(R.dimen.adobe_csdk_library_items_spacing_size);
        this._uniformItemSpacingItemDecoration = new DesignLibrarySpacingItemDecoration(dimensionPixelSize, dimensionPixelSize);
        this._numColumnsInTwoWay = ColumnCountUtil.getColumnCount(getHostActivity());
        this._uniformItemSpacingItemDecoration.setFixedColumn(this._numColumnsInTwoWay);
        return this._uniformItemSpacingItemDecoration;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected SwipeRefreshLayout getSwipeRefreshLayout() {
        return this._swipeRefreshLayout;
    }

    public void setReusableImageWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        this._reusableImageWorker = reusableImageBitmapWorker;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.Adapter<RecyclerView.ViewHolder> createRecyclerViewAdapter(Context context, RecyclerView recyclerView) {
        this._itemsAdapter = new MobileCreationPackageItemsListViewAdapter(context);
        return this._itemsAdapter;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected RecyclerView.LayoutManager getLayoutManager(Context context) {
        this._numColumnsInTwoWay = ColumnCountUtil.getColumnCount(getHostActivity());
        return new GridLayoutManager(TwoWayLayoutManager.Orientation.VERTICAL, this._numColumnsInTwoWay, 1);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleItemClick(View view, int i) {
        if (this._itemsAdapter.getPageAtPosition(i) != null) {
            MobilePackageItemsOneUpData mobilePackageItemsOneUpData = new MobilePackageItemsOneUpData();
            mobilePackageItemsOneUpData._packagePages = this._targetPackage;
            mobilePackageItemsOneUpData._itemsList = this._targetPackage.getPages();
            mobilePackageItemsOneUpData.startIndex = i;
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = this._parentContainer.get();
            if (iAdobeAssetContainerListViewDelegate != null) {
                iAdobeAssetContainerListViewDelegate.handleAssetClickAction(mobilePackageItemsOneUpData);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handleListItemLongClick(View view, int i) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerListView
    protected void handlePopupMenuClick(int i, View view) {
    }

    public class MobileCreationPackageItemsListViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private final Context mContext;

        public MobileCreationPackageItemsListViewAdapter(Context context) {
            this.mContext = context;
        }

        class PackageItemCellViewHolder extends RecyclerView.ViewHolder {
            View _mainCellView;
            ImageView _mainThumbnailImage;
            TextView _modifiedDate;
            AdobeAssetFile _page;

            public PackageItemCellViewHolder(View view) {
                super(view);
                this._mainCellView = view;
                this._mainThumbnailImage = (ImageView) view.findViewById(R.id.adobe_csdk_mobilecreation_item_mainImage);
                this._modifiedDate = (TextView) view.findViewById(R.id.adobe_csdk_mobilecreation_item_modifiedDate);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setImage(BitmapDrawable bitmapDrawable) {
                this._mainThumbnailImage.setVisibility(0);
                this._mainThumbnailImage.setImageDrawable(bitmapDrawable);
            }

            public AdobeAssetFile getPage() {
                return this._page;
            }

            public void setPage(AdobeAssetFile adobeAssetFile) {
                this._page = adobeAssetFile;
            }

            public void setModifiedDate(Date date) {
                if (date != null) {
                    this._modifiedDate.setText(AdobeAssetInfoUtil.getModifiedDate(this.itemView.getContext(), date));
                }
            }

            public void setAssetClickListener(View.OnClickListener onClickListener) {
                this._mainCellView.setOnClickListener(onClickListener);
            }
        }

        protected ArrayList<AdobeAssetFile> getPages() {
            return MobileCreationPackageItemsListView.this._targetPackage.getPages();
        }

        protected int getPackagePagesCount() {
            if (getPages() == null) {
                return 0;
            }
            return getPages().size();
        }

        public AdobeAssetFile getPageAtPosition(int i) {
            ArrayList<AdobeAssetFile> pages = getPages();
            if (pages == null || i < 0 || i >= pages.size()) {
                return null;
            }
            return pages.get(i);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new PackageItemCellViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.adobe_mobilecreation_package_item_cell, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            final PackageItemCellViewHolder packageItemCellViewHolder = (PackageItemCellViewHolder) viewHolder;
            final AdobeAssetFile pageAtPosition = getPageAtPosition(i);
            packageItemCellViewHolder.setPage(pageAtPosition);
            packageItemCellViewHolder.setModifiedDate(pageAtPosition.getModificationDate());
            packageItemCellViewHolder.setAssetClickListener(new AssetsRecyclerListView.AssetClickListener(i));
            if (pageAtPosition != null) {
                BitmapDrawable bitmapDrawableLoadImage = MobileCreationPackageItemsListView.this._reusableImageWorker.loadImage(pageAtPosition.getGUID() + pageAtPosition.getMd5Hash());
                if (bitmapDrawableLoadImage != null) {
                    packageItemCellViewHolder.setImage(bitmapDrawableLoadImage);
                    return;
                }
                pageAtPosition.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, AssetsAbsListView.adjustRenditionSizeBasedOnDeviceScale(AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageItemsListView.MobileCreationPackageItemsListViewAdapter.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        MobileCreationPackageItemsListView.this._reusableImageWorker.loadImageWithData(pageAtPosition.getGUID() + pageAtPosition.getMd5Hash(), bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageItemsListView.MobileCreationPackageItemsListViewAdapter.1.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(BitmapDrawable bitmapDrawable) {
                                if (packageItemCellViewHolder.getPage().equals(pageAtPosition)) {
                                    packageItemCellViewHolder.setImage(bitmapDrawable);
                                } else {
                                    packageItemCellViewHolder.setImage((BitmapDrawable) null);
                                }
                            }
                        }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.MobileCreationPackageItemsListView.MobileCreationPackageItemsListViewAdapter.1.2
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeAssetException adobeAssetException) {
                                packageItemCellViewHolder.setImage((BitmapDrawable) null);
                            }
                        });
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                    }
                });
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getPackagePagesCount();
        }
    }
}
