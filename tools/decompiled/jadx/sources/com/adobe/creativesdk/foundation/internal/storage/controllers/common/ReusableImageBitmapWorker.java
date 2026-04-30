package com.adobe.creativesdk.foundation.internal.storage.controllers.common;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.support.v4.app.FragmentManager;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class ReusableImageBitmapWorker {
    private HashMap<String, DecodeImageInBackgroundTask> _image2DecodeTaskMap = new HashMap<>();
    private HashMap<String, byte[]> mImageByteArrayCache = new HashMap<>();
    private ReusableImageBitmapCache mImageCache;
    private ReusableImageBitmapCache.ImageCacheParams mImageCacheParams;
    private final Resources mResources;

    public void addImageCache(FragmentManager fragmentManager, ReusableImageBitmapCache.ImageCacheParams imageCacheParams) {
        this.mImageCacheParams = imageCacheParams;
        this.mImageCache = ReusableImageBitmapCache.getInstance(fragmentManager, this.mImageCacheParams);
    }

    public ReusableImageBitmapWorker(Context context) {
        this.mResources = context.getResources();
    }

    public BitmapDrawable loadImage(String str) {
        if (str == null || this.mImageCache == null) {
            return null;
        }
        return this.mImageCache.getBitmapFromMemCache(str);
    }

    public BitmapDrawable loadImage(String str, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        if (str == null || this.mImageCache == null) {
            return null;
        }
        return this.mImageCache.getBitmapFromMemCache(str);
    }

    private static void addInBitmapOptions(BitmapFactory.Options options, ReusableImageBitmapCache reusableImageBitmapCache) {
        Bitmap bitmapFromReusableSet;
        options.inMutable = true;
        if (reusableImageBitmapCache != null && (bitmapFromReusableSet = reusableImageBitmapCache.getBitmapFromReusableSet(options)) != null) {
            options.inBitmap = bitmapFromReusableSet;
        }
    }

    public void loadImageFromFile(final String str, String str2, AdobeAssetImageDimensions adobeAssetImageDimensions, final IAdobeGenericCompletionCallback<BitmapDrawable> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        if (str == null) {
            iAdobeGenericCompletionCallback.onCompletion(null);
            return;
        }
        cancelImageLoad(str);
        DecodeImageInBackgroundTask decodeImageInBackgroundTaskCreateReusableBitmapFromImageData = createReusableBitmapFromImageData(str, adobeAssetImageDimensions, new IAdobeGenericCompletionCallback<Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Bitmap bitmap) {
                if (bitmap != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(ReusableImageBitmapWorker.this.mResources, bitmap);
                    if (ReusableImageBitmapWorker.this.mImageCache != null) {
                        ReusableImageBitmapWorker.this.mImageCache.addBitmapToCache(str, bitmapDrawable);
                    }
                    iAdobeGenericCompletionCallback.onCompletion(bitmapDrawable);
                    return;
                }
                iAdobeGenericErrorCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnsupportedMedia));
            }
        });
        this._image2DecodeTaskMap.put(str, decodeImageInBackgroundTaskCreateReusableBitmapFromImageData);
        decodeImageInBackgroundTaskCreateReusableBitmapFromImageData.execute(str2);
    }

    public void loadImageFromFile(final String str, String str2, final IAdobeGenericCompletionCallback<BitmapDrawable> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        if (str == null) {
            iAdobeGenericCompletionCallback.onCompletion(null);
            return;
        }
        cancelImageLoad(str);
        DecodeImageInBackgroundTask decodeImageInBackgroundTaskCreateReusableBitmapFromImageData = createReusableBitmapFromImageData(str, new IAdobeGenericCompletionCallback<Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Bitmap bitmap) {
                if (bitmap != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(ReusableImageBitmapWorker.this.mResources, bitmap);
                    if (ReusableImageBitmapWorker.this.mImageCache != null) {
                        ReusableImageBitmapWorker.this.mImageCache.addBitmapToCache(str, bitmapDrawable);
                    }
                    iAdobeGenericCompletionCallback.onCompletion(bitmapDrawable);
                    return;
                }
                iAdobeGenericErrorCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnsupportedMedia));
            }
        });
        this._image2DecodeTaskMap.put(str, decodeImageInBackgroundTaskCreateReusableBitmapFromImageData);
        decodeImageInBackgroundTaskCreateReusableBitmapFromImageData.execute(str2);
    }

    public boolean loadImageWithBitmap(String str, Bitmap bitmap) {
        this.mImageCache.addBitmapToCache(str, new BitmapDrawable(this.mResources, bitmap));
        return true;
    }

    public void saveImageByteDataIntoCache(String str, byte[] bArr) {
        this.mImageByteArrayCache.put(str, bArr);
    }

    public byte[] getImageByteDataFromCache(String str) {
        return this.mImageByteArrayCache.get(str);
    }

    public void loadImageWithData(final String str, byte[] bArr, final IAdobeGenericCompletionCallback<BitmapDrawable> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        if (str == null) {
            iAdobeGenericCompletionCallback.onCompletion(null);
            return;
        }
        cancelImageLoad(str);
        DecodeImageInBackgroundTask decodeImageInBackgroundTaskCreateReusableBitmapFromImageData = createReusableBitmapFromImageData(str, new IAdobeGenericCompletionCallback<Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Bitmap bitmap) {
                if (bitmap != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(ReusableImageBitmapWorker.this.mResources, bitmap);
                    if (ReusableImageBitmapWorker.this.mImageCache != null) {
                        ReusableImageBitmapWorker.this.mImageCache.addBitmapToCache(str, bitmapDrawable);
                    }
                    iAdobeGenericCompletionCallback.onCompletion(bitmapDrawable);
                    return;
                }
                iAdobeGenericErrorCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnsupportedMedia));
            }
        });
        this._image2DecodeTaskMap.put(str, decodeImageInBackgroundTaskCreateReusableBitmapFromImageData);
        decodeImageInBackgroundTaskCreateReusableBitmapFromImageData.execute(bArr);
    }

    private DecodeImageInBackgroundTask createReusableBitmapFromImageData(String str, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
        return new DecodeImageInBackgroundTask(str, iAdobeGenericCompletionCallback);
    }

    private DecodeImageInBackgroundTask createReusableBitmapFromImageData(String str, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
        return new DecodeImageInBackgroundTask(str, adobeAssetImageDimensions, iAdobeGenericCompletionCallback);
    }

    public void clearCache() {
        this.mImageCache.clearCache();
    }

    public void cancelImageLoad(String str) {
        DecodeImageInBackgroundTask decodeImageInBackgroundTask;
        if (this._image2DecodeTaskMap.size() != 0 && (decodeImageInBackgroundTask = this._image2DecodeTaskMap.get(str)) != null) {
            this._image2DecodeTaskMap.remove(str);
            decodeImageInBackgroundTask.cancel(false);
        }
    }

    class DecodeImageInBackgroundTask extends AsyncTask<Object, Integer, Bitmap> {
        private final String _dataKey;
        private final AdobeAssetImageDimensions _dims;
        private final IAdobeGenericCompletionCallback<Bitmap> _onCompleteCallBack;

        DecodeImageInBackgroundTask(String str, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
            this._onCompleteCallBack = iAdobeGenericCompletionCallback;
            this._dataKey = str;
            this._dims = null;
        }

        DecodeImageInBackgroundTask(String str, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
            this._onCompleteCallBack = iAdobeGenericCompletionCallback;
            this._dataKey = str;
            this._dims = adobeAssetImageDimensions;
        }

        private void removeTaskFromMap() {
            if (((DecodeImageInBackgroundTask) ReusableImageBitmapWorker.this._image2DecodeTaskMap.get(this._dataKey)) == this) {
                ReusableImageBitmapWorker.this._image2DecodeTaskMap.remove(this._dataKey);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Object... objArr) {
            if (objArr[0] instanceof byte[]) {
                byte[] bArr = (byte[]) objArr[0];
                if (bArr != null) {
                    if (isCancelled()) {
                        return null;
                    }
                    if (this._dims != null) {
                        float f2 = this._dims.height > this._dims.width ? this._dims.height : this._dims.width;
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        options.inJustDecodeBounds = false;
                        options.inSampleSize = (int) (options.outWidth / f2);
                        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                    }
                    return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                }
            } else if (objArr[0] instanceof String) {
                String str = (String) objArr[0];
                if (this._dims != null) {
                    float f3 = this._dims.height > this._dims.width ? this._dims.height : this._dims.width;
                    BitmapFactory.Options options2 = new BitmapFactory.Options();
                    options2.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(str, options2);
                    options2.inJustDecodeBounds = false;
                    options2.inSampleSize = (int) (options2.outWidth / f3);
                    return BitmapFactory.decodeFile(str, options2);
                }
                return BitmapFactory.decodeFile(str);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            removeTaskFromMap();
            this._onCompleteCallBack.onCompletion(bitmap);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Bitmap bitmap) {
            removeTaskFromMap();
            this._onCompleteCallBack.onCompletion(bitmap);
        }
    }
}
