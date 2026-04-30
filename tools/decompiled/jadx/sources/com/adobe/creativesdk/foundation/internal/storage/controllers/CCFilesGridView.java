package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetCellViews;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.GridSpacesItemDecoration;
import com.adobe.creativesdk.foundation.internal.utils.ColumnCountUtil;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;

/* JADX INFO: loaded from: classes2.dex */
public class CCFilesGridView extends CCFilesListView {
    private static final String T = CCFilesGridView.class.getSimpleName();
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    private RecyclerView _staggeredGridView;
    private boolean isMoveFragment;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView
    protected CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter createUploadCombinedAdapter() {
        return new LocalUploadAssetsCCFilesCombinedGridAdapter(getHostActivity());
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected Bitmap loadAssetRenditionFromCache(String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        BitmapDrawable bitmapDrawableLoadImage = this._reusableBitmapCacheWorker.loadImage(str + adobeAssetFileRenditionType.ordinal() + adobeAssetImageDimensions.height + adobeAssetImageDimensions.width);
        if (bitmapDrawableLoadImage == null) {
            return null;
        }
        return bitmapDrawableLoadImage.getBitmap();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean addAssetRenditionToCache(byte[] bArr, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, final IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        this._reusableBitmapCacheWorker.loadImageWithData(str + adobeAssetFileRenditionType.ordinal() + adobeAssetImageDimensions.height + adobeAssetImageDimensions.width, bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(BitmapDrawable bitmapDrawable) {
                iAdobeGenericCompletionCallback.onCompletion(bitmapDrawable.getBitmap());
            }
        }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                iAdobeGenericErrorCallback.onError(adobeAssetException);
            }
        });
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean addAssetRenditionToCache(Bitmap bitmap, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        this._reusableBitmapCacheWorker.loadImageWithBitmap(str + adobeAssetFileRenditionType.ordinal() + adobeAssetImageDimensions.height + adobeAssetImageDimensions.width, bitmap);
        return true;
    }

    public CCFilesGridView(Context context) {
        super(context);
        this.isMoveFragment = false;
    }

    public void setReusableImageWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        this._reusableBitmapCacheWorker = reusableImageBitmapWorker;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected View getMainRootView(Context context) {
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.adobe_storage_assets_gridview, new FrameLayout(context));
        this._swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.adobe_csdk_gridview_swipe_refresh_layout);
        this._staggeredGridView = (RecyclerView) viewInflate.findViewById(R.id.adobe_csdk_storage_assetbrowser_StaggeredGridView);
        this._staggeredGridView.setTag(R.integer.adobe_csdk_AUTOMATION_FILES_ASSET_RECYCLER_VIEW, "FILES_ASSET_RECYCLER_VIEW");
        return viewInflate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToDataChange() {
        this._ccfilesDataSource.getAdobeStorageSortIndexCollation().createSectionDataFromMaster(this._ccfilesDataSource.assetsToDisplay());
        super.refreshDueToDataChange();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void performInitialization(Context context) {
        super.performInitialization(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView getConcreteRecyclerView(Context context) {
        return this._staggeredGridView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected AssetsRecyclerView.AssetsListViewBaseAdapter createAssetItemsAdapter(Context context) {
        return new CCFilesAssetsStaggeredGridAdapter(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView.ItemDecoration getItemDecoration(RecyclerView recyclerView, Context context) {
        return new GridSpacesItemDecoration(4, getHostActivity());
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView.LayoutManager getLayoutManager(Context context) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(ColumnCountUtil.getColumnCount(getHostActivity()), 1);
        staggeredGridLayoutManager.setGapStrategy(2);
        return staggeredGridLayoutManager;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void resetFolderView(AssetListCellView assetListCellView, boolean z, boolean z2, boolean z3) {
        ((GridFolderCellView) assetListCellView).resetFolderView(z, z2, z3, this.isMoveFragment);
    }

    public class CCFilesAssetsStaggeredGridAdapter extends CCFilesListView.CCFilesAssetsListViewBaseAdapter {
        public CCFilesAssetsStaggeredGridAdapter(Context context) {
            super(context);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFolderCellView(ViewGroup viewGroup) {
            GridFolderCellView gridFolderCellView = new GridFolderCellView();
            gridFolderCellView.initializeFromLayout(CCFilesGridView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_assetview_assetsgrid_folderviewcell, viewGroup);
            gridFolderCellView.setFolderMetrics(true);
            return gridFolderCellView;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected void setCCFolderViewAsShared(AssetListCellView assetListCellView, AdobeAssetFolder adobeAssetFolder, boolean z, boolean z2) {
            ((GridFolderCellView) assetListCellView).setSharedFolder(z, z2);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFileCellView(ViewGroup viewGroup) {
            GenericStaggeredCellView genericStaggeredCellView = new GenericStaggeredCellView();
            genericStaggeredCellView.initializeFromLayout(CCFilesGridView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_generic_staggered_assetviewcell, viewGroup);
            return genericStaggeredCellView;
        }
    }

    public class LocalUploadAssetsCCFilesCombinedGridAdapter extends CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter {
        public LocalUploadAssetsCCFilesCombinedGridAdapter(Context context) {
            super(context);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter
        protected UploadAssetCellView createUploadAssetCellView(ViewGroup viewGroup) {
            AdobeUploadAssetCellViews.UploadAssetGridCellView uploadAssetGridCellView = new AdobeUploadAssetCellViews.UploadAssetGridCellView();
            uploadAssetGridCellView.initializeFromLayout(CCFilesGridView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_generic_staggered_assetviewcell, viewGroup);
            return uploadAssetGridCellView;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemClick(int i) {
        Log.e(T, "handleListItemClick");
        AdobeAssetData item = this._assetsItemsAdapter.getItem(i);
        Object obj = item != null ? item.originalAsset : null;
        if (!(obj instanceof AdobeAssetFolder) || !((AdobeAssetFolder) obj).isReadOnly() || !this.isMoveFragment) {
            super.handleListItemClick(i);
        }
    }

    public void setMoveOperation(boolean z) {
        this.isMoveFragment = z;
    }
}
