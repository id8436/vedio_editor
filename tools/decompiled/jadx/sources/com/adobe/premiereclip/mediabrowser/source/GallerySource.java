package com.adobe.premiereclip.mediabrowser.source;

import android.content.Context;
import android.os.Handler;
import android.widget.ImageView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.ThumbnailData;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.Utilities;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GallerySource {
    protected boolean cancel = false;

    public interface BucketLoadListener {
        void onBucketLoadError(Bucket bucket, int i);

        void onBucketLoadSuccess(Bucket bucket);
    }

    public interface GalleryDataListener {
        void onGalleryDataAvailable(ArrayList<ThumbnailData> arrayList);

        void onGalleryDataError(int i);

        void onUserRecoverableException();
    }

    public abstract void fetchAlbum(Bucket bucket, BucketLoadListener bucketLoadListener, Handler handler);

    public abstract void fetchData(Context context, GalleryDataListener galleryDataListener, Handler handler);

    public abstract <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void fetchThumbnail(Clip.CLIP_TYPE clip_type, MediaModel mediaModel, long j, ImageView imageView, int i, int i2, T t, Handler handler);

    public void cancelDataFetch() {
        this.cancel = true;
    }

    public static GallerySource createSource(String str) {
        switch (str) {
            case "device":
                return new DeviceMediaSource();
            case "moments":
                return new GroupedMediaSource();
            case "google_photos":
                return new GooglePhotosSource();
            default:
                return null;
        }
    }

    public static String getSourceString(Context context, String str) {
        switch (str) {
            case "device":
                return context.getResources().getString(R.string.gallery_title);
            case "moments":
                return context.getResources().getString(R.string.moments_title);
            case "google_photos":
                return context.getResources().getString(R.string.google_photos_title);
            case "google_drive":
                return context.getResources().getString(R.string.google_drive_title);
            case "dropbox":
                return context.getResources().getString(R.string.dropbox_title);
            default:
                return null;
        }
    }
}
