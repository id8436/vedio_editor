package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.RecyclerItemClickListener;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetAutoFitRecyclerViewController {
    protected RecyclerView _absRecyclerView;
    protected boolean _areCellsVisible;
    protected AdobeAsset _asset;
    protected AdobeOneUpRecyclerViewBaseAdapter _assetsItemsAdapter;
    AdobeMultiPageFragmentController _fragmentController;
    protected LinearLayoutManager _layoutManager;
    protected View _mainRootView;
    protected TextView _multiPageSectionalTextView;
    protected View _mutiPageSectionalHeader;
    protected View _nointernet;
    protected Context _oneUpViewContext;
    private WeakReference<ReusableImageBitmapWorker> _reusableBitmapCacheWorker;
    protected View _spinner;
    protected View no_network_banner;
    protected int num_pages = 1;
    private boolean isNetworkOnline = true;

    public void setFragmentController(AdobeMultiPageFragmentController adobeMultiPageFragmentController) {
        this._fragmentController = adobeMultiPageFragmentController;
    }

    public View getMainView() {
        return this._mainRootView;
    }

    protected View getMainRootView() {
        this._absRecyclerView = (RecyclerView) this._mainRootView.findViewById(R.id.adobe_csdk_multipage_recyclerview);
        this._mutiPageSectionalHeader = this._mainRootView.findViewById(R.id.adobe_csdk_asset_one_up_multi_page_recycler_section_container);
        this._multiPageSectionalTextView = (TextView) this._mainRootView.findViewById(R.id.adobe_csdk_asset_one_up_multi_page_recycler_section_textview);
        return this._mainRootView;
    }

    public void setAsset(AdobeAsset adobeAsset) {
        this._asset = adobeAsset;
    }

    public void setMainRootView(View view) {
        this._mainRootView = view;
    }

    protected AdobeOneUpRecyclerViewBaseAdapter createRecyclerViewAdapter() {
        return new AdobeOneUpRecyclerViewBaseAdapter();
    }

    private int checkPageCount(AdobeAsset adobeAsset) {
        if (!(adobeAsset instanceof AdobeAssetFile)) {
            return 0;
        }
        AdobeAssetFile adobeAssetFile = (AdobeAssetFile) adobeAsset;
        if (adobeAssetFile.getOptionalMetadata() != null) {
            this.num_pages = adobeAssetFile.getOptionalMetadata().optInt(AdobeStorageSession.PAGES, 1);
        }
        return this.num_pages;
    }

    public void performInitialization(Context context) {
        getMainRootView();
        this._oneUpViewContext = context;
        this._layoutManager = (LinearLayoutManager) this._absRecyclerView.getLayoutManager();
        this._assetsItemsAdapter = createRecyclerViewAdapter();
        this._absRecyclerView.setAdapter(this._assetsItemsAdapter);
        this._mutiPageSectionalHeader.setVisibility(0);
        this._mutiPageSectionalHeader.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetAutoFitRecyclerViewController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeAssetAutoFitRecyclerViewController.this._fragmentController.displayListView();
            }
        });
        this._absRecyclerView.addOnItemTouchListener(new RecyclerItemClickListener(context, this._absRecyclerView, new RecyclerItemClickListener.OnItemClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetAutoFitRecyclerViewController.2
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.RecyclerItemClickListener.OnItemClickListener
            public void onItemClick(View view, int i) {
                AdobeAssetAutoFitRecyclerViewController.this._fragmentController.setState(AdobeMultiPageViewState.AdobeMultiPageGridView);
                AdobeAssetAutoFitRecyclerViewController.this._fragmentController.displayViewPager(i);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.RecyclerItemClickListener.OnItemClickListener
            public void onItemLongClick(View view, int i) {
            }
        }));
        this._multiPageSectionalTextView.setText(String.format(this._oneUpViewContext.getResources().getString(R.string.adobe_csdk_asset_view_multi_page_count), Integer.valueOf(checkPageCount(this._asset))));
        this._absRecyclerView.addItemDecoration(new MarginDecoration(this._oneUpViewContext));
        this._spinner = this._mainRootView.findViewById(R.id.adobe_csdk_asset_image_progressbar_new);
        this._nointernet = this._mainRootView.findViewById(R.id.adobe_csdk_asset_viewer_no_internet_connection);
        this.no_network_banner = this._mainRootView.findViewById(R.id.adobe_csdk_gridview_container_no_network_notification_bar);
        if (!AdobeUXAssetOneUpViewerActivity.isNetworkAvailable()) {
            this._nointernet.setVisibility(0);
            this.isNetworkOnline = false;
        } else {
            this._spinner.setVisibility(0);
        }
        this._areCellsVisible = false;
    }

    private boolean isNetworkOnline() {
        return this.isNetworkOnline;
    }

    public void wentOffline() {
        this.isNetworkOnline = false;
        if (this._areCellsVisible) {
            this.no_network_banner.setVisibility(0);
            this._nointernet.setVisibility(8);
        } else {
            this._nointernet.setVisibility(0);
            this.no_network_banner.setVisibility(4);
            this._spinner.setVisibility(4);
        }
    }

    public void wentOnline() {
        this.isNetworkOnline = true;
        this.no_network_banner.setVisibility(4);
        this._nointernet.setVisibility(4);
        if (!this._areCellsVisible) {
            this._spinner.setVisibility(0);
            requestRelayout();
        }
    }

    public void setReuseableBitmapCacheWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        if (reusableImageBitmapWorker != null) {
            this._reusableBitmapCacheWorker = new WeakReference<>(reusableImageBitmapWorker);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAssetImageData(byte[] bArr, final AdobeAssetAutoFitRecyclerCellView adobeAssetAutoFitRecyclerCellView, AdobeAssetImageDimensions adobeAssetImageDimensions, final int i) {
        if (this._mainRootView != null) {
            ReusableImageBitmapWorker validReusableWorker = getValidReusableWorker();
            if (bArr != null && validReusableWorker != null) {
                validReusableWorker.loadImageWithData(AdobeStorageUtils.cacheKeyForAsset(this._asset, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i), bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetAutoFitRecyclerViewController.3
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(BitmapDrawable bitmapDrawable) {
                        if (AdobeAssetAutoFitRecyclerViewController.this._mainRootView != null && bitmapDrawable != null) {
                            adobeAssetAutoFitRecyclerCellView.displayThumbnail(bitmapDrawable, i);
                            if (!AdobeAssetAutoFitRecyclerViewController.this._areCellsVisible) {
                                AdobeAssetAutoFitRecyclerViewController.this._areCellsVisible = true;
                                AdobeAssetAutoFitRecyclerViewController.this.handleImageCellVisibilty();
                            }
                            AdobeAssetAutoFitRecyclerViewController.this._areCellsVisible = true;
                            AdobeAssetAutoFitRecyclerViewController.this._spinner.setVisibility(4);
                        }
                    }
                }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetAutoFitRecyclerViewController.4
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                    }
                });
                return;
            }
            if (bArr != null) {
                adobeAssetAutoFitRecyclerCellView.displayThumbnail(BitmapFactory.decodeByteArray(bArr, 0, bArr.length), i);
                if (!this._areCellsVisible) {
                    this._areCellsVisible = true;
                    handleImageCellVisibilty();
                }
                this._areCellsVisible = true;
                this._spinner.setVisibility(4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleImageCellVisibilty() {
        if (!isNetworkOnline()) {
            this._fragmentController.wentOffline();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ReusableImageBitmapWorker getValidReusableWorker() {
        if (this._reusableBitmapCacheWorker != null) {
            return this._reusableBitmapCacheWorker.get();
        }
        return null;
    }

    public void requestRelayout() {
        this._assetsItemsAdapter.notifyDataSetChanged();
    }

    public class AdobeOneUpRecyclerViewBaseAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        protected AdobeOneUpRecyclerViewBaseAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public AdobeOneUpRecyclerCellViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new AdobeOneUpRecyclerCellViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.adobe_multipage_autorecycler_cellview, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
            BitmapDrawable bitmapDrawableLoadImage;
            boolean z = false;
            final AdobeAssetAutoFitRecyclerCellView cellView = ((AdobeOneUpRecyclerCellViewHolder) viewHolder).getCellView();
            cellView.setCellPos(i);
            cellView.prepareForReuse();
            cellView.getRootView().measure(0, 0);
            final AdobeAssetImageDimensions adobeAssetImageDimensions = new AdobeAssetImageDimensions(cellView.getRootView().getMeasuredWidth(), cellView.getRootView().getMeasuredHeight());
            if (AdobeAssetAutoFitRecyclerViewController.this._asset instanceof AdobeAssetFile) {
                IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetAutoFitRecyclerViewController.AdobeOneUpRecyclerViewBaseAdapter.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                        AdobeAssetAutoFitRecyclerViewController.this.handleAssetImageData(null, cellView, adobeAssetImageDimensions, i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        AdobeAssetAutoFitRecyclerViewController.this.handleAssetImageData(bArr, cellView, adobeAssetImageDimensions, i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        AdobeAssetAutoFitRecyclerViewController.this.handleAssetImageData(null, cellView, adobeAssetImageDimensions, i);
                    }
                };
                ReusableImageBitmapWorker validReusableWorker = AdobeAssetAutoFitRecyclerViewController.this.getValidReusableWorker();
                if (validReusableWorker == null || (bitmapDrawableLoadImage = validReusableWorker.loadImage(AdobeStorageUtils.cacheKeyForAsset(AdobeAssetAutoFitRecyclerViewController.this._asset, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i))) == null) {
                    z = true;
                } else {
                    cellView.displayThumbnail(bitmapDrawableLoadImage, i);
                    AdobeAssetAutoFitRecyclerViewController.this._areCellsVisible = true;
                    AdobeAssetAutoFitRecyclerViewController.this._spinner.setVisibility(4);
                }
                if (z) {
                    ((AdobeAssetFile) AdobeAssetAutoFitRecyclerViewController.this._asset).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i, iAdobeGenericRequestCallback);
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (!(AdobeAssetAutoFitRecyclerViewController.this._asset instanceof AdobeAssetFile)) {
                return -1;
            }
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) AdobeAssetAutoFitRecyclerViewController.this._asset;
            if (adobeAssetFile.getOptionalMetadata() != null) {
                AdobeAssetAutoFitRecyclerViewController.this.num_pages = adobeAssetFile.getOptionalMetadata().optInt(AdobeStorageSession.PAGES, 1);
            }
            return AdobeAssetAutoFitRecyclerViewController.this.num_pages;
        }

        class AdobeOneUpRecyclerCellViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            AdobeAssetAutoFitRecyclerCellView imageCellView;

            public AdobeOneUpRecyclerCellViewHolder(View view) {
                super(view);
                this.imageCellView = new AdobeAssetAutoFitRecyclerCellView();
                this.imageCellView.setMainRootView(view);
                this.imageCellView.setDisplayMetrics(AdobeAssetAutoFitRecyclerViewController.this._oneUpViewContext.getResources().getDisplayMetrics());
                this.imageCellView.performInitialization(AdobeAssetAutoFitRecyclerViewController.this._oneUpViewContext);
            }

            public AdobeAssetAutoFitRecyclerCellView getCellView() {
                return this.imageCellView;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }
    }
}
