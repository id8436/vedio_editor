package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFolderInternal;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadThumbnailMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CCFilesListView extends AssetsRecyclerView {
    private static final String T = CCFilesListView.class.getSimpleName();
    private AdobeAssetsViewContainerConfiguration _assetViewerConfiguration;
    protected AdobeStorageDataSource _ccfilesDataSource;
    protected boolean _isContainerCollectionReadOnly;
    private AdobeAssetFolder _targetCollection;
    private UploadRelatedData _uploadTrackingnData;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected abstract boolean addAssetRenditionToCache(Bitmap bitmap, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions);

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected abstract boolean addAssetRenditionToCache(byte[] bArr, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback);

    protected abstract LocalAssetsUploadCCAssetsCombinedAdapter createUploadCombinedAdapter();

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected abstract Bitmap loadAssetRenditionFromCache(String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions);

    public CCFilesListView(Context context) {
        super(context);
    }

    public void setAssetListViewerConfiguration(AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration) {
        this._assetViewerConfiguration = adobeAssetsViewContainerConfiguration;
    }

    public void showEmptySearch() {
        checkToSetEmptySearchView(this._ccfilesDataSource.assetsToDisplay().size() <= 0);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewListCellDelegate
    public boolean getSelectionOverallVisibility() {
        return AdobeStorageAssetSelectionState.isMultiSelectModeActive();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToDataChange() {
        this._ccfilesDataSource.getAdobeStorageSortIndexCollation().createSectionDataFromMaster(this._ccfilesDataSource.assetsToDisplay());
        super.refreshDueToDataChange();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean loadAssetRendition(final AdobeAssetData adobeAssetData, final AdobeAssetFileRenditionType adobeAssetFileRenditionType, final AdobeAssetImageDimensions adobeAssetImageDimensions, final IAdobeGenericRequestCallback<Bitmap, AdobeCSDKException> iAdobeGenericRequestCallback) {
        AdobeAsset adobeAsset = (AdobeAsset) adobeAssetData.originalAsset;
        Bitmap bitmapLoadAssetRenditionFromCache = loadAssetRenditionFromCache(adobeAssetData.guid, adobeAssetFileRenditionType, adobeAssetImageDimensions);
        if (bitmapLoadAssetRenditionFromCache != null) {
            iAdobeGenericRequestCallback.onCompletion(bitmapLoadAssetRenditionFromCache);
            return true;
        }
        if (adobeAsset instanceof AdobeAssetFile) {
            ((AdobeAssetFile) adobeAsset).getRenditionWithType(adobeAssetFileRenditionType, adobeAssetImageDimensions, new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.1
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                public void onCancellation() {
                    iAdobeGenericRequestCallback.onCancellation();
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView$1$1DecodeImageInBackgroundTask] */
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(byte[] bArr) {
                    if (!CCFilesListView.this.addAssetRenditionToCache(bArr, adobeAssetData.guid, adobeAssetFileRenditionType, adobeAssetImageDimensions, new IAdobeGenericCompletionCallback<Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.1.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Bitmap bitmap) {
                            iAdobeGenericRequestCallback.onCompletion(bitmap);
                        }
                    }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.1.2
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeAssetException adobeAssetException) {
                            iAdobeGenericRequestCallback.onError(adobeAssetException);
                        }
                    })) {
                        new AsyncTask<byte[], Integer, Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.1.1DecodeImageInBackgroundTask
                            /* JADX INFO: Access modifiers changed from: protected */
                            @Override // android.os.AsyncTask
                            public Bitmap doInBackground(byte[]... bArr2) {
                                byte[] bArr3 = bArr2[0];
                                if (bArr3 != null) {
                                    return BitmapFactory.decodeByteArray(bArr3, 0, bArr3.length);
                                }
                                return null;
                            }

                            /* JADX INFO: Access modifiers changed from: protected */
                            @Override // android.os.AsyncTask
                            public void onPostExecute(Bitmap bitmap) {
                                iAdobeGenericRequestCallback.onCompletion(bitmap);
                            }
                        }.execute(bArr);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeAssetException adobeAssetException) {
                    iAdobeGenericRequestCallback.onError(adobeAssetException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            });
            return true;
        }
        if (adobeAsset instanceof AdobeAssetFolder) {
            return true;
        }
        if (isAssetALocalUpload(adobeAssetData)) {
            AdobeUploadAssetData adobeUploadAssetData = (AdobeUploadAssetData) adobeAssetData;
            adobeUploadAssetData.rendype = adobeAssetFileRenditionType;
            adobeUploadAssetData.dimensions = adobeAssetImageDimensions;
            fetchUploadAssetThumbnail(adobeUploadAssetData, iAdobeGenericRequestCallback);
            return true;
        }
        return false;
    }

    public void setContainerReadOnly(boolean z) {
        this._isContainerCollectionReadOnly = z;
    }

    private void fetchUploadAssetThumbnail(AdobeUploadAssetData adobeUploadAssetData, final IAdobeGenericRequestCallback<Bitmap, AdobeCSDKException> iAdobeGenericRequestCallback) {
        if (adobeUploadAssetData.rendition != null) {
            iAdobeGenericRequestCallback.onCompletion(adobeUploadAssetData.rendition);
        } else {
            AdobeUploadThumbnailMgr.getInstance().getThumbnail(adobeUploadAssetData, new IAdobeGenericCompletionCallback<Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Bitmap bitmap) {
                    if (bitmap != null) {
                        iAdobeGenericRequestCallback.onCompletion(bitmap);
                    } else {
                        iAdobeGenericRequestCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnsupportedMedia));
                    }
                }
            });
        }
    }

    private boolean isAssetALocalUpload(AdobeAssetData adobeAssetData) {
        return adobeAssetData instanceof AdobeUploadAssetData;
    }

    protected boolean shouldFilterStorageAsset(AdobeAsset adobeAsset) {
        if (adobeAsset instanceof AdobeAssetFile) {
            return AdobeStorageUtils.shouldFilterAssetMimeType(this._assetViewerConfiguration.getMimeTypesFilter(), ((AdobeAssetFile) adobeAsset).getType(), this._assetViewerConfiguration.getIsMimeTypeFilterInclusive());
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean shouldFilterOutAsset(AdobeAssetData adobeAssetData) {
        return shouldFilterStorageAsset((AdobeAsset) adobeAssetData.originalAsset);
    }

    protected AdobeAssetViewNavigateCommands.NavBaseCommandData getFolderNavigationCommand(AdobeAsset adobeAsset) {
        AdobeAssetViewNavigateCommands.NavToAssetFolderData navToAssetFolderData = new AdobeAssetViewNavigateCommands.NavToAssetFolderData();
        AdobeAssetFolder adobeAssetFolder = (AdobeAssetFolder) adobeAsset;
        if (adobeAssetFolder instanceof AdobeAssetFolderInternal) {
            navToAssetFolderData.setCollection(((AdobeAssetFolderInternal) adobeAssetFolder).getResourceCollection());
            navToAssetFolderData.setReadOnly(((AdobeAssetFolderInternal) adobeAssetFolder).isReadOnly());
        } else {
            navToAssetFolderData.setCollection(AdobeStorageResourceCollection.collectionFromHref(adobeAssetFolder.getHref()));
        }
        navToAssetFolderData.setDataSourceType(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles);
        return navToAssetFolderData;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewListCellDelegate
    public void handleAssetCellSelectionToggle(AssetListCellView assetListCellView) {
        AdobeAsset adobeAsset = (AdobeAsset) this._assetsItemsAdapter.getItem(assetListCellView.getPosition()).originalAsset;
        if (adobeAsset != null && AdobeStorageAssetSelectionState.isMultiSelectModeActive()) {
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) adobeAsset;
            if (assetListCellView.isMarkedSelected()) {
                assetListCellView.markSelected(false);
                AdobeStorageAssetSelectionState.removeSelectedAsset(adobeAssetFile);
            } else {
                assetListCellView.markSelected(true);
                AdobeStorageAssetSelectionState.addSelectedAsset(adobeAssetFile);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemClick(int i) {
        Log.e(T, "handleListItemClick");
        AdobeAssetData item = this._assetsItemsAdapter.getItem(i);
        AdobeAsset adobeAsset = item != null ? (AdobeAsset) item.originalAsset : null;
        if (adobeAsset != null) {
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = this._parentContainer.get();
            if (adobeAsset instanceof AdobeAssetFolder) {
                if (iAdobeAssetContainerListViewDelegate != null) {
                    iAdobeAssetContainerListViewDelegate.navigateToCollection(getFolderNavigationCommand(adobeAsset));
                }
            } else if (!shouldFilterOutAsset(item) && iAdobeAssetContainerListViewDelegate != null) {
                iAdobeAssetContainerListViewDelegate.handleAssetClickAction(item.originalAsset);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handleListItemLongClick(int i) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeAssetData item = this._assetsItemsAdapter.getItem(i);
        AdobeAsset adobeAsset = item != null ? (AdobeAsset) item.originalAsset : null;
        if (adobeAsset != null && this._parentContainer != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handleLongClickOnAsset(adobeAsset);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void handlePopupMenuClick(int i, View view) {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        AdobeAssetData item = this._assetsItemsAdapter.getItem(i);
        AdobeAsset adobeAsset = item != null ? (AdobeAsset) item.originalAsset : null;
        if (adobeAsset != null && this._parentContainer != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.handlePopupMenuClick(adobeAsset, view);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected boolean isAssetSelected(AdobeAssetData adobeAssetData) {
        return AdobeStorageAssetSelectionState.containsAsset((AdobeAssetFile) adobeAssetData.originalAsset);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    void cancelThumbnailRenditionRequestOfAsset(AdobeAssetData adobeAssetData) {
        if (adobeAssetData.originalAsset instanceof AdobeAssetFile) {
            ((AdobeAssetFile) adobeAssetData.originalAsset).cancelRenditionRequest();
        }
    }

    public void setStorageDataSource(AdobeStorageDataSource adobeStorageDataSource) {
        this._ccfilesDataSource = adobeStorageDataSource;
    }

    public void setUpListViewToTrackActiveUploads(AdobeUploadSession<AdobeAssetFolder> adobeUploadSession) {
        this._uploadTrackingnData = new UploadRelatedData();
        this._uploadTrackingnData._uploadSession = adobeUploadSession;
        this._uploadTrackingnData._originalAssetsAdapter = this._assetsItemsAdapter;
        LocalAssetsUploadCCAssetsCombinedAdapter localAssetsUploadCCAssetsCombinedAdapterCreateUploadCombinedAdapter = createUploadCombinedAdapter();
        localAssetsUploadCCAssetsCombinedAdapterCreateUploadCombinedAdapter.setCCFilesAdapter((CCFilesAssetsListViewBaseAdapter) this._assetsItemsAdapter);
        localAssetsUploadCCAssetsCombinedAdapterCreateUploadCombinedAdapter.setUploadSession(adobeUploadSession);
        this._uploadTrackingnData._localAssetsCCFilesCombinedAdapter = localAssetsUploadCCAssetsCombinedAdapterCreateUploadCombinedAdapter;
        if (this._assetsItemsAdapter instanceof CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter) {
            ((CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter) this._assetsItemsAdapter).removeHeaders();
        }
        attachBaseAdapterToListView(localAssetsUploadCCAssetsCombinedAdapterCreateUploadCombinedAdapter);
    }

    protected void attachBaseAdapterToListView(RecyclerView.Adapter adapter) {
        this._assetsItemsAdapter = (CCFilesAssetsListViewBaseAdapter) adapter;
        this._recyclerView.setAdapter(this._assetsItemsAdapter.getRealAdapter());
        this._recyclerView.setLayoutManager(getLayoutManager(this.context));
        this._assetsItemsAdapter.notifyDataSetChanged();
    }

    private void performUploadTrackingSetup() {
    }

    public void cleanUpUploadRelatedSetup() {
        if (this._uploadTrackingnData != null) {
            ((LocalAssetsUploadCCAssetsCombinedAdapter) this._assetsItemsAdapter).resetSelf();
            AdobeUxUtilMainUIThreadHandler.getHandler().post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.3
                @Override // java.lang.Runnable
                public void run() {
                    CCFilesListView.this.attachBaseAdapterToListView(CCFilesListView.this._uploadTrackingnData._originalAssetsAdapter);
                    CCFilesListView.this._uploadTrackingnData = null;
                }
            });
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView
    protected void resetFolderView(AssetListCellView assetListCellView, boolean z, boolean z2, boolean z3) {
    }

    public void set_targetCollection(AdobeAssetFolder adobeAssetFolder) {
        this._targetCollection = adobeAssetFolder;
    }

    public abstract class CCFilesAssetsListViewBaseAdapter extends AssetsRecyclerView.AssetsListViewBaseAdapter {
        private static final int TYPES_COUNT = 2;
        private static final int TYPE_ASSET_FILE = 0;
        private static final int TYPE_ASSET_FOLDER = 1;
        protected ArrayList<AdobeAssetData> _flattenedAssetsList;

        protected abstract AssetListCellView createAssetFileCellView(ViewGroup viewGroup);

        protected abstract AssetListCellView createAssetFolderCellView(ViewGroup viewGroup);

        public CCFilesAssetsListViewBaseAdapter(Context context) {
            super(context);
        }

        int getTypeFromAsset(AdobeAsset adobeAsset) {
            return adobeAsset instanceof AdobeAssetFile ? 0 : 1;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return (i < 0 || i >= getItemCount()) ? this.IGNORE_ITEM_VIEW_TYPE : getTypeFromAsset(getAdobeAssetAtPosition(i));
        }

        public int getViewTypeCount() {
            return 2;
        }

        protected ArrayList<AdobeAssetData> getAssetsList() {
            ArrayList<AdobeAsset> flattenedAssetsItemsList;
            if (CCFilesListView.this._ccfilesDataSource == null) {
                return null;
            }
            if (this._flattenedAssetsList == null && (flattenedAssetsItemsList = CCFilesListView.this._ccfilesDataSource.getAdobeStorageSortIndexCollation().getFlattenedAssetsItemsList()) != null) {
                this._flattenedAssetsList = new ArrayList<>(flattenedAssetsItemsList.size());
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= flattenedAssetsItemsList.size()) {
                        break;
                    }
                    this._flattenedAssetsList.add(getCellDataFromAsset(flattenedAssetsItemsList.get(i2)));
                    i = i2 + 1;
                }
            }
            return this._flattenedAssetsList;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected int getAssetsCount() {
            if (getAssetsList() == null) {
                return 0;
            }
            return getAssetsList().size();
        }

        protected AdobeAssetData getCellDataFromAsset(AdobeAsset adobeAsset) {
            AdobeAssetData adobeAssetData = new AdobeAssetData();
            adobeAssetData.guid = adobeAsset.getGUID();
            adobeAssetData.title = adobeAsset.getName();
            adobeAssetData.modificationDate = adobeAsset.getModificationDate();
            adobeAssetData.creationDate = adobeAsset.getCreationDate();
            boolean z = adobeAsset instanceof AdobeAssetFile;
            adobeAssetData.optionalMetadata = z ? ((AdobeAssetFile) adobeAsset).getOptionalMetadata() : null;
            adobeAssetData.imageMD5Hash = z ? ((AdobeAssetFile) adobeAsset).getMd5Hash() : null;
            adobeAssetData.originalAsset = adobeAsset;
            adobeAssetData.isReadOnly = CCFilesListView.this._isContainerCollectionReadOnly;
            adobeAssetData.fileSize = z ? ((AdobeAssetFile) adobeAsset).getFileSize() : 0L;
            return adobeAssetData;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected AdobeAssetData getAssetItemData(int i) {
            if (getAssetsList() == null || i < 0) {
                return null;
            }
            return getAssetsList().get(i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetSelectable(AdobeAssetData adobeAssetData) {
            if (adobeAssetData == null || adobeAssetData.originalAsset == null) {
                return false;
            }
            return adobeAssetData.originalAsset instanceof AdobeAssetFile;
        }

        protected AdobeAsset getAdobeAssetAtPosition(int i) {
            AdobeAssetData item = getItem(i);
            if (item == null) {
                return null;
            }
            return (AdobeAsset) item.originalAsset;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected AssetListCellView createNewAssetCellView(ViewGroup viewGroup, int i) {
            if (i == 0) {
                return createAssetFileCellView(viewGroup);
            }
            if (i == 1) {
                return createAssetFolderCellView(viewGroup);
            }
            return null;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void invalidateAssetsList() {
            this._flattenedAssetsList = null;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetHasThumbnail(AdobeAssetData adobeAssetData) {
            if (adobeAssetData == null || adobeAssetData.originalAsset == null || !(adobeAssetData.originalAsset instanceof AdobeAssetFolder)) {
                return true;
            }
            return false;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void handlePostCellViewBinding(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            AdobeAssetFolder adobeAssetFolder;
            if ((adobeAssetData.originalAsset instanceof AdobeAssetFolder) && (adobeAssetFolder = (AdobeAssetFolder) adobeAssetData.originalAsset) != null) {
                setCCFolderViewAsShared(assetListCellView, adobeAssetFolder, adobeAssetFolder.isShared(), adobeAssetFolder.isReadOnly() || CCFilesListView.this._isContainerCollectionReadOnly);
            }
            super.handlePostCellViewBinding(assetListCellView, adobeAssetData, i);
        }

        protected void setCCFolderViewAsShared(AssetListCellView assetListCellView, AdobeAssetFolder adobeAssetFolder, boolean z, boolean z2) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            String guid = assetListCellView.getGuid();
            String str = adobeAssetData.guid;
            if (guid == null || str == null || !guid.equalsIgnoreCase(str)) {
                return false;
            }
            String title = assetListCellView.getTitle();
            String str2 = adobeAssetData.title;
            boolean z = (title == null || str2 == null || !title.equalsIgnoreCase(str2)) ? false : true;
            if (z) {
                if (adobeAssetData.originalAsset instanceof AdobeAssetFile) {
                    AdobeAssetFile adobeAssetFile = (AdobeAssetFile) adobeAssetData.originalAsset;
                    String imageMD5 = assetListCellView.getImageMD5();
                    String md5Hash = adobeAssetFile.getMd5Hash();
                    if (imageMD5 == null || md5Hash == null || !imageMD5.equalsIgnoreCase(md5Hash)) {
                        z = false;
                    } else {
                        if (AdobeStorageAssetSelectionState.isMultiSelectModeActive()) {
                            boolean zIsMarkedSelected = assetListCellView.isMarkedSelected();
                            boolean zIsAssetSelected = CCFilesListView.this.isAssetSelected(adobeAssetData);
                            if (zIsMarkedSelected != zIsAssetSelected) {
                                assetListCellView.markSelected(zIsAssetSelected);
                            }
                        }
                        z = true;
                    }
                }
                if (adobeAssetData.originalAsset instanceof AdobeAssetFolder) {
                    return false;
                }
            }
            return z;
        }
    }

    class UploadRelatedData {
        public LocalAssetsUploadCCAssetsCombinedAdapter _localAssetsCCFilesCombinedAdapter;
        public AssetsRecyclerView.AssetsListViewBaseAdapter _originalAssetsAdapter;
        public AdobeUploadSession<AdobeAssetFolder> _uploadSession;

        UploadRelatedData() {
        }
    }

    public abstract class LocalAssetsUploadCCAssetsCombinedAdapter extends CCFilesAssetsListViewBaseAdapter {
        private static final int TYPES_COUNT = 3;
        private static final int TYPE_ASSET_UPLOAD = 2;
        private ArrayList<AdobeAssetData> _combinedSortedAssets;
        private CCFilesAssetsListViewBaseAdapter _originalCcfilesAdapter;
        private LocalUploadAssetsToCellViewBinder _uploadAssetsToCellViewBinder;
        private AdobeUploadSession<AdobeAssetFolder> _uploadSession;

        protected abstract UploadAssetCellView createUploadAssetCellView(ViewGroup viewGroup);

        public LocalAssetsUploadCCAssetsCombinedAdapter(Context context) {
            super(context);
            this._uploadAssetsToCellViewBinder = new LocalUploadAssetsToCellViewBinder();
        }

        public void setCCFilesAdapter(CCFilesAssetsListViewBaseAdapter cCFilesAssetsListViewBaseAdapter) {
            this._originalCcfilesAdapter = cCFilesAssetsListViewBaseAdapter;
        }

        public void setUploadSession(AdobeUploadSession<AdobeAssetFolder> adobeUploadSession) {
            this._uploadSession = adobeUploadSession;
        }

        public void resetSelf() {
            this._uploadSession = null;
            this._uploadAssetsToCellViewBinder.resetBinder();
            invalidateAssetsList();
            notifyDataSetChanged();
        }

        private boolean isLocalUploadAsset(AdobeAssetData adobeAssetData) {
            return adobeAssetData instanceof AdobeUploadAssetData;
        }

        public class CustomAssetDataComparator implements Comparator<AdobeAssetData> {
            private boolean _isSortByAlpha;

            public CustomAssetDataComparator(boolean z) {
                this._isSortByAlpha = false;
                this._isSortByAlpha = z;
            }

            private int compareAlpha(AdobeAssetData adobeAssetData, AdobeAssetData adobeAssetData2) {
                char upperCase = Character.toUpperCase(adobeAssetData.title.charAt(0));
                char upperCase2 = Character.toUpperCase(adobeAssetData2.title.charAt(0));
                if (upperCase > upperCase2) {
                    return 1;
                }
                return upperCase < upperCase2 ? -1 : 0;
            }

            private int compareDate(AdobeAssetData adobeAssetData, AdobeAssetData adobeAssetData2) {
                long time = adobeAssetData.modificationDate.getTime();
                long time2 = adobeAssetData2.modificationDate.getTime();
                if (time > time2) {
                    return -1;
                }
                if (time >= time2) {
                    return 0;
                }
                return 1;
            }

            @Override // java.util.Comparator
            public int compare(AdobeAssetData adobeAssetData, AdobeAssetData adobeAssetData2) {
                return this._isSortByAlpha ? compareAlpha(adobeAssetData, adobeAssetData2) : compareDate(adobeAssetData, adobeAssetData2);
            }
        }

        private ArrayList<AdobeAssetData> sortAssetsList(ArrayList<AdobeAssetData> arrayList, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType adobeUXAssetBrowserSortType) {
            Collections.sort(arrayList, new CustomAssetDataComparator(adobeUXAssetBrowserSortType == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA));
            return arrayList;
        }

        protected void generateCombinedAssetsList() {
            if (this._combinedSortedAssets == null) {
                ArrayList<AdobeAssetData> arrayList = new ArrayList<>();
                if (((AdobeAssetFolder) this._uploadSession.getDestinationFolder()).getHref().equals(CCFilesListView.this._targetCollection.getHref())) {
                    arrayList.addAll(this._uploadSession.getAssetsList());
                }
                if (this._originalCcfilesAdapter.getAssetsList() != null) {
                    arrayList.addAll(this._originalCcfilesAdapter.getAssetsList());
                }
                this._combinedSortedAssets = sortAssetsList(arrayList, CCFilesListView.this._ccfilesDataSource.getSortType());
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFolderCellView(ViewGroup viewGroup) {
            return this._originalCcfilesAdapter.createAssetFolderCellView(viewGroup);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        protected AssetListCellView createAssetFileCellView(ViewGroup viewGroup) {
            return this._originalCcfilesAdapter.createAssetFileCellView(viewGroup);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected int getAssetsCount() {
            if (this._uploadSession == null) {
                return 0;
            }
            generateCombinedAssetsList();
            return this._combinedSortedAssets.size();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int i2 = this.IGNORE_ITEM_VIEW_TYPE;
            if (i >= 0 && i < getItemCount()) {
                if (isLocalUploadAsset(getAssetItemData(i))) {
                    return 2;
                }
                return super.getItemViewType(i);
            }
            return i2;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter
        public int getViewTypeCount() {
            return 3;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected AdobeAssetData getAssetItemData(int i) {
            generateCombinedAssetsList();
            if (this._combinedSortedAssets != null) {
                return this._combinedSortedAssets.get(i);
            }
            return null;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetSelectable(AdobeAssetData adobeAssetData) {
            if (isLocalUploadAsset(adobeAssetData)) {
                return false;
            }
            return super.isAssetSelectable(adobeAssetData);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void invalidateAssetsList() {
            this._combinedSortedAssets = null;
            this._originalCcfilesAdapter.invalidateAssetsList();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            boolean z = false;
            if (adobeAssetData instanceof AdobeUploadAssetData) {
                String guid = assetListCellView.getGuid();
                String str = adobeAssetData.guid;
                if (guid == null || str == null || !guid.equalsIgnoreCase(str)) {
                    return false;
                }
                String title = assetListCellView.getTitle();
                String str2 = adobeAssetData.title;
                if (title != null && str2 != null && title.equalsIgnoreCase(str2)) {
                    z = true;
                }
                if (z) {
                    AdobeUploadAssetData adobeUploadAssetData = (AdobeUploadAssetData) adobeAssetData;
                    UploadAssetCellView uploadAssetCellView = (UploadAssetCellView) assetListCellView;
                    uploadAssetCellView.setUploadStatus(adobeUploadAssetData.getStatus());
                    uploadAssetCellView.setUploadProgres(adobeUploadAssetData.getProgress());
                    return z;
                }
                return z;
            }
            return super.isAssetCellViewAlreadyRepresentAsset(assetListCellView, adobeAssetData);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected AssetListCellView createNewAssetCellView(ViewGroup viewGroup, int i) {
            return i == super.getViewTypeCount() ? createUploadAssetCellView(viewGroup) : super.createNewAssetCellView(viewGroup, i);
        }

        private void registerLocalAssetUploadProgress(AdobeUploadAssetData adobeUploadAssetData, UploadAssetCellView uploadAssetCellView) {
            this._uploadAssetsToCellViewBinder.bindCellViewToAsset(adobeUploadAssetData, uploadAssetCellView);
        }

        private void unRegisterLocalAssetUploadProgress(AdobeUploadAssetData adobeUploadAssetData, UploadAssetCellView uploadAssetCellView) {
            this._uploadAssetsToCellViewBinder.unBindCellView(adobeUploadAssetData, uploadAssetCellView);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void bindAssetCellViewToAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            if (isLocalUploadAsset(adobeAssetData) && assetListCellView._guid != null) {
                unRegisterLocalAssetUploadProgress((AdobeUploadAssetData) adobeAssetData, (UploadAssetCellView) assetListCellView);
            }
            super.bindAssetCellViewToAsset(assetListCellView, adobeAssetData, i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected void handlePostCellViewBinding(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            if (isLocalUploadAsset(adobeAssetData)) {
                registerLocalAssetUploadProgress((AdobeUploadAssetData) adobeAssetData, (UploadAssetCellView) assetListCellView);
                super.handlePostCellViewBinding(assetListCellView, adobeAssetData, i);
                return;
            }
            super.handlePostCellViewBinding(assetListCellView, adobeAssetData, i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.CCFilesAssetsListViewBaseAdapter, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.AssetsListViewBaseAdapter
        protected boolean isAssetHasThumbnail(AdobeAssetData adobeAssetData) {
            if (adobeAssetData instanceof AdobeUploadAssetData) {
                return true;
            }
            return super.isAssetHasThumbnail(adobeAssetData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isUploadAssetDataCellViewEqual(AdobeUploadAssetData adobeUploadAssetData, UploadAssetCellView uploadAssetCellView) {
            if (uploadAssetCellView.getGuid() == null) {
                return false;
            }
            return adobeUploadAssetData.guid.equalsIgnoreCase(uploadAssetCellView.getGuid());
        }

        class LocalUploadAssetsToCellViewBinder {
            HashMap<String, Observer> _assetsUploadObservers = new HashMap<>();

            public LocalUploadAssetsToCellViewBinder() {
            }

            public void resetBinder() {
                this._assetsUploadObservers.clear();
            }

            protected void updateUploadCellViewStatus(AdobeUploadAssetData adobeUploadAssetData, UploadAssetCellView uploadAssetCellView) {
                if (LocalAssetsUploadCCAssetsCombinedAdapter.this.isUploadAssetDataCellViewEqual(adobeUploadAssetData, uploadAssetCellView)) {
                    uploadAssetCellView.setUploadProgres(adobeUploadAssetData.getProgress());
                }
            }

            public void bindCellViewToAsset(final AdobeUploadAssetData adobeUploadAssetData, final UploadAssetCellView uploadAssetCellView) {
                unBindCellView(adobeUploadAssetData, uploadAssetCellView);
                Observer observer = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesListView.LocalAssetsUploadCCAssetsCombinedAdapter.LocalUploadAssetsToCellViewBinder.1
                    @Override // java.util.Observer
                    public void update(Observable observable, Object obj) {
                        AdobeUploadAssetData adobeUploadAssetData2 = (AdobeUploadAssetData) obj;
                        if (adobeUploadAssetData2.getStatus() == AdobeUploadAssetData.UploadStatus.Completed && adobeUploadAssetData2._assetGUIDonSuccessFulUpload != null && adobeUploadAssetData.rendition != null) {
                            CCFilesListView.this.addAssetRenditionToCache(adobeUploadAssetData.rendition, adobeUploadAssetData._assetGUIDonSuccessFulUpload, adobeUploadAssetData.rendype, adobeUploadAssetData.dimensions);
                        }
                        LocalUploadAssetsToCellViewBinder.this.updateUploadCellViewStatus(adobeUploadAssetData2, uploadAssetCellView);
                    }
                };
                this._assetsUploadObservers.put(adobeUploadAssetData.guid, observer);
                getUploadSession().addObserverForAssetUpload(adobeUploadAssetData, observer);
                updateUploadCellViewStatus(adobeUploadAssetData, uploadAssetCellView);
            }

            public void unBindCellView(AdobeUploadAssetData adobeUploadAssetData, UploadAssetCellView uploadAssetCellView) {
                Observer observer = this._assetsUploadObservers.get(adobeUploadAssetData.guid);
                if (observer != null) {
                    this._assetsUploadObservers.remove(adobeUploadAssetData.guid);
                    getUploadSession().removeObserverForAssetUpload(adobeUploadAssetData, observer);
                }
            }

            private AdobeUploadSession<AdobeAssetFolder> getUploadSession() {
                return LocalAssetsUploadCCAssetsCombinedAdapter.this._uploadSession;
            }
        }
    }
}
