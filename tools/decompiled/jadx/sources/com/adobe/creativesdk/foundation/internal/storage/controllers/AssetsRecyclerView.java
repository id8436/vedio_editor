package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Parcelable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.DragDrop.UploadDragDropEventListener;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetCellViews;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AssetBrowserCoachMarkData;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetInfoUtil;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.ColumnCountUtil;
import com.adobe.creativesdk.foundation.internal.utils.NavBarUtil;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AssetsRecyclerView extends AssetsListView implements IAdobeAssetViewListCellDelegate {
    protected AssetsListViewBaseAdapter _assetsItemsAdapter;
    protected RecyclerView.ItemDecoration _itemDecoration;
    protected RecyclerView.LayoutManager _layoutManager;
    protected View _mainRootView;
    private RecyclerView.OnScrollListener _onScrollListener;
    protected RecyclerView _recyclerView;
    private final HashMap<String, AdobeAssetData> _requestedThumbnails;
    protected SwipeRefreshLayout _swipeRefreshLayout;

    interface IThumbnailLoadCompletionHandler {
        void onComplete(AdobeAssetData adobeAssetData, Bitmap bitmap, boolean z);
    }

    protected abstract boolean addAssetRenditionToCache(Bitmap bitmap, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions);

    protected abstract boolean addAssetRenditionToCache(byte[] bArr, String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback);

    abstract void cancelThumbnailRenditionRequestOfAsset(AdobeAssetData adobeAssetData);

    protected abstract AssetsListViewBaseAdapter createAssetItemsAdapter(Context context);

    protected abstract RecyclerView getConcreteRecyclerView(Context context);

    protected abstract RecyclerView.ItemDecoration getItemDecoration(RecyclerView recyclerView, Context context);

    protected abstract RecyclerView.LayoutManager getLayoutManager(Context context);

    protected abstract View getMainRootView(Context context);

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewListCellDelegate
    public abstract void handleAssetCellSelectionToggle(AssetListCellView assetListCellView);

    protected abstract void handleListItemClick(int i);

    protected abstract boolean isAssetSelected(AdobeAssetData adobeAssetData);

    protected abstract boolean loadAssetRendition(AdobeAssetData adobeAssetData, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericRequestCallback<Bitmap, AdobeCSDKException> iAdobeGenericRequestCallback);

    protected abstract Bitmap loadAssetRenditionFromCache(String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions);

    public AssetsRecyclerView(Context context) {
        super(context);
        this._onScrollListener = new RecyclerView.OnScrollListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.1
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 0) {
                    AssetsRecyclerView.this.handleScrollOffsetChange();
                }
            }
        };
        this._requestedThumbnails = new HashMap<>();
    }

    public static double getAdjustedDimension(float f2) {
        DisplayMetrics displayMetrics = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getResources().getDisplayMetrics();
        double d2 = f2;
        if (displayMetrics.densityDpi >= 320) {
            return 2.0f * f2;
        }
        if (displayMetrics.densityDpi > 160) {
            return ((double) f2) * 1.5d;
        }
        return d2;
    }

    public static AdobeAssetImageDimensions adjustRenditionSizeBasedOnDeviceScale(AdobeAssetImageDimensions adobeAssetImageDimensions) {
        return new AdobeAssetImageDimensions((float) getAdjustedDimension(adobeAssetImageDimensions.width), (float) getAdjustedDimension(adobeAssetImageDimensions.height));
    }

    protected boolean shouldFilterOutAsset(AdobeAssetData adobeAssetData) {
        return false;
    }

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

    protected void attachScrollListenerToListView() {
        this._recyclerView.setOnScrollListener(this._onScrollListener);
    }

    protected void handleListItemLongClick(int i) {
    }

    protected void handlePopupMenuClick(int i, View view) {
    }

    void handleScrollOffsetChange() {
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int itemCount = this._assetsItemsAdapter.getItemCount();
        if (itemCount != 0 && ((double) lastVisiblePosition) / ((double) (itemCount - (lastVisiblePosition - firstVisiblePosition))) > 0.8d) {
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = null;
            if (this._parentContainer != null) {
                iAdobeAssetContainerListViewDelegate = this._parentContainer.get();
            }
            if (iAdobeAssetContainerListViewDelegate != null) {
                iAdobeAssetContainerListViewDelegate.loadMoreItemsFromDataSource();
            }
        }
    }

    void loadAndDisplayThumbnail(final AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, final int i) {
        final boolean zShouldFilterOutAsset = shouldFilterOutAsset(adobeAssetData);
        assetListCellView.setDisabled(zShouldFilterOutAsset);
        AdobeAssetData adobeAssetData2 = this._requestedThumbnails.get(adobeAssetData.guid);
        if (adobeAssetData2 != null) {
            cancelThumbnailRenditionRequestOfAsset(adobeAssetData2);
        }
        if (assetListCellView._videoDuration != null && assetListCellView._videoIndicator != null) {
            assetListCellView._videoLayout.setVisibility(8);
        }
        loadThumbnail(adobeAssetData, new IThumbnailLoadCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.2
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.IThumbnailLoadCompletionHandler
            public void onComplete(AdobeAssetData adobeAssetData3, Bitmap bitmap, boolean z) {
                String str;
                int iLastIndexOf;
                if (assetListCellView.getPosition() == i) {
                    assetListCellView.displayThumnail(bitmap, zShouldFilterOutAsset ? 0.3f : 1.0f, true);
                    if ((adobeAssetData3.originalAsset instanceof AdobeAsset) && assetListCellView._videoDuration != null && assetListCellView._videoIndicator != null) {
                        AdobeAsset adobeAsset = (AdobeAsset) adobeAssetData3.originalAsset;
                        if (adobeAsset instanceof AdobeAssetFileInternal) {
                            AdobeAssetFileInternal adobeAssetFileInternal = (AdobeAssetFileInternal) adobeAsset;
                            if (adobeAssetFileInternal.canStreamVideo()) {
                                int videoDuration = adobeAssetFileInternal.getVideoDuration();
                                String str2 = String.format("%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(videoDuration)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(videoDuration) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(videoDuration))));
                                assetListCellView._videoLayout.setVisibility(0);
                                assetListCellView._bottomInfoLayout.setVisibility(8);
                                assetListCellView._videoDuration.setText(str2);
                                assetListCellView._videoIndicator.setImageResource(R.drawable.video_indicator);
                            } else {
                                assetListCellView._videoLayout.setVisibility(8);
                                assetListCellView._bottomInfoLayout.setVisibility(0);
                            }
                        }
                    }
                    if (adobeAssetData3 != null) {
                        if (adobeAssetData3.originalAsset instanceof AdobePhotoCollection) {
                            if (bitmap == null) {
                                assetListCellView._imageViewAssetPicture.setImageResource(R.drawable.empty_lightroom);
                                assetListCellView._imageViewAssetPicture.setScaleType(ImageView.ScaleType.CENTER);
                                return;
                            }
                            return;
                        }
                        if (bitmap == null && (iLastIndexOf = (str = adobeAssetData3.title).lastIndexOf(46)) >= 0) {
                            AssetsRecyclerView.this.setAssetEmptyBackground(assetListCellView, str.substring(iLastIndexOf, str.length()).toLowerCase());
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAssetEmptyBackground(AssetListCellView assetListCellView, String str) {
        if (getHostActivity() != null) {
            assetListCellView._imageViewAssetPicture.setImageDrawable(AdobeAssetInfoUtil.getEmptyCellImageForExtension(getHostActivity(), str));
            assetListCellView._imageViewAssetPicture.setBackgroundColor(-1);
            assetListCellView._imageViewAssetPicture.setScaleType(ImageView.ScaleType.CENTER);
        }
    }

    void loadAndDisplayThumbnailForFolder(final AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, final int i, final boolean z, final boolean z2) {
        final boolean zShouldFilterOutAsset = shouldFilterOutAsset(adobeAssetData);
        assetListCellView.setDisabled(zShouldFilterOutAsset);
        AdobeAssetData adobeAssetData2 = this._requestedThumbnails.get(adobeAssetData.guid);
        if (adobeAssetData2 != null) {
            cancelThumbnailRenditionRequestOfAsset(adobeAssetData2);
        }
        if (assetListCellView._videoDuration != null && assetListCellView._videoIndicator != null) {
            assetListCellView._videoLayout.setVisibility(8);
        }
        loadThumbnail(adobeAssetData, new IThumbnailLoadCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.3
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.IThumbnailLoadCompletionHandler
            public void onComplete(AdobeAssetData adobeAssetData3, Bitmap bitmap, boolean z3) {
                if (bitmap == null) {
                    AssetsRecyclerView.this.resetFolderView(assetListCellView, true, z, z2);
                } else if (assetListCellView.getPosition() == i) {
                    assetListCellView.displayThumnail(bitmap, zShouldFilterOutAsset ? 0.3f : 1.0f, true);
                }
            }
        });
    }

    void loadThumbnail(final AdobeAssetData adobeAssetData, final IThumbnailLoadCompletionHandler iThumbnailLoadCompletionHandler) {
        AdobeAssetImageDimensions adobeAssetImageDimensions;
        IAdobeGenericRequestCallback<Bitmap, AdobeCSDKException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<Bitmap, AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.4
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                AssetsRecyclerView.this._requestedThumbnails.remove(adobeAssetData.guid);
                iThumbnailLoadCompletionHandler.onComplete(adobeAssetData, null, false);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
                AssetsRecyclerView.this._requestedThumbnails.remove(adobeAssetData.guid);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Bitmap bitmap) {
                AssetsRecyclerView.this._requestedThumbnails.remove(adobeAssetData.guid);
                iThumbnailLoadCompletionHandler.onComplete(adobeAssetData, bitmap, false);
            }
        };
        this._requestedThumbnails.put(adobeAssetData.guid, adobeAssetData);
        int iOptInt = adobeAssetData.optionalMetadata != null ? adobeAssetData.optionalMetadata.optInt("width", 270) : 270;
        if (iOptInt >= AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION.width) {
            adobeAssetImageDimensions = adjustRenditionSizeBasedOnDeviceScale(AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION);
        } else {
            adobeAssetImageDimensions = new AdobeAssetImageDimensions(iOptInt, 0.0f);
        }
        loadAssetRendition(adobeAssetData, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, iAdobeGenericRequestCallback);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToNewItemsInsertion() {
        refreshDueToDataChange();
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
        if (instanceState != null && (instanceState instanceof RecyclerViewInstanceState) && this._layoutManager != null && (instanceState instanceof RecyclerViewInstanceState)) {
            this._layoutManager.onRestoreInstanceState(((RecyclerViewInstanceState) instanceState)._layoutManagerState);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public View getMainView() {
        return this._mainRootView;
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
    public void performInitialization(Context context) {
        this._mainRootView = getMainRootView(context);
        this._recyclerView = getConcreteRecyclerView(context);
        this._swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.5
            @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = null;
                if (AssetsRecyclerView.this._parentContainer != null) {
                    iAdobeAssetContainerListViewDelegate = AssetsRecyclerView.this._parentContainer.get();
                }
                if (iAdobeAssetContainerListViewDelegate != null) {
                    if (AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
                        AssetsRecyclerView.this.startRefreshAnimation();
                        iAdobeAssetContainerListViewDelegate.reloadAssetItemsFromDataSourceDueToSwipeRefresh();
                    } else {
                        AssetsRecyclerView.this.stopRefreshAnimation();
                    }
                }
            }
        });
        this._layoutManager = getLayoutManager(context);
        this._recyclerView.setLayoutManager(this._layoutManager);
        this._assetsItemsAdapter = createAssetItemsAdapter(context);
        this._recyclerView.setAdapter(this._assetsItemsAdapter.getRealAdapter());
        this._recyclerView.setItemAnimator(null);
        this._itemDecoration = getItemDecoration(this._recyclerView, getHostActivity());
        if (!(this._assetsItemsAdapter instanceof CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter) && this._itemDecoration != null) {
            this._recyclerView.addItemDecoration(this._itemDecoration);
        }
        this._recyclerView.addItemDecoration(new AssetsListView.RecyclerViewBottomOffsetDecoration((int) context.getResources().getDimension(R.dimen.adobe_csdk_recylerview_padding_bottom_offset)));
        int color = Color.parseColor("#2098f5");
        int color2 = Color.parseColor("#f5f9fa");
        this._swipeRefreshLayout.setColorSchemeColors(color, color2, color, color2);
        attachScrollListenerToListView();
        setRecyclerPadding();
    }

    public void refreshOnlyListView() {
        this._recyclerView.getAdapter().notifyDataSetChanged();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToDataChange() {
        this._assetsItemsAdapter.invalidateAssetsList();
        this._assetsItemsAdapter.markDataSetChanged();
    }

    protected void resetFolderView(AssetListCellView assetListCellView, boolean z, boolean z2, boolean z3) {
    }

    public void refreshLayoutDueToOrientationChange() {
        int iFindFirstVisibleItemPosition;
        if (this._itemDecoration != null) {
            this._recyclerView.removeItemDecoration(this._itemDecoration);
        }
        if (this._layoutManager == null) {
            iFindFirstVisibleItemPosition = -1;
        } else if (this._layoutManager instanceof StaggeredGridLayoutManager) {
            if (this._layoutManager.getChildCount() > 0) {
                int[] iArr = new int[((StaggeredGridLayoutManager) this._layoutManager).getSpanCount()];
                ((StaggeredGridLayoutManager) this._layoutManager).findFirstVisibleItemPositions(iArr);
                iFindFirstVisibleItemPosition = iArr[0];
            } else {
                iFindFirstVisibleItemPosition = -1;
            }
            ((StaggeredGridLayoutManager) this._layoutManager).setSpanCount(ColumnCountUtil.getColumnCount(getHostActivity()));
        } else {
            iFindFirstVisibleItemPosition = this._layoutManager instanceof LinearLayoutManager ? ((LinearLayoutManager) this._layoutManager).findFirstVisibleItemPosition() : -1;
        }
        this._itemDecoration = getItemDecoration(this._recyclerView, getHostActivity());
        if (!(this._assetsItemsAdapter instanceof CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter) && this._itemDecoration != null) {
            this._recyclerView.addItemDecoration(this._itemDecoration);
        }
        refreshDueToDataChange();
        if (iFindFirstVisibleItemPosition != -1) {
            this._layoutManager.scrollToPosition(iFindFirstVisibleItemPosition);
        }
        setRecyclerPadding();
    }

    protected void loadAndDisplayLatestModifiedFileRendition(final AssetListCellView assetListCellView, final AdobeAssetData adobeAssetData, final int i) {
        ((AdobeAssetFolder) adobeAssetData.originalAsset).getPageData(new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.6
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(JSONObject jSONObject) {
                int iIntValue;
                int iIntValue2;
                UnsupportedEncodingException e2;
                AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref;
                ParsingDataException e3;
                AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref;
                try {
                    iIntValue = ((Integer) jSONObject.get("num_files")).intValue();
                } catch (JSONException e4) {
                    e4.printStackTrace();
                    iIntValue = 0;
                }
                try {
                    iIntValue2 = ((Integer) jSONObject.get("num_folders")).intValue();
                } catch (JSONException e5) {
                    e5.printStackTrace();
                    iIntValue2 = 0;
                }
                assetListCellView.setAssetsCount(iIntValue, iIntValue2);
                String str = (String) jSONObject.opt("name");
                String str2 = (String) jSONObject.opt("type");
                AdobeAssetFolder adobeAssetFolder = (AdobeAssetFolder) adobeAssetData.originalAsset;
                IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = AssetsRecyclerView.this._parentContainer != null ? AssetsRecyclerView.this._parentContainer.get() : null;
                boolean zIsContainerReadOnly = iAdobeAssetContainerListViewDelegate != null ? iAdobeAssetContainerListViewDelegate.isContainerReadOnly() : false;
                if (str == null || str2 == null) {
                    AssetsRecyclerView.this.resetFolderView(assetListCellView, true, adobeAssetFolder.isShared(), adobeAssetFolder.isReadOnly() || AssetsRecyclerView.this._parentContainer.get().isContainerReadOnly());
                    return;
                }
                String string = adobeAssetFolder.getHref().toString();
                try {
                    adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref((URLDecoder.decode(string, "UTF-8") + str).replace("%20", " "));
                } catch (ParsingDataException e6) {
                    e3 = e6;
                    adobeStorageResourceItemResourceFromHref = null;
                } catch (UnsupportedEncodingException e7) {
                    e2 = e7;
                    adobeStorageResourceItemResourceFromHref = null;
                }
                try {
                    adobeStorageResourceItemResourceFromHref.updateFromCollectionDictionary(jSONObject);
                } catch (ParsingDataException e8) {
                    e3 = e8;
                    e3.printStackTrace();
                } catch (UnsupportedEncodingException e9) {
                    e2 = e9;
                    e2.printStackTrace();
                }
                try {
                    adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(URLDecoder.decode(string, "UTF-8").replace("%20", " "));
                } catch (UnsupportedEncodingException e10) {
                    e10.printStackTrace();
                    adobeStorageResourceCollectionCollectionFromHref = null;
                }
                AdobeAssetFileInternal adobeAssetFileInternal = new AdobeAssetFileInternal(adobeStorageResourceItemResourceFromHref, adobeStorageResourceCollectionCollectionFromHref);
                if (assetListCellView.getPosition() == i) {
                    AssetsRecyclerView.this.resetFolderView(assetListCellView, false, adobeAssetFolder.isShared(), adobeAssetFolder.isReadOnly() || zIsContainerReadOnly);
                    AssetsRecyclerView.this.loadAndDisplayThumbnailForFolder(assetListCellView, AssetsRecyclerView.this.getCellDataFromAssetFile(adobeAssetFileInternal), i, adobeAssetFolder.isShared(), adobeAssetFolder.isReadOnly() || zIsContainerReadOnly);
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.7
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAndDisplayModifiedPhotoCount(final AssetListCellView assetListCellView, final AdobePhotoCollection adobePhotoCollection) {
        adobePhotoCollection.assetCount(new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.8
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Integer num) {
                if (assetListCellView.getGuid().equals(adobePhotoCollection.getGUID())) {
                    assetListCellView._photoCountView.setVisibility(0);
                    assetListCellView.setPhotoAssetsCount(num.intValue());
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsRecyclerView.9
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeAssetData getCellDataFromAssetFile(AdobeAssetFile adobeAssetFile) {
        AdobeAssetData adobeAssetData = new AdobeAssetData();
        adobeAssetData.guid = adobeAssetFile.getGUID();
        adobeAssetData.title = adobeAssetFile.getName();
        adobeAssetData.modificationDate = adobeAssetFile.getModificationDate();
        adobeAssetData.creationDate = adobeAssetFile.getCreationDate();
        adobeAssetData.optionalMetadata = adobeAssetFile.getOptionalMetadata();
        adobeAssetData.imageMD5Hash = adobeAssetFile.getMd5Hash();
        adobeAssetData.originalAsset = adobeAssetFile;
        adobeAssetData.fileSize = adobeAssetFile.getFileSize();
        return adobeAssetData;
    }

    private void setRecyclerPadding() {
        int dimensionPixelSize = this.context.getResources().getDimensionPixelSize(R.dimen.adobe_csdk_assetbrowser_grid_padding);
        this._recyclerView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, NavBarUtil.getTranslucentNavHeight(getHostActivity()) + dimensionPixelSize);
    }

    public class CellViewHolder extends RecyclerView.ViewHolder {
        AssetListCellView mainBaseListCellView;
        public int viewTypeId;

        public CellViewHolder(View view) {
            super(view);
        }
    }

    public class RecyclerViewInstanceState extends AssetsListView.InstanceState {
        public Parcelable _layoutManagerState;

        protected RecyclerViewInstanceState() {
            super();
        }
    }

    public abstract class AssetsListViewBaseAdapter extends RecyclerView.Adapter<CellViewHolder> {
        protected int IGNORE_ITEM_VIEW_TYPE = -1;
        private Boolean isLoki;

        protected abstract AssetListCellView createNewAssetCellView(ViewGroup viewGroup, int i);

        protected abstract AdobeAssetData getAssetItemData(int i);

        protected abstract int getAssetsCount();

        protected abstract void invalidateAssetsList();

        protected abstract boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData);

        protected abstract boolean isAssetHasThumbnail(AdobeAssetData adobeAssetData);

        protected abstract boolean isAssetSelectable(AdobeAssetData adobeAssetData);

        public AssetsListViewBaseAdapter(Context context) {
            this.isLoki = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(AssetsRecyclerView.this.getHostActivity()));
        }

        private void tryAspectRatioFromAssetData(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            JSONObject jSONObject = adobeAssetData.optionalMetadata;
            if (jSONObject != null && jSONObject.has("height") && jSONObject.has("width")) {
                try {
                    int i = jSONObject.getInt("height");
                    int i2 = jSONObject.getInt("width");
                    if (i > 0 && i2 > 0) {
                        assetListCellView.setAssetImageAspectRatioHint(i / i2);
                        return;
                    }
                } catch (JSONException e2) {
                }
            }
            if (adobeAssetData instanceof AdobeUploadAssetData) {
                AdobeUploadAssetData adobeUploadAssetData = (AdobeUploadAssetData) adobeAssetData;
                if (adobeUploadAssetData.rendition != null) {
                    int height = adobeUploadAssetData.rendition.getHeight();
                    int width = adobeUploadAssetData.rendition.getWidth();
                    if (height > 0 && width > 0) {
                        assetListCellView.setAssetImageAspectRatioHint(height / width);
                    }
                }
            }
        }

        protected void bindAssetCellViewToAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            assetListCellView.prepareForReuse();
            assetListCellView.setTitle(adobeAssetData.title);
            assetListCellView.setGuid(adobeAssetData.guid);
            if ((assetListCellView instanceof GenericStaggeredCellView) && !(assetListCellView instanceof AdobeUploadAssetCellViews.UploadAssetListCellView)) {
                assetListCellView.setSize(adobeAssetData.fileSize);
                assetListCellView.setModifiedDate(adobeAssetData.modificationDate);
            }
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = null;
            if (AssetsRecyclerView.this._parentContainer != null) {
                iAdobeAssetContainerListViewDelegate = AssetsRecyclerView.this._parentContainer.get();
            }
            boolean zIsContainerReadOnly = iAdobeAssetContainerListViewDelegate != null ? iAdobeAssetContainerListViewDelegate.isContainerReadOnly() : false;
            if (adobeAssetData.originalAsset instanceof AdobeAssetFolder) {
                AdobeAssetFolder adobeAssetFolder = (AdobeAssetFolder) adobeAssetData.originalAsset;
                assetListCellView.setShared(adobeAssetFolder.isShared());
                assetListCellView.setReadOnly(adobeAssetData.isReadOnly || zIsContainerReadOnly);
                assetListCellView.setHref(adobeAssetFolder.getHref().toString());
            }
            if (adobeAssetData.originalAsset instanceof AdobePhotoCollection) {
                assetListCellView._photoCountView.setVisibility(8);
                AssetsRecyclerView.this.loadAndDisplayModifiedPhotoCount(assetListCellView, (AdobePhotoCollection) adobeAssetData.originalAsset);
            }
            assetListCellView.setAssetsCount(0, 0);
            assetListCellView.setPosition(i);
            assetListCellView.setCellDelegate(AssetsRecyclerView.this);
            assetListCellView.setImageMD5(adobeAssetData.imageMD5Hash);
            if (isAssetSelectable(adobeAssetData)) {
                assetListCellView.markSelected(AssetsRecyclerView.this.isAssetSelected(adobeAssetData));
            }
            tryAspectRatioFromAssetData(assetListCellView, adobeAssetData);
            handlePostCellViewBinding(assetListCellView, adobeAssetData, i);
        }

        protected void handlePostCellViewBinding(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = null;
            if (AssetsRecyclerView.this._parentContainer != null) {
                iAdobeAssetContainerListViewDelegate = AssetsRecyclerView.this._parentContainer.get();
            }
            boolean zIsContainerReadOnly = iAdobeAssetContainerListViewDelegate != null ? iAdobeAssetContainerListViewDelegate.isContainerReadOnly() : false;
            if (adobeAssetData.originalAsset instanceof AdobeAssetFolder) {
                assetListCellView.getRootView().setOnDragListener(new UploadDragDropEventListener((AdobeAssetFolder) adobeAssetData.originalAsset, UploadDragDropEventListener.ListenerType.FOLDER, AssetsRecyclerView.this._parentContainer.get()));
            }
            if (isAssetHasThumbnail(adobeAssetData)) {
                AssetsRecyclerView.this.loadAndDisplayThumbnail(assetListCellView, adobeAssetData, i);
            } else {
                AssetsRecyclerView.this.resetFolderView(assetListCellView, true, ((AdobeAssetFolder) adobeAssetData.originalAsset).isShared(), adobeAssetData.isReadOnly || zIsContainerReadOnly);
                AssetsRecyclerView.this.loadAndDisplayLatestModifiedFileRendition(assetListCellView, adobeAssetData, i);
            }
        }

        public RecyclerView.Adapter getRealAdapter() {
            return this;
        }

        public void markDataSetChanged() {
            getRealAdapter().notifyDataSetChanged();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getAssetsCount();
        }

        public AdobeAssetData getItem(int i) {
            return getAssetItemData(i);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            AdobeAssetData assetItemData = getAssetItemData(i);
            if (assetItemData.originalAsset instanceof AdobeAssetFile) {
                return 0;
            }
            if (assetItemData.originalAsset instanceof AdobeAssetFolder) {
                return 1;
            }
            return this.IGNORE_ITEM_VIEW_TYPE;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public CellViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            AssetListCellView assetListCellViewCreateNewAssetCellView = createNewAssetCellView(viewGroup, i);
            CellViewHolder cellViewHolder = new CellViewHolder(assetListCellViewCreateNewAssetCellView.getRootView());
            cellViewHolder.viewTypeId = i;
            cellViewHolder.mainBaseListCellView = assetListCellViewCreateNewAssetCellView;
            return cellViewHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(CellViewHolder cellViewHolder, int i) {
            AssetListCellView assetListCellView;
            AdobeAssetData assetItemData = getAssetItemData(i);
            if (cellViewHolder.viewTypeId != getItemViewType(i)) {
                assetListCellView = null;
            } else {
                assetListCellView = cellViewHolder.mainBaseListCellView;
            }
            if (AssetsRecyclerView.this._assetsItemsAdapter instanceof CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter) {
                if (((CCFilesSectionListView.CCFilesAssetsSectionalListItemsAdapter) AssetsRecyclerView.this._assetsItemsAdapter).checkIfLastRowInSection(i)) {
                    if (assetListCellView._listDivider != null) {
                        assetListCellView._listDivider.setVisibility(8);
                    }
                } else if (assetListCellView._listDivider != null) {
                    assetListCellView._listDivider.setVisibility(0);
                }
            }
            boolean z = assetListCellView != null;
            if (z && assetListCellView.getPosition() == i) {
                z = !isAssetCellViewAlreadyRepresentAsset(assetListCellView, assetItemData);
            }
            if (z) {
                assetListCellView.setClickListener(new AssetClickListener(i));
            }
            if (!(AssetsRecyclerView.this.getHostActivity() instanceof IAdobeAssetViewBrowserFragmentExtraControlsHostActivity)) {
                if (this.isLoki.booleanValue() && z) {
                    assetListCellView.setContextMenuHandler(new AssetContextMenuClickListener(cellViewHolder.mainBaseListCellView, i, cellViewHolder.viewTypeId));
                }
            } else {
                assetListCellView.hidePopUpMenu();
            }
            if (z) {
                bindAssetCellViewToAsset(assetListCellView, assetItemData, i);
            }
            constructCoachMark(assetListCellView, assetItemData);
        }

        private void constructCoachMark(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
            boolean z = false;
            if ((adobeAssetData.originalAsset instanceof AdobeAssetFolder) && ((AdobeAssetFolder) adobeAssetData.originalAsset).getName().equalsIgnoreCase("screenshots")) {
                z = true;
            }
            if ((!AdobeAssetViewUtils.isFirstAsset || z) && AssetsRecyclerView.this._parentContainer != null && (iAdobeAssetContainerListViewDelegate = AssetsRecyclerView.this._parentContainer.get()) != null) {
                if (!z) {
                    AdobeAssetViewUtils.isFirstAsset = true;
                }
                iAdobeAssetContainerListViewDelegate.showCoachMarkForCellView(new AssetBrowserCoachMarkData(assetListCellView, z));
            }
        }

        public ArrayList<AdobeAssetData> getAllAssetsData() {
            int assetsCount = getAssetsCount();
            ArrayList<AdobeAssetData> arrayList = new ArrayList<>(assetsCount);
            for (int i = 0; i < assetsCount; i++) {
                arrayList.add(getAssetItemData(i));
            }
            return arrayList;
        }

        class AssetClickListener implements View.OnClickListener {
            int mPosition;

            public AssetClickListener(int i) {
                this.mPosition = 0;
                this.mPosition = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AssetsRecyclerView.this.handleListItemClick(this.mPosition);
            }
        }

        class AssetContextMenuClickListener implements View.OnClickListener {
            private AssetListCellView mAssetView;
            private int mPosition;
            private int mViewType;

            public AssetContextMenuClickListener(AssetListCellView assetListCellView, int i, int i2) {
                this.mAssetView = assetListCellView;
                this.mPosition = i;
                this.mViewType = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AssetsRecyclerView.this.handlePopupMenuClick(this.mPosition, view);
            }
        }
    }
}
