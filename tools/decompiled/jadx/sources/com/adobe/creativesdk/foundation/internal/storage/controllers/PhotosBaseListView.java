package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.GridSpacesItemDecoration;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.ColumnCountUtil;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobePhoto;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAssetRendition;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PhotosBaseListView extends AssetsRecyclerView {
    private AdobePhotoCollectionsDataSource _photoCollectionsDataSource;

    public PhotosBaseListView(Context context) {
        super(context);
    }

    public boolean getSelectionOverallVisibility() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected View getMainRootView(Context context) {
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.adobe_storage_assets_gridview, new FrameLayout(context));
        this._swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.adobe_csdk_gridview_swipe_refresh_layout);
        this._recyclerView = (RecyclerView) viewInflate.findViewById(R.id.adobe_csdk_storage_assetbrowser_StaggeredGridView);
        this._recyclerView.setTag(R.integer.adobe_csdk_AUTOMATION_PHOTOS_ASSET_RECYCLER_VIEW, "PHOTOS_ASSET_RECYCLER_VIEW");
        return viewInflate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView getConcreteRecyclerView(Context context) {
        return this._recyclerView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView.ItemDecoration getItemDecoration(RecyclerView recyclerView, Context context) {
        return new GridSpacesItemDecoration(4, getHostActivity());
    }

    public void showEmptySearch() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected RecyclerView.LayoutManager getLayoutManager(Context context) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(ColumnCountUtil.getColumnCount(getHostActivity()), 1);
        staggeredGridLayoutManager.setGapStrategy(2);
        return staggeredGridLayoutManager;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewListCellDelegate
    public void handleAssetCellSelectionToggle(AssetListCellView assetListCellView) {
        AdobePhoto adobePhoto = (AdobePhoto) this._assetsItemsAdapter.getItem(assetListCellView.getPosition()).originalAsset;
        if (adobePhoto != null && (adobePhoto instanceof AdobePhotoAsset) && AdobeStoragePhotoAssetSelectionState.isMultiSelectModeActive()) {
            AdobePhotoAsset adobePhotoAsset = (AdobePhotoAsset) adobePhoto;
            if (assetListCellView.isMarkedSelected()) {
                assetListCellView.markSelected(false);
                AdobeStoragePhotoAssetSelectionState.removeSelectedAsset(adobePhotoAsset);
            } else {
                assetListCellView.markSelected(true);
                AdobeStoragePhotoAssetSelectionState.addSelectedAsset(adobePhotoAsset);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean loadAssetRendition(AdobeAssetData adobeAssetData, final AdobeAssetFileRenditionType adobeAssetFileRenditionType, final AdobeAssetImageDimensions adobeAssetImageDimensions, final IAdobeGenericRequestCallback<Bitmap, AdobeCSDKException> iAdobeGenericRequestCallback) {
        final String guid = adobeAssetData.guid;
        if (adobeAssetData.originalAsset instanceof AdobePhotoCollection) {
            AdobePhotoCollection adobePhotoCollection = (AdobePhotoCollection) adobeAssetData.originalAsset;
            if (adobePhotoCollection.getCoverAsset() != null) {
                guid = adobePhotoCollection.getCoverAsset().getGUID();
            }
        }
        Bitmap bitmapLoadAssetRenditionFromCache = loadAssetRenditionFromCache(guid, adobeAssetFileRenditionType, adobeAssetImageDimensions);
        if (bitmapLoadAssetRenditionFromCache != null) {
            iAdobeGenericRequestCallback.onCompletion(bitmapLoadAssetRenditionFromCache);
        } else {
            IAdobeGenericRequestCallback<byte[], AdobePhotoException> iAdobeGenericRequestCallback2 = new IAdobeGenericRequestCallback<byte[], AdobePhotoException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.1
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                public void onCancellation() {
                    iAdobeGenericRequestCallback.onCancellation();
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(byte[] bArr) {
                    PhotosBaseListView.this.addAssetRenditionToCache(bArr, guid, adobeAssetFileRenditionType, adobeAssetImageDimensions, new IAdobeGenericCompletionCallback<Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.1.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Bitmap bitmap) {
                            iAdobeGenericRequestCallback.onCompletion(bitmap);
                        }
                    }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.1.2
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeAssetException adobeAssetException) {
                            iAdobeGenericRequestCallback.onError(adobeAssetException);
                        }
                    });
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobePhotoException adobePhotoException) {
                    iAdobeGenericRequestCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            };
            Object obj = adobeAssetData.originalAsset;
            if (obj instanceof AdobePhotoCollection) {
                AdobePhotoCollectionsDataSource.getRenditionForCollection((AdobePhotoCollection) obj, iAdobeGenericRequestCallback2);
            } else if (obj instanceof AdobePhotoAsset) {
                AdobePhotoAsset adobePhotoAsset = (AdobePhotoAsset) obj;
                AdobePhotoAssetRendition adobePhotoAssetRendition = adobePhotoAsset.getRenditions().get(AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x);
                if (adobePhotoAssetRendition != null) {
                    adobePhotoAsset.downloadRendition(adobePhotoAssetRendition, iAdobeGenericRequestCallback2);
                } else {
                    iAdobeGenericRequestCallback.onCompletion(null);
                }
            }
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean isAssetSelected(AdobeAssetData adobeAssetData) {
        if (adobeAssetData.originalAsset instanceof AdobePhotoAsset) {
            return AdobeStoragePhotoAssetSelectionState.containsAsset((AdobePhotoAsset) adobeAssetData.originalAsset);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    void cancelThumbnailRenditionRequestOfAsset(AdobeAssetData adobeAssetData) {
        if (adobeAssetData.originalAsset instanceof AdobePhotoAsset) {
            ((AdobePhotoAsset) adobeAssetData.originalAsset).cancelDownloadRequest();
        }
    }

    public abstract class PhotoListViewBaseAdapter extends AssetsRecyclerView.AssetsListViewBaseAdapter {
        ArrayList<AdobePhoto> _photoCollectionsList;

        protected abstract ArrayList<AdobePhoto> getPhotosList();

        public PhotoListViewBaseAdapter(Context context) {
            super(context);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected int getAssetsCount() {
            if (getPhotosList() == null) {
                return 0;
            }
            return getPhotosList().size();
        }

        protected String getPhotoName(AdobePhoto adobePhoto) {
            if (adobePhoto instanceof AdobePhotoCollection) {
                return ((AdobePhotoCollection) adobePhoto).getName();
            }
            if (!(adobePhoto instanceof AdobePhotoAsset)) {
                return null;
            }
            return ((AdobePhotoAsset) adobePhoto).getName();
        }

        AdobeAssetData getAssetCellDataFromPhoto(AdobePhoto adobePhoto) {
            AdobeAssetData adobeAssetData = new AdobeAssetData();
            adobeAssetData.originalAsset = adobePhoto;
            adobeAssetData.guid = adobePhoto.getGUID();
            adobeAssetData.title = getPhotoName(adobePhoto);
            adobeAssetData.creationDate = adobePhoto.getCreationDate();
            adobeAssetData.modificationDate = adobePhoto.getModificationDate();
            adobeAssetData.optionalMetadata = adobePhoto instanceof AdobePhotoAsset ? ((AdobePhotoAsset) adobePhoto).getMetadata() : null;
            return adobeAssetData;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected AdobeAssetData getAssetItemData(int i) {
            ArrayList<AdobePhoto> photosList = getPhotosList();
            if (photosList == null || i < 0 || i >= photosList.size()) {
                return null;
            }
            return getAssetCellDataFromPhoto(photosList.get(i));
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetSelectable(AdobeAssetData adobeAssetData) {
            return false;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetHasThumbnail(AdobeAssetData adobeAssetData) {
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void invalidateAssetsList() {
            this._photoCollectionsList = null;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            if (!(adobeAssetData.originalAsset instanceof AdobePhotoAsset)) {
                return false;
            }
            String guid = assetListCellView.getGuid();
            String str = adobeAssetData.guid;
            if (guid == null || str == null || !guid.equalsIgnoreCase(str)) {
                return false;
            }
            if (AdobeStoragePhotoAssetSelectionState.isMultiSelectModeActive()) {
                boolean zIsMarkedSelected = assetListCellView.isMarkedSelected();
                boolean zIsAssetSelected = PhotosBaseListView.this.isAssetSelected(adobeAssetData);
                if (zIsMarkedSelected != zIsAssetSelected) {
                    assetListCellView.markSelected(zIsAssetSelected);
                }
            }
            return true;
        }

        protected void handleCellPostCreation(GenericStaggeredCellView genericStaggeredCellView) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected AssetListCellView createNewAssetCellView(ViewGroup viewGroup, int i) {
            GenericStaggeredCellView genericStaggeredCellView = new GenericStaggeredCellView();
            genericStaggeredCellView.initializeFromLayout(PhotosBaseListView.this.getHostActivity().getLayoutInflater(), R.layout.adobe_generic_staggered_assetviewcell, viewGroup);
            handleCellPostCreation(genericStaggeredCellView);
            return genericStaggeredCellView;
        }
    }
}
