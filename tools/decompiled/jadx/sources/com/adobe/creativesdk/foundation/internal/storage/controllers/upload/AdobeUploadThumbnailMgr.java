package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.LruCache;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadThumbnailMgr {
    private static final int CACHE_NUM_ENTRIES = 15;
    private static AdobeUploadThumbnailMgr _sInstance;
    private LruCache<String, Bitmap> _bitmapCache;

    private AdobeUploadThumbnailMgr() {
        initializeBitmapCache();
    }

    public static AdobeUploadThumbnailMgr getInstance() {
        if (_sInstance == null) {
            synchronized (AdobeUploadThumbnailMgr.class) {
                if (_sInstance == null) {
                    _sInstance = new AdobeUploadThumbnailMgr();
                }
            }
        }
        return _sInstance;
    }

    public static synchronized void destroyInstance() {
        if (_sInstance != null) {
            _sInstance.clearBitmapCache();
        }
        _sInstance = null;
    }

    public void clearBitmapCache() {
        if (this._bitmapCache != null) {
            this._bitmapCache.evictAll();
            this._bitmapCache = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadThumbnailMgr$1GetRenditionTask] */
    public void getThumbnailasBitmap(final AdobeUploadAssetData adobeUploadAssetData, final IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
        Bitmap bitmap = this._bitmapCache.get(adobeUploadAssetData.guid);
        if (bitmap != null) {
            iAdobeGenericCompletionCallback.onCompletion(bitmap);
        } else {
            new AsyncTask<URL, Integer, Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadThumbnailMgr.1GetRenditionTask
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public Bitmap doInBackground(URL... urlArr) {
                    return AdobeUploadThumbnailMgr.decodeSampledBitmapFromStream(urlArr[0], AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onProgressUpdate(Integer... numArr) {
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onPostExecute(Bitmap bitmap2) {
                    if (adobeUploadAssetData.guid != null && bitmap2 != null) {
                        AdobeUploadThumbnailMgr.this._bitmapCache.put(adobeUploadAssetData.guid, bitmap2);
                        iAdobeGenericCompletionCallback.onCompletion(bitmap2);
                    }
                }
            }.execute(adobeUploadAssetData._localAssetURL);
        }
    }

    public void getThumbnail(AdobeUploadAssetData adobeUploadAssetData, IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
        getThumbnailasBitmap(adobeUploadAssetData, iAdobeGenericCompletionCallback);
    }

    public static Bitmap decodeSampledBitmapFromResource(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, new AdobeAssetImageDimensions(i, i2));
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        int i = options.outHeight;
        int i2 = options.outWidth;
        int i3 = 1;
        float f2 = adobeAssetImageDimensions.width > adobeAssetImageDimensions.height ? adobeAssetImageDimensions.width : adobeAssetImageDimensions.height;
        if (i <= i2) {
            i = i2;
        }
        if (i > f2) {
            while ((i / 2) / i3 > f2) {
                i3 *= 2;
            }
        }
        return i3;
    }

    private static InputStream fileStreamFromPath(URL url) {
        try {
            return url.openStream();
        } catch (IOException e2) {
            return null;
        }
    }

    public static Bitmap decodeSampledBitmapFromStream(URL url, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        Bitmap bitmapDecodeStream = null;
        InputStream inputStreamFileStreamFromPath = fileStreamFromPath(url);
        if (inputStreamFileStreamFromPath != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStreamFileStreamFromPath, null, options);
            options.inSampleSize = calculateInSampleSize(options, adobeAssetImageDimensions);
            options.inJustDecodeBounds = false;
            InputStream inputStreamFileStreamFromPath2 = fileStreamFromPath(url);
            bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamFileStreamFromPath2, null, options);
            try {
                inputStreamFileStreamFromPath2.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return bitmapDecodeStream;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadThumbnailMgr$2GetRenditionTask] */
    private void getUploadAssetThumbnailAsync(AdobeUploadAssetData adobeUploadAssetData, final IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback) {
        new AsyncTask<URL, Integer, Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadThumbnailMgr.2GetRenditionTask
            Bitmap resultBitmap = null;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(URL... urlArr) {
                this.resultBitmap = AdobeUploadThumbnailMgr.decodeSampledBitmapFromStream(urlArr[0], AdobeStorageAssetFileUtils.THUMBNAIL_SIZED_RENDITION);
                if (this.resultBitmap != null) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    this.resultBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    byteArrayOutputStream.toByteArray();
                }
                return this.resultBitmap;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onProgressUpdate(Integer... numArr) {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                iAdobeGenericCompletionCallback.onCompletion(this.resultBitmap);
            }
        }.execute(adobeUploadAssetData._localAssetURL);
    }

    private void initializeCache() {
    }

    private void initializeBitmapCache() {
        if (this._bitmapCache == null) {
            this._bitmapCache = new LruCache<>(40);
        }
    }
}
