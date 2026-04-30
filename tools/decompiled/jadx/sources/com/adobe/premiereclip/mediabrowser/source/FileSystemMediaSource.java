package com.adobe.premiereclip.mediabrowser.source;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.LinkedBlockingStack;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.ThumbnailData;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.Utilities;
import java.util.ArrayList;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FileSystemMediaSource {
    private static final int initial_cores = 3;
    private static final long keep_alive_time = 1;
    private static final int max_cores = 4;
    private LinkedBlockingStack<Runnable> stack = new LinkedBlockingStack<>();
    private ThreadPoolExecutor mExecutor = new ThreadPoolExecutor(3, 4, 1, TimeUnit.SECONDS, this.stack);
    protected boolean cancel = false;

    public interface AssetLoadListener {
        void onAssetLoadFailure(int i, String str);

        void onAssetLoadSuccess(String str);
    }

    public interface FolderLoadListener {
        void onFolderLoadFailure(int i);

        void onFolderLoadSuccess(ArrayList<ThumbnailData> arrayList);
    }

    public interface LoginListener {
        void onSuccessfulLogin();
    }

    public interface LogoutListener {
        void onSuccessfulLogout();
    }

    protected abstract void getAssetInternal(MediaModel mediaModel, AssetLoadListener assetLoadListener);

    protected abstract void getChildrenInternal(Activity activity, Bucket bucket, Handler handler, FolderLoadListener folderLoadListener);

    protected abstract <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void getThumbnailInternal(MediaModel mediaModel, T t, Handler handler);

    public abstract void login(Context context, Activity activity, String str, LoginListener loginListener);

    public abstract void logout(Context context, LogoutListener logoutListener);

    public void cancelDataFetch() {
        this.cancel = true;
    }

    public void getChildren(final Activity activity, final Bucket bucket, final Handler handler, final FolderLoadListener folderLoadListener) {
        this.mExecutor.execute(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.1
            @Override // java.lang.Runnable
            public void run() {
                FileSystemMediaSource.this.getChildrenInternal(activity, bucket, handler, folderLoadListener);
            }
        });
    }

    public void getAsset(final MediaModel mediaModel, final AssetLoadListener assetLoadListener) {
        this.stack.offer(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.2
            @Override // java.lang.Runnable
            public void run() {
                FileSystemMediaSource.this.getAssetInternal(mediaModel, assetLoadListener);
            }
        });
    }

    public <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void getThumbnail(final MediaModel mediaModel, ImageView imageView, final T t, final Handler handler) {
        Bitmap bitmap = BitmapCache.getBitmap(mediaModel.getId());
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            this.stack.offer(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.3
                @Override // java.lang.Runnable
                public void run() {
                    FileSystemMediaSource.this.getThumbnailInternal(mediaModel, t, handler);
                }
            });
        }
    }

    protected static String getAccountType(String str) {
        switch (str) {
            case "google_drive":
                return "com.google";
            default:
                return null;
        }
    }
}
