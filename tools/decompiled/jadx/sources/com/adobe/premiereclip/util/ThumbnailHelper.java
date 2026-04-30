package com.adobe.premiereclip.util;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.widget.ImageView;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.Utilities;
import java.util.HashSet;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public class ThumbnailHelper {
    private static final String TAG = "ThumbnailHelper";
    private static HashSet<String> currentTasksCacheKey = new HashSet<>();
    private static ConcurrentLinkedQueue<WorkerTask> workerTasks = new ConcurrentLinkedQueue<>();

    public static <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void load(Clip.CLIP_TYPE clip_type, String str, String str2, long j, ImageView imageView, int i, int i2, T t) {
        Bitmap bitmapFromMemoryCache = BitmapCache.getBitmapFromMemoryCache(str);
        if (bitmapFromMemoryCache != null) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) imageView.getDrawable();
            Log.d(TAG, "bitmap drawable = " + bitmapDrawable);
            if (bitmapDrawable == null || bitmapDrawable.getBitmap() != bitmapFromMemoryCache) {
                Log.d(TAG, "IGI");
                imageView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                imageView.setImageBitmap(bitmapFromMemoryCache);
            }
            BitmapCache.logStats();
            return;
        }
        if (currentTasksCacheKey.contains(str)) {
            Log.d(TAG, "return as cache key present in current tasks with path " + str2 + " and id " + str + " and pos " + t.getClipPosition(str));
            return;
        }
        Log.i(TAG, "Creating worker task for thumbnail " + str2);
        if (t.isProcessing()) {
            WorkerTask workerTask = new WorkerTask(clip_type, str, j, i, i2, t, System.nanoTime());
            workerTasks.add(workerTask);
            workerTask.executeOnExecutor(Utilities.THUMBNAIL_THREAD_POOL_EXECUTOR, str2);
        }
    }

    public static void cancelAllUnexecutedTasks() {
        for (WorkerTask workerTask : workerTasks) {
            if (workerTask.cancel(false)) {
                workerTasks.remove(workerTask);
                currentTasksCacheKey.remove(workerTask.cacheKey);
            }
        }
        ((ThreadPoolExecutor) Utilities.THUMBNAIL_THREAD_POOL_EXECUTOR).purge();
    }

    public static void resetKey(String str) {
        currentTasksCacheKey.remove(str);
    }

    public static void resetAllKeys() {
        currentTasksCacheKey.clear();
    }

    class WorkerTask extends PriorityAsyncTask<String, Void, Bitmap> {
        private Utilities.ThumbnailLoadListener adapter;
        private String cacheKey;
        private Clip.CLIP_TYPE clipType;
        private long frameTimeMs;
        private int targetHeight;
        private int targetWidth;

        <T extends Utilities.ThumbnailLoadListener & Utilities.IClipScrollAdapter> WorkerTask(Clip.CLIP_TYPE clip_type, String str, long j, int i, int i2, T t, long j2) {
            super(j2);
            this.clipType = clip_type;
            this.cacheKey = str;
            this.frameTimeMs = j;
            this.targetWidth = i;
            this.targetHeight = i2;
            this.adapter = t;
        }

        @Override // com.adobe.premiereclip.util.PriorityAsyncTask
        protected void onPreExecute() {
            ThumbnailHelper.currentTasksCacheKey.add(this.cacheKey);
            Log.d(ThumbnailHelper.TAG, "add cache key for " + this.cacheKey + " position =" + this.adapter.getClipPosition(this.cacheKey));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.adobe.premiereclip.util.PriorityAsyncTask
        public Bitmap doInBackground(String... strArr) {
            Bitmap bitmapFromDiskCache;
            try {
                Log.i("ThumbLog", "Worker thread for thumbnail generation");
                bitmapFromDiskCache = BitmapCache.getBitmapFromDiskCache(this.cacheKey);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (bitmapFromDiskCache == null) {
                Bitmap bitmapDecodeBitmap = Utilities.decodeBitmap(this.clipType, strArr[0], this.targetWidth, this.targetHeight, this.frameTimeMs);
                if (bitmapDecodeBitmap != null) {
                    BitmapCache.addBitmapToDiskCache(this.cacheKey, bitmapDecodeBitmap);
                    return bitmapDecodeBitmap;
                }
                Log.i("ThumbLog", "Worker thread completed");
                return null;
            }
            return bitmapFromDiskCache;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.adobe.premiereclip.util.PriorityAsyncTask
        public void onPostExecute(Bitmap bitmap) {
            ThumbnailHelper.currentTasksCacheKey.remove(this.cacheKey);
            ThumbnailHelper.workerTasks.remove(this);
            Log.d(ThumbnailHelper.TAG, "remove cache key for " + this.cacheKey + " position =" + this.adapter.getClipPosition(this.cacheKey));
            if (bitmap != null) {
                this.adapter.onSuccessImageLoad(this.cacheKey, bitmap);
                BitmapCache.addBitmapToMemoryCache(this.cacheKey, bitmap);
            } else {
                this.adapter.onFailureImageLoad(this.cacheKey);
            }
        }
    }
}
