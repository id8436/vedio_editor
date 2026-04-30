package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.AdobePhotoCollectionsDataSource;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobePhoto;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PhotosCollectionListView extends PhotosBaseListView {
    private PhotosCollectionListViewBaseAdapter _photoCollectionAdapter;
    private AdobePhotoCollectionsDataSource _photoCollectionsDataSource;
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    private int rightMargin;

    public void set_photoCollectionsDataSource(AdobePhotoCollectionsDataSource adobePhotoCollectionsDataSource) {
        this._photoCollectionsDataSource = adobePhotoCollectionsDataSource;
    }

    public PhotosCollectionListView(Context context) {
        super(context);
        this.rightMargin = -1;
    }

    public void searchInPhotoCollections(String str) {
        this._photoCollectionAdapter.isSearch = true;
        this._photoCollectionAdapter.query = str;
        refreshDueToDataChange();
        showEmptySearch();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected Bitmap loadAssetRenditionFromCache(String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        BitmapDrawable bitmapDrawableLoadImage = this._reusableBitmapCacheWorker.loadImage(str + adobeAssetFileRenditionType.ordinal() + adobeAssetImageDimensions.height + adobeAssetImageDimensions.width);
        if (bitmapDrawableLoadImage == null) {
            return null;
        }
        return bitmapDrawableLoadImage.getBitmap();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView
    public void showEmptySearch() {
        checkToSetEmptySearchView(this._photoCollectionAdapter.getAssetsCount() <= 0);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean addAssetRenditionToCache(byte[] bArr, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, final IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        this._reusableBitmapCacheWorker.loadImageWithData(str + adobeAssetFileRenditionType.ordinal() + adobeAssetImageDimensions.height + adobeAssetImageDimensions.width, bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosCollectionListView.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(BitmapDrawable bitmapDrawable) {
                iAdobeGenericCompletionCallback.onCompletion(bitmapDrawable.getBitmap());
            }
        }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosCollectionListView.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                iAdobeGenericErrorCallback.onError(adobeAssetException);
            }
        });
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean addAssetRenditionToCache(Bitmap bitmap, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        this._reusableBitmapCacheWorker.loadImageWithBitmap(str + adobeAssetFileRenditionType.ordinal() + adobeAssetImageDimensions.height + adobeAssetImageDimensions.width, bitmap);
        return true;
    }

    public void setReusableImageWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        this._reusableBitmapCacheWorker = reusableImageBitmapWorker;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected AssetsRecyclerView.AssetsListViewBaseAdapter createAssetItemsAdapter(Context context) {
        this._photoCollectionAdapter = new PhotosCollectionListViewBaseAdapter(getHostActivity());
        return this._photoCollectionAdapter;
    }

    protected AdobeAssetViewNavigateCommands.NavBaseCommandData getPhotoCollectionNavigationCommand(AdobePhotoCollection adobePhotoCollection) {
        AdobeAssetViewNavigateCommands.NavToPhotoCollectionData navToPhotoCollectionData = new AdobeAssetViewNavigateCommands.NavToPhotoCollectionData();
        navToPhotoCollectionData.setCollectionGUID(adobePhotoCollection.getGUID());
        navToPhotoCollectionData.setCollectionName(adobePhotoCollection.getName());
        navToPhotoCollectionData.setCatalogGUID(adobePhotoCollection.getCatalog().getGUID());
        navToPhotoCollectionData.setCatalogName(adobePhotoCollection.getCatalog().getName());
        return navToPhotoCollectionData;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemClick(int i) {
        AdobeAssetData assetItemData = this._assetsItemsAdapter.getAssetItemData(i);
        if (assetItemData != null && assetItemData.originalAsset != null && (assetItemData.originalAsset instanceof AdobePhotoCollection)) {
            AdobePhotoCollection adobePhotoCollection = (AdobePhotoCollection) assetItemData.originalAsset;
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = this._parentContainer.get();
            if (iAdobeAssetContainerListViewDelegate != null) {
                iAdobeAssetContainerListViewDelegate.navigateToCollection(getPhotoCollectionNavigationCommand(adobePhotoCollection));
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handlePopupMenuClick(int i, View view) {
        AdobeAssetData assetItemData = this._assetsItemsAdapter.getAssetItemData(i);
        if (assetItemData != null) {
            AdobePhotoCollection adobePhotoCollection = (AdobePhotoCollection) assetItemData.originalAsset;
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = this._parentContainer.get();
            if (iAdobeAssetContainerListViewDelegate != null) {
                iAdobeAssetContainerListViewDelegate.handlePopupMenuClick(adobePhotoCollection, view);
            }
        }
    }

    public class PhotosCollectionListViewBaseAdapter extends PhotosBaseListView.PhotoListViewBaseAdapter {
        boolean isSearch;
        String query;

        public PhotosCollectionListViewBaseAdapter(Context context) {
            super(context);
            this.isSearch = false;
            this.query = "";
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.PhotoListViewBaseAdapter
        protected ArrayList<AdobePhoto> getPhotosList() {
            if (this._photoCollectionsList == null && PhotosCollectionListView.this._photoCollectionsDataSource != null) {
                ArrayList<AdobePhotoCollection> arrayListSearchCollections = this.isSearch ? PhotosCollectionListView.this._photoCollectionsDataSource.searchCollections(this.query) : PhotosCollectionListView.this._photoCollectionsDataSource.getCollections();
                if (arrayListSearchCollections != null) {
                    this._photoCollectionsList = new ArrayList<>(arrayListSearchCollections);
                }
            }
            return this._photoCollectionsList;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.PhotosBaseListView.PhotoListViewBaseAdapter
        protected void handleCellPostCreation(GenericStaggeredCellView genericStaggeredCellView) {
            genericStaggeredCellView.forceAspectRatio(1.0f);
            genericStaggeredCellView._selectBtn.setVisibility(8);
            genericStaggeredCellView._imageViewAssetPicture.setScaleType(ImageView.ScaleType.CENTER_CROP);
            LinearLayout linearLayout = (LinearLayout) genericStaggeredCellView.getRootView().findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_bottom_title_section);
            new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = (TextView) linearLayout.findViewById(R.id.adobe_csdk_assetview_file_modified_date);
            TextView textView2 = (TextView) linearLayout.findViewById(R.id.adobe_csdk_assetview_file_size);
            ImageView imageView = (ImageView) linearLayout.findViewById(R.id.adobe_csdk_assetview_file_icon);
            textView.setVisibility(8);
            textView2.setVisibility(8);
            genericStaggeredCellView._menuIcon = (RelativeLayout) linearLayout.findViewById(R.id.adobe_csdk_files_menu_icon);
            if (!AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(PhotosCollectionListView.this.getHostActivity())) {
                genericStaggeredCellView._menuIcon.setVisibility(8);
            }
            imageView.setVisibility(0);
        }

        private int getRightMargin() {
            if (PhotosCollectionListView.this.rightMargin == -1) {
                PhotosCollectionListView.this.rightMargin = (int) (10 * PhotosCollectionListView.this.getHostActivity().getResources().getDisplayMetrics().density);
            }
            return PhotosCollectionListView.this.rightMargin;
        }
    }
}
