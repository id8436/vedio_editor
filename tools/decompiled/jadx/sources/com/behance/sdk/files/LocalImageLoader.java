package com.behance.sdk.files;

import android.content.Context;
import android.database.Cursor;
import android.provider.MediaStore;
import com.behance.sdk.dto.BehanceSDKAlbumDTO;
import com.behance.sdk.enums.BehanceSDKAlbumType;
import com.behance.sdk.project.modules.ImageModule;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LocalImageLoader {
    private static final String ASC = " ASC";
    private static final String EMPTY_STRING = "";
    private static List<BehanceSDKAlbumDTO> albumsAndImageSourcesList;
    private static Object lockObject = new Object();
    private static volatile boolean cacheCleared = false;
    private static volatile boolean inProgress = false;

    public static List<BehanceSDKAlbumDTO> getAlbumsList(Context context, boolean z, boolean z2) {
        if (z || albumsAndImageSourcesList == null || albumsAndImageSourcesList.isEmpty()) {
            synchronized (lockObject) {
                inProgress = true;
                cacheCleared = false;
            }
            List<ImageAlbum> listOfAlbums = getListOfAlbums(context);
            synchronized (lockObject) {
                albumsAndImageSourcesList = new ArrayList();
                if (cacheCleared) {
                    cacheCleared = false;
                    return albumsAndImageSourcesList;
                }
                if (z2) {
                    albumsAndImageSourcesList.add(new BehanceSDKAlbumDTO("", BehanceSDKAlbumType.CAMERA));
                    albumsAndImageSourcesList.add(new BehanceSDKAlbumDTO("", BehanceSDKAlbumType.CREATIVE_CLOUD));
                }
                if (listOfAlbums != null && !listOfAlbums.isEmpty()) {
                    for (ImageAlbum imageAlbum : listOfAlbums) {
                        BehanceSDKAlbumDTO behanceSDKAlbumDTO = new BehanceSDKAlbumDTO(imageAlbum.getName(), BehanceSDKAlbumType.DEVICE_ALBUM);
                        behanceSDKAlbumDTO.setImages(imageAlbum.getImages());
                        albumsAndImageSourcesList.add(behanceSDKAlbumDTO);
                    }
                }
                inProgress = false;
            }
        }
        return albumsAndImageSourcesList;
    }

    public static BehanceSDKAlbumDTO getFromAlbumWithImageSelectionSources(Context context, int i) {
        List<BehanceSDKAlbumDTO> albumsList = getAlbumsList(context, false, false);
        if (albumsList == null || albumsList.size() <= i) {
            return null;
        }
        return albumsList.get(i);
    }

    public static void clearCachedAlbumAndImagesData() {
        synchronized (lockObject) {
            if (albumsAndImageSourcesList != null) {
                Iterator<BehanceSDKAlbumDTO> it = albumsAndImageSourcesList.iterator();
                while (it.hasNext()) {
                    List<ImageModule> images = it.next().getImages();
                    if (images != null && !images.isEmpty()) {
                        Iterator<ImageModule> it2 = images.iterator();
                        while (it2.hasNext()) {
                            it2.next().recycleBitmaps();
                        }
                    }
                }
                albumsAndImageSourcesList.clear();
                albumsAndImageSourcesList = null;
            }
            if (inProgress) {
                cacheCleared = true;
            }
        }
    }

    private static List<ImageAlbum> getListOfAlbums(Context context) {
        ImageAlbum imageAlbum;
        List<ImageModule> listOfImages = getListOfImages(context);
        HashMap map = new HashMap();
        for (ImageModule imageModule : listOfImages) {
            String albumName = imageModule.getAlbumName();
            if (map.containsKey(albumName)) {
                imageAlbum = (ImageAlbum) map.get(albumName);
            } else {
                imageAlbum = new ImageAlbum(albumName);
                map.put(albumName, imageAlbum);
            }
            imageAlbum.addImage(imageModule);
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.addAll(map.values());
        return arrayList;
    }

    private static List<ImageModule> getListOfImages(Context context) {
        ArrayList arrayList = new ArrayList();
        for (Cursor cursor : new Cursor[]{context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "_data", "bucket_display_name"}, "", (String[]) null, "_data ASC")}) {
            while (cursor.moveToNext()) {
                String string = cursor.getString(cursor.getColumnIndex("_id"));
                String string2 = cursor.getString(cursor.getColumnIndex("_data"));
                String string3 = cursor.getString(cursor.getColumnIndex("bucket_display_name"));
                LocalImage localImage = new LocalImage(Long.parseLong(string), string2);
                localImage.setAlbumName(string3);
                if (localImage.getWidth() > 0) {
                    arrayList.add(localImage);
                }
            }
        }
        return arrayList;
    }
}
