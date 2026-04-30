package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpBaseCellView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerFilesConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoViewZoomDelegate;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class AdobeOneUpSinglePageAssetController implements IAdobeOneUpCellViewController {
    protected AdobeAsset _asset;
    protected int _currentAssetPos;
    protected DisplayMetrics _displayMetrics;
    protected AdobeOneUpViewerFilesConfiguration _filesConfiguration;
    protected View _mainRootView;
    protected Context _oneUpViewContext;
    private WeakReference<ReusableImageBitmapWorker> _reusableBitmapCacheWorker;
    private AdobeAssetViewerController assetViewerController;
    protected AdobeAssetOneUpSinglePageCellView imageCellView;
    private int oneUpControllerCode;
    float touchBuffer;

    public View getMainRootView() {
        return this._mainRootView;
    }

    private AdobeAssetViewerController getAssetViewerController() {
        return this.assetViewerController;
    }

    public void setAssetViewerController(AdobeAssetViewerController adobeAssetViewerController) {
        this.assetViewerController = adobeAssetViewerController;
    }

    public void setMainRootView(View view) {
        this._mainRootView = view;
        if (this._mainRootView == null) {
            this._oneUpViewContext = null;
            if (this.imageCellView != null) {
                this.imageCellView.setContext(null);
            }
        }
    }

    public void cancelAnyOneUpImageOperation() {
        ReusableImageBitmapWorker reusableImageBitmapWorker;
        if (this._reusableBitmapCacheWorker != null && (reusableImageBitmapWorker = this._reusableBitmapCacheWorker.get()) != null) {
            reusableImageBitmapWorker.cancelImageLoad(this._asset.getGUID() + ((AdobeAssetFile) this._asset).getMd5Hash());
        }
    }

    public int getCurrentAssetPos() {
        return this._currentAssetPos;
    }

    public void setCurrentAssetPos(int i) {
        this._currentAssetPos = i;
    }

    public AdobeAsset getAsset() {
        return this._asset;
    }

    public void setAsset(AdobeAsset adobeAsset) {
        this._asset = adobeAsset;
    }

    public void performInitialization(Context context, AdobeOneUpViewerFilesConfiguration adobeOneUpViewerFilesConfiguration) {
        this._oneUpViewContext = context;
        this._filesConfiguration = adobeOneUpViewerFilesConfiguration;
        this._displayMetrics = this._oneUpViewContext.getResources().getDisplayMetrics();
        this.imageCellView = new AdobeAssetOneUpSinglePageCellView();
        this.imageCellView.setMainRootView(this._mainRootView);
        this.imageCellView.setDisplayMetrics(this._displayMetrics);
        this.imageCellView.setCurrentAssetPos(this._currentAssetPos);
        this.imageCellView.performInitialization(this._oneUpViewContext);
        this.imageCellView.setOneUpCellViewController(this);
        this.imageCellView.setOneUpControllerCode(getOneUpControllerCode());
        this.imageCellView.setCellViewTabHandling(createTapHandlerForAnnotation());
        this.imageCellView.createPhotoTapListenenr();
        this.imageCellView.getAttacher().setZoomDelegate(new IPhotoViewZoomDelegate() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeOneUpSinglePageAssetController.1
            @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoViewZoomDelegate
            public void signalZoomHandled(float f2, float f3, float f4) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.IPhotoViewZoomDelegate
            public void signalDragDetected(float f2, float f3) {
            }
        });
        this.imageCellView.initiallizeVideoButton();
        this.touchBuffer = TypedValue.applyDimension(1, 14.0f, this._oneUpViewContext.getResources().getDisplayMetrics());
    }

    public void setReuseableBitmapCacheWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        if (reusableImageBitmapWorker != null) {
            this._reusableBitmapCacheWorker = new WeakReference<>(reusableImageBitmapWorker);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAssetImageData(byte[] bArr) {
        if (this._mainRootView != null) {
            if (bArr == null) {
                this.imageCellView.handleNoPreview();
                return;
            }
            if (this._reusableBitmapCacheWorker != null) {
                ReusableImageBitmapWorker reusableImageBitmapWorker = this._reusableBitmapCacheWorker.get();
                if (reusableImageBitmapWorker != null) {
                    reusableImageBitmapWorker.saveImageByteDataIntoCache(this._asset.getGUID() + ((AdobeAssetFile) this._asset).getMd5Hash(), bArr);
                    reusableImageBitmapWorker.loadImageWithData(this._asset.getGUID() + ((AdobeAssetFile) this._asset).getMd5Hash(), bArr, new IAdobeGenericCompletionCallback<BitmapDrawable>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeOneUpSinglePageAssetController.2
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(BitmapDrawable bitmapDrawable) {
                            if (AdobeOneUpSinglePageAssetController.this._mainRootView != null) {
                                if (bitmapDrawable == null) {
                                    AdobeOneUpSinglePageAssetController.this.imageCellView.handleNoPreview();
                                    return;
                                }
                                AdobeOneUpSinglePageAssetController.this.imageCellView.displayThumbnail(bitmapDrawable);
                                AdobeAssetFile adobeAssetFile = (AdobeAssetFile) AdobeOneUpSinglePageAssetController.this._asset;
                                if (AdobeOneUpSinglePageAssetController.this._asset != null && adobeAssetFile.getType().startsWith("video/")) {
                                    AdobeOneUpSinglePageAssetController.this.imageCellView.handleVideoFiles();
                                }
                            }
                        }
                    }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeOneUpSinglePageAssetController.3
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeAssetException adobeAssetException) {
                        }
                    });
                    return;
                }
                return;
            }
            this.imageCellView.displayThumbnail(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) this._asset;
            if (this._asset != null && adobeAssetFile.getType().startsWith("video/")) {
                this.imageCellView.handleVideoFiles();
            }
        }
    }

    public void initiateDisplay() {
        boolean z;
        ReusableImageBitmapWorker reusableImageBitmapWorker;
        BitmapDrawable bitmapDrawableLoadImage;
        if (this._asset != null && (this._asset instanceof AdobeAssetFile)) {
            if (AdobeUXAssetOneUpViewerActivity.isNetworkAvailable()) {
                this.imageCellView.isOnline();
                if (this._reusableBitmapCacheWorker == null || (reusableImageBitmapWorker = this._reusableBitmapCacheWorker.get()) == null || (bitmapDrawableLoadImage = reusableImageBitmapWorker.loadImage(this._asset.getGUID() + ((AdobeAssetFile) this._asset).getMd5Hash())) == null) {
                    z = true;
                } else {
                    this.imageCellView.displayThumbnail(bitmapDrawableLoadImage);
                    if (((AdobeAssetFile) this._asset).getType().startsWith("video/")) {
                        this.imageCellView.handleVideoFiles();
                    }
                    z = false;
                }
                if (z) {
                    ((AdobeAssetFile) this._asset).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(this._displayMetrics.widthPixels, this._displayMetrics.heightPixels), 0, new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeOneUpSinglePageAssetController.4
                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                        public void onCancellation() {
                            AdobeOneUpSinglePageAssetController.this.handleAssetImageData(null);
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(byte[] bArr) {
                            AdobeOneUpSinglePageAssetController.this.handleAssetImageData(bArr);
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeAssetException adobeAssetException) {
                            AdobeOneUpSinglePageAssetController.this.handleAssetImageData(null);
                        }
                    });
                    return;
                }
                return;
            }
            this.imageCellView.handleNoNetwork();
        }
    }

    public void clear() {
        if (this._filesConfiguration.getEventHandler() != null) {
            this._filesConfiguration.getEventHandler().clear(this._asset);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeOneUpCellViewController
    public AdobeAssetViewerController getController() {
        return getAssetViewerController();
    }

    public int getOneUpControllerCode() {
        return this.oneUpControllerCode;
    }

    public void setOneUpControllerCode(int i) {
        this.oneUpControllerCode = i;
    }

    private AdobeAssetOneUpBaseCellView.ICellViewTapHandling createTapHandlerForAnnotation() {
        return new AdobeAssetOneUpBaseCellView.ICellViewTapHandling() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeOneUpSinglePageAssetController.5
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpBaseCellView.ICellViewTapHandling
            public boolean isTapHandled(float f2, float f3) {
                return false;
            }
        };
    }
}
