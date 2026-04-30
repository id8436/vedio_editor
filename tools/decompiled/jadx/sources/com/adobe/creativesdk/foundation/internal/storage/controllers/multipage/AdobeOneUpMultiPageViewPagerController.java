package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import android.support.v4.view.PagerAdapter;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpBaseCellView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeOneUpCellViewController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoViewZoomDelegate;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoView;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpMultiPageViewPagerController {
    private AdobeAsset asset;
    private AdobeAssetViewerController assetViewerController;
    private AdobeMultiPageFragmentController fragmentController;
    private AdobeHackyViewPager mPager;
    private View mainRootView;
    private int numPages;
    private Context oneUpViewContext;
    private AdobeOneUpMultiPageAdapter pagerAdapter;
    private WeakReference<ReusableImageBitmapWorker> reusableBitmapCacheWorker;
    private float zoomFocusX = 0.0f;
    private float zoomFocusY = 0.0f;
    private float zoomScale = 1.0f;

    public void setMainRootView(View view) {
        this.mainRootView = view;
    }

    public void setAsset(AdobeAsset adobeAsset) {
        this.asset = adobeAsset;
    }

    public void setFragmentController(AdobeMultiPageFragmentController adobeMultiPageFragmentController) {
        this.fragmentController = adobeMultiPageFragmentController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeAssetViewerController getAssetViewerController() {
        return this.assetViewerController;
    }

    public void setAssetViewerController(AdobeAssetViewerController adobeAssetViewerController) {
        this.assetViewerController = adobeAssetViewerController;
    }

    public AdobeMultiPageFragmentController getFragmentController() {
        return this.fragmentController;
    }

    public void performInitiallization(Context context) {
        this.oneUpViewContext = context;
        this.mPager = (AdobeHackyViewPager) this.mainRootView.findViewById(R.id.adobe_csdk_multipage_vertical_pager);
        this.pagerAdapter = new AdobeOneUpMultiPageAdapter(this.oneUpViewContext);
        this.mPager.setOffscreenPageLimit(1);
        this.mPager.setPageMargin(15);
    }

    public void startViewPager(int i) {
        this.zoomScale = 1.0f;
        this.zoomFocusX = 0.0f;
        this.zoomFocusY = 0.0f;
        this.mPager.setAdapter(this.pagerAdapter);
        this.mPager.setCurrentItem(i);
    }

    public void setReuseableBitmapCacheWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        if (reusableImageBitmapWorker != null) {
            this.reusableBitmapCacheWorker = new WeakReference<>(reusableImageBitmapWorker);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAssetImageData(byte[] bArr, final AdobeAssetOneUpBaseCellView adobeAssetOneUpBaseCellView, AdobeAssetImageDimensions adobeAssetImageDimensions, int i) {
        if (this.mainRootView != null) {
            if (bArr == null) {
                adobeAssetOneUpBaseCellView.handleNoPreview();
                return;
            }
            ReusableImageBitmapWorker validReusableWorker = getValidReusableWorker();
            if (validReusableWorker != null) {
                validReusableWorker.loadImageWithData(AdobeStorageUtils.cacheKeyForAsset(this.asset, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i), bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageViewPagerController.1
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(BitmapDrawable bitmapDrawable) {
                        if (AdobeOneUpMultiPageViewPagerController.this.mainRootView != null) {
                            if (bitmapDrawable == null) {
                                adobeAssetOneUpBaseCellView.handleNoPreview();
                            } else {
                                adobeAssetOneUpBaseCellView.displayThumbnail(bitmapDrawable);
                            }
                        }
                    }
                }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageViewPagerController.2
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        adobeAssetOneUpBaseCellView.handleNoPreview();
                    }
                });
            } else {
                adobeAssetOneUpBaseCellView.displayThumbnail(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ReusableImageBitmapWorker getValidReusableWorker() {
        if (this.reusableBitmapCacheWorker != null) {
            return this.reusableBitmapCacheWorker.get();
        }
        return null;
    }

    public class AdobeOneUpMultiPageAdapter extends PagerAdapter implements IAdobeOneUpCellViewController {
        Context mContext;
        LayoutInflater mLayoutInflater;

        public AdobeOneUpMultiPageAdapter(Context context) {
            this.mContext = context;
            this.mLayoutInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            if (!(AdobeOneUpMultiPageViewPagerController.this.asset instanceof AdobeAssetFile)) {
                return -1;
            }
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) AdobeOneUpMultiPageViewPagerController.this.asset;
            if (adobeAssetFile.getOptionalMetadata() != null) {
                AdobeOneUpMultiPageViewPagerController.this.numPages = adobeAssetFile.getOptionalMetadata().optInt(AdobeStorageSession.PAGES, 1);
            }
            return AdobeOneUpMultiPageViewPagerController.this.numPages;
        }

        @Override // android.support.v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return (obj instanceof RelativeLayout) && view == obj;
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, final int i) {
            BitmapDrawable bitmapDrawableLoadImage;
            boolean z = false;
            View viewInflate = this.mLayoutInflater.inflate(R.layout.fragment_vertical_pager, viewGroup, false);
            DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
            final AdobeAssetImageDimensions adobeAssetImageDimensions = new AdobeAssetImageDimensions((int) (((double) displayMetrics.widthPixels) * 0.7d), (int) (((double) displayMetrics.heightPixels) * 0.7d));
            final AdobeAssetOneUpBaseCellView newCellView = getNewCellView(viewInflate, displayMetrics);
            newCellView.getAttacher().setZoomDelegate(new IPhotoViewZoomDelegate() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageViewPagerController.AdobeOneUpMultiPageAdapter.1
                @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoViewZoomDelegate
                public void signalZoomHandled(float f2, float f3, float f4) {
                    View viewFindViewById = AdobeOneUpMultiPageViewPagerController.this.mPager.findViewById(i - 1);
                    View viewFindViewById2 = AdobeOneUpMultiPageViewPagerController.this.mPager.findViewById(i + 1);
                    AdobeOneUpMultiPageViewPagerController.this.zoomScale = f2;
                    AdobeOneUpMultiPageViewPagerController.this.zoomFocusY = f4;
                    if (f2 <= 0.5f) {
                        if (AdobeOneUpMultiPageViewPagerController.this.fragmentController.getPreviousState() == AdobeMultiPageViewState.AdobeMultiPageGridView) {
                            AdobeOneUpMultiPageViewPagerController.this.fragmentController.displayGridView();
                            return;
                        } else {
                            if (AdobeOneUpMultiPageViewPagerController.this.fragmentController.getPreviousState() == AdobeMultiPageViewState.AdobeMultiPageListView) {
                                AdobeOneUpMultiPageViewPagerController.this.fragmentController.displayListView();
                                return;
                            }
                            return;
                        }
                    }
                    if (viewFindViewById != null) {
                        ((PhotoView) ((RelativeLayout) viewFindViewById).getChildAt(0)).getAttacher().setScale(f2, AdobeOneUpMultiPageViewPagerController.this.oneUpViewContext.getResources().getDisplayMetrics().widthPixels, AdobeOneUpMultiPageViewPagerController.this.zoomFocusY, false);
                    }
                    if (viewFindViewById2 != null) {
                        ((PhotoView) ((RelativeLayout) viewFindViewById2).getChildAt(0)).getAttacher().setScale(f2, 0.0f, AdobeOneUpMultiPageViewPagerController.this.zoomFocusY, false);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoViewZoomDelegate
                public void signalDragDetected(float f2, float f3) {
                    View viewFindViewById = AdobeOneUpMultiPageViewPagerController.this.mPager.findViewById(i - 1);
                    View viewFindViewById2 = AdobeOneUpMultiPageViewPagerController.this.mPager.findViewById(i + 1);
                    if (f2 > 0.0f) {
                        AdobeOneUpMultiPageViewPagerController.this.zoomFocusX = AdobeOneUpMultiPageViewPagerController.this.oneUpViewContext.getResources().getDisplayMetrics().widthPixels;
                        if (viewFindViewById != null) {
                            ((PhotoView) ((RelativeLayout) viewFindViewById).getChildAt(0)).getAttacher().setZoomFocusX(AdobeOneUpMultiPageViewPagerController.this.zoomFocusX);
                            ((PhotoView) ((RelativeLayout) viewFindViewById).getChildAt(0)).getAttacher().setZoomFocusY(AdobeOneUpMultiPageViewPagerController.this.zoomFocusY);
                            return;
                        }
                        return;
                    }
                    if (f2 < 0.0f) {
                        AdobeOneUpMultiPageViewPagerController.this.zoomFocusX = 0.0f;
                        if (viewFindViewById2 != null) {
                            ((PhotoView) ((RelativeLayout) viewFindViewById2).getChildAt(0)).getAttacher().setZoomFocusX(AdobeOneUpMultiPageViewPagerController.this.zoomFocusX);
                            ((PhotoView) ((RelativeLayout) viewFindViewById2).getChildAt(0)).getAttacher().setZoomFocusY(AdobeOneUpMultiPageViewPagerController.this.zoomFocusY);
                        }
                    }
                }
            });
            if (AdobeOneUpMultiPageViewPagerController.this.asset instanceof AdobeAssetFile) {
                IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageViewPagerController.AdobeOneUpMultiPageAdapter.2
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                        AdobeOneUpMultiPageViewPagerController.this.handleAssetImageData(null, newCellView, adobeAssetImageDimensions, i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        AdobeOneUpMultiPageViewPagerController.this.handleAssetImageData(bArr, newCellView, adobeAssetImageDimensions, i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        AdobeOneUpMultiPageViewPagerController.this.handleAssetImageData(null, newCellView, adobeAssetImageDimensions, i);
                    }
                };
                if (AdobeUXAssetOneUpViewerActivity.isNetworkAvailable()) {
                    newCellView.isOnline();
                    ReusableImageBitmapWorker validReusableWorker = AdobeOneUpMultiPageViewPagerController.this.getValidReusableWorker();
                    if (validReusableWorker == null || (bitmapDrawableLoadImage = validReusableWorker.loadImage(AdobeStorageUtils.cacheKeyForAsset(AdobeOneUpMultiPageViewPagerController.this.asset, AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i))) == null) {
                        z = true;
                    } else {
                        newCellView.displayThumbnail(bitmapDrawableLoadImage);
                    }
                    if (z) {
                        ((AdobeAssetFile) AdobeOneUpMultiPageViewPagerController.this.asset).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, adobeAssetImageDimensions, i, iAdobeGenericRequestCallback);
                    }
                } else {
                    newCellView.handleNoNetwork();
                }
            }
            viewInflate.setId(i);
            viewGroup.addView(viewInflate);
            return viewInflate;
        }

        @NonNull
        private AdobeAssetOneUpBaseCellView getNewCellView(View view, DisplayMetrics displayMetrics) {
            AdobeAssetOneUpBaseCellView adobeAssetOneUpBaseCellView = new AdobeAssetOneUpBaseCellView();
            adobeAssetOneUpBaseCellView.setMainRootView(view);
            adobeAssetOneUpBaseCellView.setDisplayMetrics(displayMetrics);
            adobeAssetOneUpBaseCellView.performInitialization(this.mContext);
            adobeAssetOneUpBaseCellView.createPhotoTapListenenr();
            adobeAssetOneUpBaseCellView.setOneUpCellViewController(this);
            adobeAssetOneUpBaseCellView.getAttacher().setScale(AdobeOneUpMultiPageViewPagerController.this.zoomScale);
            adobeAssetOneUpBaseCellView.getAttacher().setZoomFocusX(AdobeOneUpMultiPageViewPagerController.this.zoomFocusX);
            adobeAssetOneUpBaseCellView.getAttacher().setZoomFocusY(AdobeOneUpMultiPageViewPagerController.this.zoomFocusY);
            return adobeAssetOneUpBaseCellView;
        }

        @Override // android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((RelativeLayout) obj);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeOneUpCellViewController
        public AdobeAssetViewerController getController() {
            return AdobeOneUpMultiPageViewPagerController.this.getAssetViewerController();
        }
    }

    public void handleOrientationChange() {
        this.zoomScale = 1.0f;
        for (int i = 0; i < this.mPager.getChildCount(); i++) {
            View childAt = this.mPager.getChildAt(i);
            if (childAt != null) {
                ((PhotoView) ((RelativeLayout) childAt).getChildAt(0)).getAttacher().setScale(this.zoomScale);
            }
        }
    }
}
