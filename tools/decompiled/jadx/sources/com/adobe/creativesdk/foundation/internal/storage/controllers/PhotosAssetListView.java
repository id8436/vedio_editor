package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.media.ThumbnailUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobePhoto;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class PhotosAssetListView extends PhotosBaseListView {
    private int PHOTO_UPLOAD_TYPE;
    private AdobePhotoAssetsDataSource _photoAssetsDataSource;
    private PhotosAssetsListViewBaseAdapter _photoItemsAdapter;
    private PhotoUploadObservers _photoUploadObservers;
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    private AdobeUploadSession<AdobePhotoCollection> _uploadSession;
    private ArrayList<AdobeUploadAssetData> _uploadingPhotoArray;

    /* JADX INFO: Access modifiers changed from: private */
    public int getUploadingPhotosSize() {
        if (this._uploadingPhotoArray == null) {
            return 0;
        }
        return this._uploadingPhotoArray.size();
    }

    public void set_photoAssetsDataSource(AdobePhotoAssetsDataSource adobePhotoAssetsDataSource) {
        this._photoAssetsDataSource = adobePhotoAssetsDataSource;
    }

    public PhotosAssetListView(Context context) {
        super(context);
        this._photoUploadObservers = new PhotoUploadObservers();
        this.PHOTO_UPLOAD_TYPE = 22;
    }

    public void setReusableImageWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        this._reusableBitmapCacheWorker = reusableImageBitmapWorker;
    }

    public void searchInPhotoAssets(String str) {
        this._photoItemsAdapter.isSearch = true;
        this._photoItemsAdapter.query = str;
        refreshDueToDataChange();
        showEmptySearch();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewListCellDelegate
    public boolean getSelectionOverallVisibility() {
        return AdobeStoragePhotoAssetSelectionState.isMultiSelectModeActive();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView
    public void showEmptySearch() {
        checkToSetEmptySearchView(this._photoItemsAdapter.getAssetsCount() <= 0);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected Bitmap loadAssetRenditionFromCache(String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        BitmapDrawable bitmapDrawableLoadImage = this._reusableBitmapCacheWorker.loadImage(str);
        if (bitmapDrawableLoadImage == null) {
            return null;
        }
        return bitmapDrawableLoadImage.getBitmap();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean addAssetRenditionToCache(byte[] bArr, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, final IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        this._reusableBitmapCacheWorker.loadImageWithData(str, bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetListView.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(BitmapDrawable bitmapDrawable) {
                iAdobeGenericCompletionCallback.onCompletion(bitmapDrawable.getBitmap());
            }
        }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetListView.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                iAdobeGenericErrorCallback.onError(adobeAssetException);
            }
        });
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean addAssetRenditionToCache(Bitmap bitmap, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        this._reusableBitmapCacheWorker.loadImageWithBitmap(str, bitmap);
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected AssetsRecyclerView.AssetsListViewBaseAdapter createAssetItemsAdapter(Context context) {
        this._photoItemsAdapter = new PhotosAssetsListViewBaseAdapter(getHostActivity());
        return this._photoItemsAdapter;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemClick(int i) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeAssetData assetItemData = this._assetsItemsAdapter.getAssetItemData(i);
        if (assetItemData != null && this._uploadSession == null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handleAssetClickAction(assetItemData.originalAsset);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemLongClick(int i) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeAssetData assetItemData = this._assetsItemsAdapter.getAssetItemData(i);
        if (assetItemData != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handleLongClickOnAsset(assetItemData.originalAsset);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handlePopupMenuClick(int i, View view) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeAssetData assetItemData = this._assetsItemsAdapter.getAssetItemData(i);
        if (assetItemData != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handlePopupMenuClick(assetItemData.originalAsset, view);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToDataChange() {
        this._photoItemsAdapter.invalidateAssetsList();
        this._photoItemsAdapter.notifyDataSetChanged();
    }

    public class PhotosAssetsListViewBaseAdapter extends PhotosBaseListView.PhotoListViewBaseAdapter {
        boolean isSearch;
        String query;

        public PhotosAssetsListViewBaseAdapter(Context context) {
            super(context);
            this.isSearch = false;
            this.query = "";
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.PhotoListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetSelectable(AdobeAssetData adobeAssetData) {
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.PhotoListViewBaseAdapter
        protected ArrayList<AdobePhoto> getPhotosList() {
            ArrayList<AdobePhotoAsset> arrayListSearchPhotoAssets = this.isSearch ? PhotosAssetListView.this._photoAssetsDataSource.searchPhotoAssets(this.query) : PhotosAssetListView.this._photoAssetsDataSource.getAssets();
            if (this._photoCollectionsList == null && PhotosAssetListView.this._photoAssetsDataSource != null && arrayListSearchPhotoAssets != null) {
                this._photoCollectionsList = new ArrayList<>(arrayListSearchPhotoAssets);
            }
            return this._photoCollectionsList;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.PhotoListViewBaseAdapter
        protected void handleCellPostCreation(GenericStaggeredCellView genericStaggeredCellView) {
            genericStaggeredCellView.forceHideBottomInfo();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.PhotoListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected int getAssetsCount() {
            if (getPhotosList() != null) {
                return 0 + getPhotosList().size() + PhotosAssetListView.this.getUploadingPhotosSize();
            }
            return 0;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i < PhotosAssetListView.this.getUploadingPhotosSize() ? PhotosAssetListView.this.PHOTO_UPLOAD_TYPE : super.getItemViewType(i - PhotosAssetListView.this.getUploadingPhotosSize());
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter, android.support.v7.widget.RecyclerView.Adapter
        public AssetsRecyclerView.CellViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return i == PhotosAssetListView.this.PHOTO_UPLOAD_TYPE ? UploadingPhotoCellHolder.createInstance(LayoutInflater.from(PhotosAssetListView.this.context), viewGroup) : super.onCreateViewHolder(viewGroup, i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter, android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(AssetsRecyclerView.CellViewHolder cellViewHolder, int i) {
            if (i >= PhotosAssetListView.this.getUploadingPhotosSize()) {
                super.onBindViewHolder(cellViewHolder, i - PhotosAssetListView.this.getUploadingPhotosSize());
            } else {
                bindUploadingPhotoItem((UploadingPhotoCellHolder) cellViewHolder, (AdobeUploadAssetData) PhotosAssetListView.this._uploadingPhotoArray.get(i));
            }
        }

        private void bindUploadingPhotoItem(UploadingPhotoCellHolder uploadingPhotoCellHolder, AdobeUploadAssetData adobeUploadAssetData) {
            AdobeAssetImageDimensions adobeAssetImageDimensions;
            int iOptInt = adobeUploadAssetData.optionalMetadata != null ? adobeUploadAssetData.optionalMetadata.optInt("width", 270) : 270;
            if (iOptInt >= AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION.width) {
                adobeAssetImageDimensions = AssetsRecyclerView.adjustRenditionSizeBasedOnDeviceScale(AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION);
            } else {
                adobeAssetImageDimensions = new AdobeAssetImageDimensions(iOptInt, 0.0f);
            }
            adobeUploadAssetData.dimensions = adobeAssetImageDimensions;
            adobeUploadAssetData.rendype = AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG;
            PhotosAssetListView.this._photoUploadObservers.bindCellViewToAsset(adobeUploadAssetData, uploadingPhotoCellHolder.photoUploadCellView);
            if (adobeUploadAssetData.rendition != null) {
                uploadingPhotoCellHolder.displayThumbnail(adobeUploadAssetData.rendition, 0.3f);
            } else {
                uploadingPhotoCellHolder.displayThumbnail(ThumbnailUtils.extractThumbnail(BitmapFactory.decodeFile(adobeUploadAssetData.getLocalAssetURL().getPath()), (int) adobeAssetImageDimensions.width, (int) (adobeAssetImageDimensions.width * (r1.getHeight() / r1.getWidth()))), 0.3f);
            }
        }
    }

    public class UploadingPhotoCellHolder extends AssetsRecyclerView.CellViewHolder {
        public PhotoUploadCellView photoUploadCellView;

        private UploadingPhotoCellHolder(View view) {
            super(view);
        }

        public static UploadingPhotoCellHolder createInstance(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            PhotoUploadCellView photoUploadCellView = new PhotoUploadCellView();
            photoUploadCellView.initializeFromLayout(layoutInflater, R.layout.adobe_upload_photo_asset_cell, viewGroup);
            UploadingPhotoCellHolder uploadingPhotoCellHolder = new UploadingPhotoCellHolder(photoUploadCellView.getRootView());
            uploadingPhotoCellHolder.photoUploadCellView = photoUploadCellView;
            return uploadingPhotoCellHolder;
        }

        public void setTitle(String str) {
            this.photoUploadCellView.setTitle(str);
        }

        public void displayThumbnail(Bitmap bitmap, float f2) {
            this.photoUploadCellView.displayThumnail(bitmap, f2, false);
        }
    }

    public void setupUpload(AdobeUploadSession<AdobePhotoCollection> adobeUploadSession) {
        if (this._uploadingPhotoArray == null) {
            this._uploadSession = adobeUploadSession;
            this._uploadingPhotoArray = new ArrayList<>();
            this._uploadingPhotoArray.addAll(this._uploadSession.getAssetsList());
            refreshDueToDataChange();
        }
    }

    public void cleanUpUpload() {
        this._photoUploadObservers.resetBinder();
        this._uploadSession = null;
        this._uploadingPhotoArray = null;
    }

    public class PhotoUploadCellView extends UploadAssetCellView {
        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView
        protected RelativeLayout getProgressBarContainer() {
            return (RelativeLayout) getRootView().findViewById(R.id.adobe_csdk_photoasset_image_progressbar_container);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
        protected void performOnFinishInflate() {
            createAttachProgressBarToView();
            this._imageViewAssetPicture = (ImageView) getRootView().findViewById(R.id.adobe_csdk_photo_assets_image);
        }
    }

    class PhotoUploadObservers {
        Map<String, Observer> _assetsUploadObservers;

        private PhotoUploadObservers() {
            this._assetsUploadObservers = new HashMap();
        }

        public void resetBinder() {
            for (Map.Entry<String, Observer> entry : this._assetsUploadObservers.entrySet()) {
                AdobeUploadAssetData adobeUploadAssetData = new AdobeUploadAssetData();
                adobeUploadAssetData.guid = entry.getKey();
                PhotosAssetListView.this._uploadSession.removeObserverForAssetUpload(adobeUploadAssetData, entry.getValue());
            }
            this._assetsUploadObservers.clear();
        }

        protected void updateUploadCellViewStatus(final AdobeUploadAssetData adobeUploadAssetData, final UploadAssetCellView uploadAssetCellView) {
            ((Activity) PhotosAssetListView.this.context).runOnUiThread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetListView.PhotoUploadObservers.1
                @Override // java.lang.Runnable
                public void run() {
                    uploadAssetCellView.setUploadProgres(adobeUploadAssetData.getProgress());
                }
            });
        }

        public void bindCellViewToAsset(final AdobeUploadAssetData adobeUploadAssetData, final UploadAssetCellView uploadAssetCellView) {
            unBindCellView(adobeUploadAssetData);
            Observer observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosAssetListView.PhotoUploadObservers.2
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AdobeUploadAssetData adobeUploadAssetData2 = (AdobeUploadAssetData) obj;
                    if (adobeUploadAssetData2.getStatus() == AdobeUploadAssetData.UploadStatus.Completed && adobeUploadAssetData2._assetGUIDonSuccessFulUpload != null && adobeUploadAssetData.rendition != null) {
                        PhotosAssetListView.this.addAssetRenditionToCache(adobeUploadAssetData.rendition, adobeUploadAssetData._assetGUIDonSuccessFulUpload, adobeUploadAssetData.rendype, adobeUploadAssetData.dimensions);
                    }
                    PhotoUploadObservers.this.updateUploadCellViewStatus(adobeUploadAssetData2, uploadAssetCellView);
                }
            };
            this._assetsUploadObservers.put(adobeUploadAssetData.guid, observer);
            PhotosAssetListView.this._uploadSession.addObserverForAssetUpload(adobeUploadAssetData, observer);
            updateUploadCellViewStatus(adobeUploadAssetData, uploadAssetCellView);
        }

        public void unBindCellView(AdobeUploadAssetData adobeUploadAssetData) {
            Observer observer = this._assetsUploadObservers.get(adobeUploadAssetData.guid);
            if (observer != null) {
                this._assetsUploadObservers.remove(adobeUploadAssetData.guid);
                PhotosAssetListView.this._uploadSession.removeObserverForAssetUpload(adobeUploadAssetData, observer);
            }
        }
    }
}
