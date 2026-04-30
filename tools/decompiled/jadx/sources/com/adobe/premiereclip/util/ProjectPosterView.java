package com.adobe.premiereclip.util;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import com.adobe.premiereclip.R;

/* JADX INFO: loaded from: classes2.dex */
public class ProjectPosterView {

    public interface PosterViewListener {
        void onSuccessImageLoad(String str, Bitmap bitmap);
    }

    public static void load(String str, String str2, ImageView imageView, boolean z, PosterViewListener posterViewListener) {
        load(str, str2, imageView, imageView.getMeasuredWidth(), imageView.getMeasuredHeight(), z, posterViewListener);
    }

    public static void load(String str, String str2, ImageView imageView, int i, int i2, boolean z, PosterViewListener posterViewListener) {
        if (imageView != null) {
            if (str2 == null) {
                imageView.setImageResource(R.drawable.gra_projectthumb_placeholder);
                return;
            }
            if (!z) {
                new WorkerTask(str, i, i2, false, posterViewListener).executeOnExecutor(Utilities.THREAD_POOL_EXECUTOR, str2);
                return;
            }
            Bitmap bitmapFromMemoryCache = BitmapCache.getBitmapFromMemoryCache(str);
            if (bitmapFromMemoryCache != null) {
                imageView.setImageBitmap(bitmapFromMemoryCache);
                BitmapCache.logStats();
            } else {
                new WorkerTask(str, i, i2, true, posterViewListener).executeOnExecutor(Utilities.THREAD_POOL_EXECUTOR, str2);
            }
        }
    }

    class WorkerTask extends AsyncTask<String, Void, Bitmap> {
        private boolean cache;
        private String cacheKey;
        private PosterViewListener posterViewListener;
        private int vh;
        private int vw;

        WorkerTask(String str, int i, int i2, boolean z, PosterViewListener posterViewListener) {
            this.posterViewListener = posterViewListener;
            this.cacheKey = str;
            this.cache = z;
            this.vw = i;
            this.vh = i2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(String... strArr) {
            Bitmap scaledAdjustedBitmap;
            Exception e2;
            Bitmap bitmapFromDiskCache = BitmapCache.getBitmapFromDiskCache(this.cacheKey);
            if (bitmapFromDiskCache == null) {
                try {
                    scaledAdjustedBitmap = Utilities.getScaledAdjustedBitmap(strArr[0], this.vw, this.vh);
                    try {
                        Log.d("ScaledDimensions", scaledAdjustedBitmap.getHeight() + " " + scaledAdjustedBitmap.getWidth());
                        bitmapFromDiskCache = scaledAdjustedBitmap;
                    } catch (Exception e3) {
                        e2 = e3;
                        e2.printStackTrace();
                        bitmapFromDiskCache = scaledAdjustedBitmap;
                    }
                } catch (Exception e4) {
                    scaledAdjustedBitmap = bitmapFromDiskCache;
                    e2 = e4;
                }
                if (bitmapFromDiskCache != null) {
                    BitmapCache.addBitmapToDiskCache(this.cacheKey, bitmapFromDiskCache);
                }
            }
            return bitmapFromDiskCache;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            if (bitmap != null) {
                Log.d("CACHE", "Setting image");
                if (this.posterViewListener != null) {
                    this.posterViewListener.onSuccessImageLoad(this.cacheKey, bitmap);
                    if (this.cache) {
                        Log.d("CACHE", "Adding image");
                        BitmapCache.addBitmapToMemoryCache(this.cacheKey, bitmap);
                    }
                }
            }
        }
    }
}
