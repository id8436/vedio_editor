package com.adobe.premiereclip.mediabrowser.source;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.LinkedBlockingStack;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.source.GallerySource;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.Utilities;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RemoteMediaSource extends GallerySource {
    private static final int initial_cores = 3;
    private static final long keep_alive_time = 1;
    private static final int max_cores = 4;
    private LinkedBlockingStack stack = new LinkedBlockingStack();
    private ThreadPoolExecutor mExecutor = new ThreadPoolExecutor(3, 4, 1, TimeUnit.SECONDS, this.stack);

    public interface LoginListener {
        void onSuccessfulLogin();
    }

    public interface LogoutListener {
        void onSuccessfulLogout();
    }

    public interface MediaFileListener {
        void onFileError(int i, String str);

        void onFilesAvailable(String str);
    }

    protected abstract void fetchAlbumInternal(Bucket bucket, GallerySource.BucketLoadListener bucketLoadListener, Handler handler);

    protected abstract void fetchDataInternal(Context context, GallerySource.GalleryDataListener galleryDataListener, Handler handler);

    protected abstract void fetchFilesInternal(MediaModel mediaModel, MediaFileListener mediaFileListener);

    protected abstract <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void fetchThumbnailInternal(Clip.CLIP_TYPE clip_type, MediaModel mediaModel, long j, int i, int i2, T t, Handler handler);

    public abstract void login(Context context, Activity activity, String str, LoginListener loginListener);

    public abstract void logout(Context context, LogoutListener logoutListener);

    @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource
    public void fetchData(final Context context, final GallerySource.GalleryDataListener galleryDataListener, final Handler handler) {
        this.mExecutor.execute(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource.1
            @Override // java.lang.Runnable
            public void run() {
                RemoteMediaSource.this.fetchDataInternal(context, galleryDataListener, handler);
            }
        });
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource
    public void fetchAlbum(final Bucket bucket, final GallerySource.BucketLoadListener bucketLoadListener, final Handler handler) {
        this.mExecutor.execute(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource.2
            @Override // java.lang.Runnable
            public void run() {
                RemoteMediaSource.this.fetchAlbumInternal(bucket, bucketLoadListener, handler);
            }
        });
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource
    public <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void fetchThumbnail(final Clip.CLIP_TYPE clip_type, final MediaModel mediaModel, final long j, ImageView imageView, final int i, final int i2, final T t, final Handler handler) {
        if (!mediaModel.getParentBucket().isCancel()) {
            Bitmap bitmap = BitmapCache.getBitmap(mediaModel.getId());
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
            } else {
                this.stack.offer(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource.3
                    @Override // java.lang.Runnable
                    public void run() {
                        RemoteMediaSource.this.fetchThumbnailInternal(clip_type, mediaModel, j, i, i2, t, handler);
                    }
                });
            }
        }
    }

    public void fetchFiles(final MediaModel mediaModel, final MediaFileListener mediaFileListener) {
        this.stack.offer(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource.4
            @Override // java.lang.Runnable
            public void run() {
                RemoteMediaSource.this.fetchFilesInternal(mediaModel, mediaFileListener);
            }
        });
    }

    protected static String getAccountType(String str) {
        switch (str) {
            case "google_photos":
                return "com.google";
            case "google_drive":
                return "com.google";
            default:
                return null;
        }
    }
}
