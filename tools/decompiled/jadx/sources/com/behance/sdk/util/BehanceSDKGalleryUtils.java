package com.behance.sdk.util;

import android.support.v4.util.ArrayMap;
import c.a.a.a.a.b.a;
import com.adobe.utility.AndroidMiscUtils;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGalleryUtils {
    public static Map<String, List<File>> getGalleryFilePaths(String str) {
        ArrayMap arrayMap = new ArrayMap();
        GalleryFileFilter galleryFileFilter = new GalleryFileFilter(true);
        File file = new File(str);
        File[] fileArrListFiles = file.listFiles(galleryFileFilter);
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    if (!file2.isHidden()) {
                        ArrayList arrayList2 = new ArrayList();
                        addFilesRecursively(arrayList2, file2.listFiles(galleryFileFilter), galleryFileFilter);
                        if (arrayList2.size() > 0) {
                            arrayMap.put(file2.getName(), arrayList2);
                        }
                    }
                } else if (!file2.isHidden()) {
                    arrayList.add(file2);
                }
            }
        }
        if (arrayList.size() > 0) {
            arrayMap.put(file.getName(), arrayList);
        }
        return arrayMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<File> getGalleryImageFilePaths(String str) {
        GalleryFileFilter galleryFileFilter = new GalleryFileFilter(0 == true ? 1 : 0);
        File[] fileArrListFiles = new File(str).listFiles(galleryFileFilter);
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    if (!file.isHidden()) {
                        addFilesRecursively(arrayList, file.listFiles(galleryFileFilter), galleryFileFilter);
                    }
                } else if (!file.isHidden()) {
                    arrayList.add(file);
                }
            }
        }
        return arrayList;
    }

    private static void addFilesRecursively(List<File> list, File[] fileArr, GalleryFileFilter galleryFileFilter) {
        if (fileArr != null) {
            for (File file : fileArr) {
                if (!file.isHidden()) {
                    if (file.isDirectory()) {
                        addFilesRecursively(list, file.listFiles(galleryFileFilter), galleryFileFilter);
                    } else {
                        list.add(file);
                    }
                }
            }
        }
    }

    class GalleryFileFilter implements FileFilter {
        private boolean includeVideo;

        private GalleryFileFilter(boolean z) {
            this.includeVideo = z;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return (file.isDirectory() && !file.getName().equalsIgnoreCase(a.ANDROID_CLIENT_TYPE)) || isCompatible(file.getAbsolutePath());
        }

        private boolean isCompatible(String str) {
            return str.endsWith(AndroidMiscUtils.IMAGE_TYPE) || str.endsWith(".jpeg") || str.endsWith(".png") || str.endsWith(".gif") || str.endsWith(".bmp") || (this.includeVideo && str.endsWith(".mp4"));
        }
    }
}
