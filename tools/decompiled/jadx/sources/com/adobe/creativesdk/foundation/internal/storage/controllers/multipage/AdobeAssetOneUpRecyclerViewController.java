package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeOneUpCellViewController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.RecyclerListTouchListener;
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
public class AdobeAssetOneUpRecyclerViewController {
    static int height = -1;
    static int width = -1;
    protected RecyclerView _absRecyclerView;
    protected AdobeAsset _asset;
    protected AdobeOneUpRecyclerViewBaseAdapter _assetsItemsAdapter;
    AdobeMultiPageFragmentController _fragmentController;
    protected LinearLayoutManager _layoutManager;
    protected View _mainRootView;
    protected TextView _multiPageSectionalTextView;
    protected View _mutiPageSectionalHeader;
    protected View _noInternetConnectionBanner;
    protected Context _oneUpViewContext;
    private WeakReference<ReusableImageBitmapWorker> _reusableBitmapCacheWorker;
    protected int num_pages = 1;
    private int _imageWidth = -1;
    private int _imageHeight = -1;

    public void setFragmentController(AdobeMultiPageFragmentController adobeMultiPageFragmentController) {
        this._fragmentController = adobeMultiPageFragmentController;
    }

    public AdobeAssetViewerController getAssetViewerController() {
        return null;
    }

    public View getMainView() {
        return this._mainRootView;
    }

    protected View getMainRootView() {
        this._absRecyclerView = (RecyclerView) this._mainRootView.findViewById(R.id.adobe_csdk_multipage_recyclerview);
        this._noInternetConnectionBanner = this._mainRootView.findViewById(R.id.adobe_csdk_listview_container_no_network_notification_bar);
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
        this._layoutManager = new LinearLayoutManager(context);
        this._layoutManager.setOrientation(1);
        this._layoutManager.setSmoothScrollbarEnabled(false);
        this._absRecyclerView.setLayoutManager(this._layoutManager);
        this._assetsItemsAdapter = createRecyclerViewAdapter();
        this._absRecyclerView.setAdapter(this._assetsItemsAdapter);
        this._absRecyclerView.setHasFixedSize(true);
        this._mutiPageSectionalHeader.setVisibility(0);
        this._multiPageSectionalTextView.setText(String.format(this._oneUpViewContext.getResources().getString(R.string.adobe_csdk_asset_view_multi_page_numbering), 1, Integer.valueOf(checkPageCount(this._asset))));
        this._mutiPageSectionalHeader.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeAssetOneUpRecyclerViewController.this._fragmentController.displayGridView();
            }
        });
        this._absRecyclerView.addItemDecoration(new MarginDecoration(this._oneUpViewContext));
        this._absRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.2
            /* JADX WARN: Removed duplicated region for block: B:36:0x00a5  */
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onScrolled(android.support.v7.widget.RecyclerView r9, int r10, int r11) {
                /*
                    r8 = this;
                    r7 = 1
                    r2 = -1
                    r1 = 0
                    com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController r0 = com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.this
                    int r0 = r0.num_pages
                    if (r0 <= r7) goto L89
                    com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController r0 = com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.this
                    android.support.v7.widget.LinearLayoutManager r0 = r0._layoutManager
                    int r4 = r0.findFirstVisibleItemPosition()
                    com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController r0 = com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.this
                    android.support.v7.widget.LinearLayoutManager r0 = r0._layoutManager
                    int r0 = r0.findLastVisibleItemPosition()
                    if (r4 == r2) goto La5
                    if (r0 == r2) goto La5
                    com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController r0 = com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.this
                    android.support.v7.widget.LinearLayoutManager r0 = r0._layoutManager
                    android.view.View r2 = r0.findViewByPosition(r4)
                    com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController r0 = com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.this
                    android.support.v7.widget.LinearLayoutManager r0 = r0._layoutManager
                    int r3 = r4 + 1
                    android.view.View r5 = r0.findViewByPosition(r3)
                    if (r2 == 0) goto La5
                    if (r5 == 0) goto La5
                    int r0 = r2.getTop()
                    if (r0 >= 0) goto L8a
                    r0 = r1
                L3a:
                    int r3 = r2.getBottom()
                    if (r3 >= 0) goto L8f
                    r2 = r1
                L41:
                    int r3 = r5.getTop()
                    if (r3 >= 0) goto L94
                    r3 = r1
                L48:
                    int r6 = r5.getBottom()
                    if (r6 >= 0) goto L99
                    r5 = r1
                L4f:
                    if (r0 <= r2) goto L9e
                    int r0 = r0 - r2
                    r2 = r0
                L53:
                    if (r3 <= r5) goto La2
                    int r0 = r3 - r5
                L57:
                    if (r0 <= r2) goto La5
                    int r0 = r4 + 1
                L5b:
                    com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController r2 = com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.this
                    android.widget.TextView r2 = r2._multiPageSectionalTextView
                    com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController r3 = com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.this
                    android.content.Context r3 = r3._oneUpViewContext
                    android.content.res.Resources r3 = r3.getResources()
                    int r4 = com.adobe.creativesdk.foundation.assetux.R.string.adobe_csdk_asset_view_multi_page_numbering
                    java.lang.String r3 = r3.getString(r4)
                    r4 = 2
                    java.lang.Object[] r4 = new java.lang.Object[r4]
                    int r0 = r0 + 1
                    java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                    r4[r1] = r0
                    com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController r0 = com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.this
                    int r0 = r0.num_pages
                    java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                    r4[r7] = r0
                    java.lang.String r0 = java.lang.String.format(r3, r4)
                    r2.setText(r0)
                L89:
                    return
                L8a:
                    int r0 = r2.getTop()
                    goto L3a
                L8f:
                    int r2 = r2.getBottom()
                    goto L41
                L94:
                    int r3 = r5.getTop()
                    goto L48
                L99:
                    int r5 = r5.getBottom()
                    goto L4f
                L9e:
                    int r0 = r2 - r0
                    r2 = r0
                    goto L53
                La2:
                    int r0 = r5 - r3
                    goto L57
                La5:
                    r0 = r4
                    goto L5b
                */
                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.AnonymousClass2.onScrolled(android.support.v7.widget.RecyclerView, int, int):void");
            }

            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            }
        });
    }

    public void requestRelayout() {
        this._assetsItemsAdapter.notifyDataSetChanged();
    }

    public void setReuseableBitmapCacheWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        if (reusableImageBitmapWorker != null) {
            this._reusableBitmapCacheWorker = new WeakReference<>(reusableImageBitmapWorker);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAssetImageData(byte[] bArr, final AdobeAssetOneUpRecyclerCellView adobeAssetOneUpRecyclerCellView, AdobeAssetImageDimensions adobeAssetImageDimensions, final int i) {
        if (this._mainRootView != null) {
            if (bArr == null) {
                adobeAssetOneUpRecyclerCellView.handleNoPreview();
                return;
            }
            ReusableImageBitmapWorker validReusableWorker = getValidReusableWorker();
            if (validReusableWorker != null) {
                validReusableWorker.loadImageWithData(AdobeStorageUtils.cacheKeyForAsset(this._asset, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i), bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.3
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(BitmapDrawable bitmapDrawable) {
                        if (AdobeAssetOneUpRecyclerViewController.this._mainRootView != null) {
                            if (bitmapDrawable == null) {
                                adobeAssetOneUpRecyclerCellView.handleNoPreview();
                            } else {
                                adobeAssetOneUpRecyclerCellView.displayThumbnail(bitmapDrawable, i);
                            }
                        }
                    }
                }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.4
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        adobeAssetOneUpRecyclerCellView.handleNoPreview();
                    }
                });
                return;
            }
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            if (bitmapDecodeByteArray == null) {
                adobeAssetOneUpRecyclerCellView.handleNoPreview();
            }
            adobeAssetOneUpRecyclerCellView.displayThumbnail(bitmapDecodeByteArray, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ReusableImageBitmapWorker getValidReusableWorker() {
        if (this._reusableBitmapCacheWorker != null) {
            return this._reusableBitmapCacheWorker.get();
        }
        return null;
    }

    public void wentOnline() {
        if (this._noInternetConnectionBanner != null) {
            this._noInternetConnectionBanner.setVisibility(8);
        }
    }

    public void wentOffline() {
        if (this._noInternetConnectionBanner != null) {
            this._noInternetConnectionBanner.setVisibility(0);
        }
    }

    public class AdobeOneUpRecyclerViewBaseAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements IAdobeOneUpCellViewController, IAdobeNoPreviewSizeHandler {
        protected AdobeOneUpRecyclerViewBaseAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public AdobeOneUpRecyclerCellViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.adobe_multipage_recycler_cellview, viewGroup, false);
            final AdobeOneUpRecyclerCellViewHolder adobeOneUpRecyclerCellViewHolder = new AdobeOneUpRecyclerCellViewHolder(viewInflate, this);
            viewInflate.setOnTouchListener(new RecyclerListTouchListener(AdobeAssetOneUpRecyclerViewController.this._oneUpViewContext, new RecyclerListTouchListener.OnTouchListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.AdobeOneUpRecyclerViewBaseAdapter.1
                @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.RecyclerListTouchListener.OnTouchListener
                public void performAction() {
                    AdobeAssetOneUpRecyclerViewController.this._fragmentController.setState(AdobeMultiPageViewState.AdobeMultiPageListView);
                    AdobeAssetOneUpRecyclerViewController.this._fragmentController.displayViewPager(adobeOneUpRecyclerCellViewHolder.getAdapterPosition());
                }
            }));
            adobeOneUpRecyclerCellViewHolder.getCellView().setNoPreviewHandler(this);
            return adobeOneUpRecyclerCellViewHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
            BitmapDrawable bitmapDrawableLoadImage;
            final AdobeAssetOneUpRecyclerCellView cellView = ((AdobeOneUpRecyclerCellViewHolder) viewHolder).getCellView();
            cellView.setCellPos(i);
            cellView.prepareForReuse();
            DisplayMetrics displayMetrics = AdobeAssetOneUpRecyclerViewController.this._oneUpViewContext.getResources().getDisplayMetrics();
            if (AdobeAssetOneUpRecyclerViewController.this._imageWidth == -1 || AdobeAssetOneUpRecyclerViewController.this._imageHeight == -1) {
                AdobeAssetOneUpRecyclerViewController.this._imageWidth = (int) (((double) displayMetrics.widthPixels) * 0.7d);
                AdobeAssetOneUpRecyclerViewController.this._imageHeight = (int) (((double) displayMetrics.heightPixels) * 0.7d);
            }
            final AdobeAssetImageDimensions adobeAssetImageDimensions = new AdobeAssetImageDimensions(AdobeAssetOneUpRecyclerViewController.this._imageWidth, AdobeAssetOneUpRecyclerViewController.this._imageHeight);
            if (AdobeAssetOneUpRecyclerViewController.this._asset instanceof AdobeAssetFile) {
                IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeAssetOneUpRecyclerViewController.AdobeOneUpRecyclerViewBaseAdapter.2
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                        AdobeAssetOneUpRecyclerViewController.this.handleAssetImageData(null, cellView, adobeAssetImageDimensions, i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        AdobeAssetOneUpRecyclerViewController.this.handleAssetImageData(bArr, cellView, adobeAssetImageDimensions, i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        AdobeAssetOneUpRecyclerViewController.this.handleAssetImageData(null, cellView, adobeAssetImageDimensions, i);
                    }
                };
                boolean z = true;
                ReusableImageBitmapWorker validReusableWorker = AdobeAssetOneUpRecyclerViewController.this.getValidReusableWorker();
                if (validReusableWorker != null && (bitmapDrawableLoadImage = validReusableWorker.loadImage(AdobeStorageUtils.cacheKeyForAsset(AdobeAssetOneUpRecyclerViewController.this._asset, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i))) != null) {
                    cellView.displayThumbnail(bitmapDrawableLoadImage, i);
                    z = false;
                }
                if (z) {
                    ((AdobeAssetFile) AdobeAssetOneUpRecyclerViewController.this._asset).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i, iAdobeGenericRequestCallback);
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (!(AdobeAssetOneUpRecyclerViewController.this._asset instanceof AdobeAssetFile)) {
                return -1;
            }
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) AdobeAssetOneUpRecyclerViewController.this._asset;
            if (adobeAssetFile.getOptionalMetadata() != null) {
                AdobeAssetOneUpRecyclerViewController.this.num_pages = adobeAssetFile.getOptionalMetadata().optInt(AdobeStorageSession.PAGES, 1);
            }
            return AdobeAssetOneUpRecyclerViewController.this.num_pages;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.IAdobeNoPreviewSizeHandler
        public int getWidth() {
            return AdobeAssetOneUpRecyclerViewController.width;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.IAdobeNoPreviewSizeHandler
        public int getHeight() {
            return AdobeAssetOneUpRecyclerViewController.height;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.IAdobeNoPreviewSizeHandler
        public void setMeasurements(int i, int i2) {
            synchronized (AdobeOneUpRecyclerViewBaseAdapter.class) {
                AdobeAssetOneUpRecyclerViewController.width = i;
                AdobeAssetOneUpRecyclerViewController.height = i2;
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeOneUpCellViewController
        public AdobeAssetViewerController getController() {
            return AdobeAssetOneUpRecyclerViewController.this.getAssetViewerController();
        }

        class AdobeOneUpRecyclerCellViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            AdobeAssetOneUpRecyclerCellView imageCellView;

            public AdobeOneUpRecyclerCellViewHolder(View view, IAdobeOneUpCellViewController iAdobeOneUpCellViewController) {
                super(view);
                this.imageCellView = new AdobeAssetOneUpRecyclerCellView();
                this.imageCellView.setMainRootView(view);
                this.imageCellView.setDisplayMetrics(AdobeAssetOneUpRecyclerViewController.this._oneUpViewContext.getResources().getDisplayMetrics());
                this.imageCellView.performInitialization(AdobeAssetOneUpRecyclerViewController.this._oneUpViewContext);
                this.imageCellView.setOneUpCellViewController(iAdobeOneUpCellViewController);
            }

            public AdobeAssetOneUpRecyclerCellView getCellView() {
                return this.imageCellView;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }
    }
}
