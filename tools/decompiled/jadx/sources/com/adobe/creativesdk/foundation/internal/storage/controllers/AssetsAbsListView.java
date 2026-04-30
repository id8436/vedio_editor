package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Parcelable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AssetsAbsListView extends AssetsListView implements IAdobeAssetViewListCellDelegate {
    protected AbsListView _absListView;
    protected AssetsListViewBaseAdapter _assetsItemsAdapter;
    protected View _mainRootView;
    private AbsListView.OnScrollListener _onScrollListener;
    private final HashMap<String, AdobeAssetData> _requestedThumbnails;
    protected SwipeRefreshLayout _swipeRefreshLayout;

    interface IThumbnailLoadCompletionHandler {
        void onComplete(AdobeAssetData adobeAssetData, Bitmap bitmap, boolean z);
    }

    abstract void cancelThumbnailRenditionRequestOfAsset(AdobeAssetData adobeAssetData);

    protected abstract AssetsListViewBaseAdapter createAssetItemsAdapter(Context context);

    protected abstract AbsListView getConcreteAbsListView(Context context);

    protected abstract View getMainRootView(Context context);

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewListCellDelegate
    public abstract void handleAssetCellSelectionToggle(AssetListCellView assetListCellView);

    protected abstract void handleListItemClick(int i);

    protected abstract boolean isAssetSelected(AdobeAssetData adobeAssetData);

    protected abstract boolean loadAssetRendition(AdobeAssetData adobeAssetData, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericRequestCallback<byte[], AdobeCSDKException> iAdobeGenericRequestCallback);

    public AssetsAbsListView(Context context) {
        super(context);
        this._onScrollListener = new AbsListView.OnScrollListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (i == 0) {
                    AssetsAbsListView.this.handleScrollOffsetChange();
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                AssetsAbsListView.this._assetsItemsAdapter.onScroll(absListView, i, i2, i3);
            }
        };
        this._requestedThumbnails = new HashMap<>();
    }

    public class AbsListInstanceState extends AssetsListView.InstanceState {
        public Parcelable _listViewState;

        protected AbsListInstanceState() {
            super();
        }
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
        AbsListInstanceState absListInstanceState = new AbsListInstanceState();
        absListInstanceState._listViewState = this._absListView.onSaveInstanceState();
        return absListInstanceState;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void restoreFromState(AssetsListView.InstanceState instanceState) {
        if (instanceState instanceof AbsListInstanceState) {
            this._absListView.onRestoreInstanceState(((AbsListInstanceState) instanceState)._listViewState);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public View getMainView() {
        return this._mainRootView;
    }

    Bitmap getBitmapFromBytesData(byte[] bArr) {
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
    }

    protected boolean shouldFilterOutAsset(AdobeAssetData adobeAssetData) {
        return false;
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
        loadThumbnail(adobeAssetData, new IThumbnailLoadCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView.2
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView.IThumbnailLoadCompletionHandler
            public void onComplete(AdobeAssetData adobeAssetData3, Bitmap bitmap, boolean z) {
                if (assetListCellView.getPosition() == i) {
                    assetListCellView.displayThumnail(bitmap, zShouldFilterOutAsset ? 0.3f : 1.0f, true);
                    if ((adobeAssetData3.originalAsset instanceof AdobeAsset) && assetListCellView._videoDuration != null && assetListCellView._videoIndicator != null) {
                        AdobeAsset adobeAsset = (AdobeAsset) adobeAssetData3.originalAsset;
                        if (adobeAsset instanceof AdobeAssetFileInternal) {
                            AdobeAssetFileInternal adobeAssetFileInternal = (AdobeAssetFileInternal) adobeAsset;
                            if (adobeAssetFileInternal.canStreamVideo()) {
                                int videoDuration = adobeAssetFileInternal.getVideoDuration();
                                String str = String.format("%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(videoDuration)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(videoDuration) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(videoDuration))));
                                assetListCellView._videoLayout.setVisibility(0);
                                assetListCellView._bottomInfoLayout.setVisibility(8);
                                assetListCellView._videoDuration.setText(str);
                                assetListCellView._videoIndicator.setImageResource(R.drawable.video_indicator);
                                return;
                            }
                            assetListCellView._videoLayout.setVisibility(8);
                            assetListCellView._bottomInfoLayout.setVisibility(0);
                        }
                    }
                }
            }
        });
    }

    void loadThumbnail(final AdobeAssetData adobeAssetData, final IThumbnailLoadCompletionHandler iThumbnailLoadCompletionHandler) {
        IAdobeGenericRequestCallback<byte[], AdobeCSDKException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                AssetsAbsListView.this._requestedThumbnails.remove(adobeAssetData.guid);
                iThumbnailLoadCompletionHandler.onComplete(adobeAssetData, null, false);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
                AssetsAbsListView.this._requestedThumbnails.remove(adobeAssetData.guid);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView$3$1DecodeImageInBackgroundTask] */
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(byte[] bArr) {
                AssetsAbsListView.this._requestedThumbnails.remove(adobeAssetData.guid);
                new AsyncTask<byte[], Integer, Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView.3.1DecodeImageInBackgroundTask
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
                        if (bitmap != null) {
                            iThumbnailLoadCompletionHandler.onComplete(adobeAssetData, bitmap, false);
                        } else {
                            iThumbnailLoadCompletionHandler.onComplete(adobeAssetData, null, false);
                        }
                    }
                }.execute(bArr);
            }
        };
        this._requestedThumbnails.put(adobeAssetData.guid, adobeAssetData);
        loadAssetRendition(adobeAssetData, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adjustRenditionSizeBasedOnDeviceScale(AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION), iAdobeGenericRequestCallback);
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

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void startRefreshAnimation() {
        this._swipeRefreshLayout.setRefreshing(true);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void stopRefreshAnimation() {
        this._swipeRefreshLayout.setRefreshing(false);
    }

    void handleScrollOffsetChange() {
        IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate;
        int firstVisiblePosition = this._absListView.getFirstVisiblePosition();
        int lastVisiblePosition = this._absListView.getLastVisiblePosition();
        int count = this._assetsItemsAdapter.getCount();
        if (count != 0 && ((double) lastVisiblePosition) / ((double) (count - (lastVisiblePosition - firstVisiblePosition))) > 0.8d && this._parentContainer != null && (iAdobeAssetContainerListViewDelegate = this._parentContainer.get()) != null) {
            iAdobeAssetContainerListViewDelegate.loadMoreItemsFromDataSource();
        }
    }

    protected void attachScrollListenerToListView() {
        this._absListView.setOnScrollListener(this._onScrollListener);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void performInitialization(Context context) {
        this._mainRootView = getMainRootView(context);
        this._absListView = getConcreteAbsListView(context);
        this._swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView.4
            @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate = null;
                if (AssetsAbsListView.this._parentContainer != null) {
                    iAdobeAssetContainerListViewDelegate = AssetsAbsListView.this._parentContainer.get();
                }
                if (iAdobeAssetContainerListViewDelegate != null) {
                    if (AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
                        AssetsAbsListView.this.startRefreshAnimation();
                        iAdobeAssetContainerListViewDelegate.reloadAssetItemsFromDataSourceDueToSwipeRefresh();
                    } else {
                        AssetsAbsListView.this.stopRefreshAnimation();
                    }
                }
            }
        });
        this._assetsItemsAdapter = createAssetItemsAdapter(context);
        this._absListView.setAdapter((ListAdapter) this._assetsItemsAdapter.getRealAdapter());
        int color = Color.parseColor("#2098f5");
        int color2 = Color.parseColor("#f5f9fa");
        this._swipeRefreshLayout.setColorSchemeColors(color, color2, color, color2);
        attachScrollListenerToListView();
        this._absListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AssetsAbsListView.this.handleListItemClick(i);
            }
        });
        this._absListView.setLongClickable(true);
        this._absListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsAbsListView.6
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
                AssetsAbsListView.this.handleListItemLongClick(i);
                return true;
            }
        });
    }

    protected void handleListItemLongClick(int i) {
        handleListItemClick(i);
    }

    public void refreshOnlyListView() {
        ((BaseAdapter) this._absListView.getAdapter()).notifyDataSetChanged();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetsListView
    public void refreshDueToDataChange() {
        this._assetsItemsAdapter.invalidateAssetsList();
        this._assetsItemsAdapter.markDataSetChanged();
    }

    public abstract class AssetsListViewBaseAdapter extends ArrayAdapter<AdobeAssetData> {
        protected abstract AssetListCellView createNewAssetCellView(ViewGroup viewGroup, int i);

        protected abstract AdobeAssetData getAssetItemData(int i);

        protected abstract int getAssetsCount();

        protected abstract void invalidateAssetsList();

        protected abstract boolean isAssetCellViewAlreadyRepresentAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData);

        protected abstract boolean isAssetHasThumbnail(AdobeAssetData adobeAssetData);

        protected abstract boolean isAssetSelectable(AdobeAssetData adobeAssetData);

        public AssetsListViewBaseAdapter(Context context, int i) {
            super(context, i);
        }

        public BaseAdapter getRealAdapter() {
            return this;
        }

        public void markDataSetChanged() {
            getRealAdapter().notifyDataSetChanged();
        }

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public int getCount() {
            return getAssetsCount();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public AdobeAssetData getItem(int i) {
            return getAssetItemData(i);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        protected View createDummyView(ViewGroup viewGroup) {
            return null;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            AssetListCellView assetListCellView;
            View rootView;
            boolean z;
            CellViewHolder cellViewHolder;
            boolean z2 = true;
            AdobeAssetData assetItemData = getAssetItemData(i);
            if (i < 0 || i >= getCount()) {
                return createDummyView(viewGroup);
            }
            AssetListCellView assetListCellView2 = (view == null || (cellViewHolder = (CellViewHolder) view.getTag()) == null || cellViewHolder.viewTypeId != getItemViewType(i)) ? null : cellViewHolder.mainBaseListCellView;
            if (assetListCellView2 == null) {
                AssetListCellView assetListCellViewCreateNewAssetCellView = createNewAssetCellView(viewGroup, i);
                rootView = assetListCellViewCreateNewAssetCellView.getRootView();
                CellViewHolder cellViewHolder2 = new CellViewHolder();
                cellViewHolder2.viewTypeId = getItemViewType(i);
                cellViewHolder2.mainBaseListCellView = assetListCellViewCreateNewAssetCellView;
                rootView.setTag(cellViewHolder2);
                assetListCellView = assetListCellViewCreateNewAssetCellView;
                z = false;
            } else {
                assetListCellView = assetListCellView2;
                rootView = view;
                z = true;
            }
            if (z && assetListCellView.getPosition() == i) {
                z2 = !isAssetCellViewAlreadyRepresentAsset(assetListCellView, assetItemData);
            }
            if (z2) {
                bindAssetCellViewToAsset(assetListCellView, assetItemData, i);
            }
            return rootView;
        }

        private void tryAspectRatioFromAssetData(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData) {
            JSONObject jSONObject = adobeAssetData.optionalMetadata;
            if (jSONObject != null && jSONObject.has("height") && jSONObject.has("width")) {
                try {
                    int i = jSONObject.getInt("height");
                    int i2 = jSONObject.getInt("width");
                    if (i > 0 && i2 > 0) {
                        assetListCellView.setAssetImageAspectRatioHint(i / i2);
                    }
                } catch (JSONException e2) {
                }
            }
        }

        protected void bindAssetCellViewToAsset(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            assetListCellView.prepareForReuse();
            assetListCellView.setTitle(adobeAssetData.title);
            assetListCellView.setGuid(adobeAssetData.guid);
            assetListCellView.setPosition(i);
            assetListCellView.setCellDelegate(AssetsAbsListView.this);
            assetListCellView.setImageMD5(adobeAssetData.imageMD5Hash);
            if (isAssetSelectable(adobeAssetData)) {
                assetListCellView.markSelected(AssetsAbsListView.this.isAssetSelected(adobeAssetData));
            }
            tryAspectRatioFromAssetData(assetListCellView, adobeAssetData);
            handlePostCellViewBinding(assetListCellView, adobeAssetData, i);
        }

        protected void handlePostCellViewBinding(AssetListCellView assetListCellView, AdobeAssetData adobeAssetData, int i) {
            if (isAssetHasThumbnail(adobeAssetData)) {
                AssetsAbsListView.this.loadAndDisplayThumbnail(assetListCellView, adobeAssetData, i);
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

        class CellViewHolder {
            AssetListCellView mainBaseListCellView;
            public int viewTypeId;

            private CellViewHolder() {
            }
        }
    }
}
