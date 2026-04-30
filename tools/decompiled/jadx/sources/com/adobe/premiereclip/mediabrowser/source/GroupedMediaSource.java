package com.adobe.premiereclip.mediabrowser.source;

import android.content.Context;
import android.os.Handler;
import com.adobe.premiereclip.mediabrowser.ThumbnailData;
import com.adobe.premiereclip.mediabrowser.Utils;
import com.adobe.premiereclip.mediabrowser.grouping.GroupingManager;
import com.adobe.premiereclip.mediabrowser.source.GallerySource;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class GroupedMediaSource extends DeviceMediaSource {
    @Override // com.adobe.premiereclip.mediabrowser.source.DeviceMediaSource, com.adobe.premiereclip.mediabrowser.source.GallerySource
    public void fetchData(final Context context, final GallerySource.GalleryDataListener galleryDataListener, final Handler handler) {
        new Thread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GroupedMediaSource.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(new GroupingManager(context).getSortedMediaGroups());
                    final ArrayList<ThumbnailData> thumbnailDataFromBuckets = Utils.getThumbnailDataFromBuckets(arrayList);
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GroupedMediaSource.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!GroupedMediaSource.this.cancel) {
                                galleryDataListener.onGalleryDataAvailable(thumbnailDataFromBuckets);
                            }
                        }
                    });
                } catch (Exception e2) {
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GroupedMediaSource.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!GroupedMediaSource.this.cancel) {
                                galleryDataListener.onGalleryDataError(55);
                            }
                        }
                    });
                    e2.printStackTrace();
                }
            }
        }).start();
    }
}
