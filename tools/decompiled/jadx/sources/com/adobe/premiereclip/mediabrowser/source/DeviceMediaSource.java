package com.adobe.premiereclip.mediabrowser.source;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.util.Log;
import android.widget.ImageView;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.ThumbnailData;
import com.adobe.premiereclip.mediabrowser.Utils;
import com.adobe.premiereclip.mediabrowser.source.GallerySource;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.ThumbnailHelper;
import com.adobe.premiereclip.util.Utilities;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceMediaSource extends GallerySource {
    @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource
    public void fetchData(final Context context, final GallerySource.GalleryDataListener galleryDataListener, final Handler handler) {
        new Thread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DeviceMediaSource.1
            @Override // java.lang.Runnable
            public void run() {
                Cursor cursorInitPhoneMedia = Utils.initPhoneMedia(context);
                final ArrayList<ThumbnailData> arrayList = new ArrayList<>();
                ArrayList arrayList2 = new ArrayList();
                if (cursorInitPhoneMedia != null) {
                    arrayList2.addAll(DeviceMediaSource.this.getDataFromCursor(cursorInitPhoneMedia).values());
                    cursorInitPhoneMedia.close();
                    arrayList = Utils.getThumbnailDataFromBuckets(arrayList2);
                } else {
                    Log.e("TAG", "Unable to initiate cursor");
                }
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DeviceMediaSource.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!DeviceMediaSource.this.cancel) {
                            galleryDataListener.onGalleryDataAvailable(arrayList);
                        }
                    }
                });
            }
        }).start();
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource
    public void fetchAlbum(final Bucket bucket, final GallerySource.BucketLoadListener bucketLoadListener, final Handler handler) {
        new Thread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DeviceMediaSource.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DeviceMediaSource.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!DeviceMediaSource.this.cancel) {
                                bucketLoadListener.onBucketLoadSuccess(bucket);
                            }
                        }
                    });
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }).start();
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource
    public <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void fetchThumbnail(Clip.CLIP_TYPE clip_type, MediaModel mediaModel, long j, ImageView imageView, int i, int i2, T t, Handler handler) {
        ThumbnailHelper.load(clip_type, mediaModel.getId(), mediaModel.getPath(), -1L, imageView, i, i2, t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, Bucket> getDataFromCursor(Cursor cursor) {
        Bucket bucket;
        HashMap<String, Bucket> map = new HashMap<>();
        if (cursor != null && cursor.getCount() > 0) {
            cursor.moveToFirst();
            int columnIndex = cursor.getColumnIndex("_id");
            int columnIndex2 = cursor.getColumnIndex("_data");
            int columnIndex3 = cursor.getColumnIndex(GalleryActivity.INTENT_ARG_MEDIA_TYPE);
            int columnIndex4 = cursor.getColumnIndex("duration");
            int columnIndex5 = cursor.getColumnIndex("bucket_id");
            int columnIndex6 = cursor.getColumnIndex("bucket_display_name");
            int columnIndex7 = cursor.getColumnIndex("_size");
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= cursor.getCount()) {
                    break;
                }
                cursor.moveToPosition(i2);
                int i3 = cursor.getInt(columnIndex3);
                String str = "m" + Long.toString(cursor.getLong(columnIndex));
                String string = cursor.getString(columnIndex2);
                long j = cursor.getLong(columnIndex4);
                long j2 = cursor.getLong(columnIndex7);
                String str2 = "b" + Long.toString(cursor.getLong(columnIndex5));
                String string2 = cursor.getString(columnIndex6);
                Bucket bucket2 = map.get(str2);
                if (bucket2 == null) {
                    bucket = new Bucket(str2, string2);
                    map.put(str2, bucket);
                } else {
                    bucket = bucket2;
                }
                bucket.addItem(new MediaModel(str, string, i3, j, j2, bucket, 0.0d, 0.0d, 0L));
                i = i2 + 1;
            }
            for (Bucket bucket3 : map.values()) {
                bucket3.setId(bucket3.getId() + bucket3.getItems().get(0).getId());
            }
        } else {
            Log.d("DeviceMediaSource", "No media files in phone");
        }
        return map;
    }
}
