package com.adobe.premiereclip.media;

import android.net.Uri;
import com.adobe.premiereclip.util.Utilities;
import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class MediaManager {
    private static MediaManager instance;
    private ArrayList<ClipAsset> addedAssets = new ArrayList<>();

    private MediaManager() {
    }

    public static MediaManager getInstance() {
        if (instance == null) {
            instance = new MediaManager();
        }
        return instance;
    }

    public ArrayList<ClipAsset> addAssets(ArrayList<MediaInfo> arrayList) {
        ArrayList<ClipAsset> arrayList2 = new ArrayList<>(arrayList.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                MediaInfo mediaInfo = arrayList.get(i2);
                String localPath = mediaInfo.getLocalPath();
                String assetUrl = mediaInfo.getAssetUrl();
                String assetDate = mediaInfo.getAssetDate();
                Uri uriFromFile = Uri.fromFile(new File(localPath));
                String mimeTypefromPath = Utilities.getMimeTypefromPath(localPath);
                if (!mimeTypefromPath.isEmpty()) {
                    ClipAsset clipAsset = new ClipAsset();
                    clipAsset.assetType = mimeTypefromPath.startsWith("video") ? "video" : "image";
                    clipAsset.filePath = localPath;
                    clipAsset.originalPath = assetUrl;
                    clipAsset.originalAssetDate = assetDate;
                    clipAsset.fileUri = uriFromFile;
                    clipAsset.clipAssetID = getUniqueId();
                    arrayList2.add(clipAsset);
                }
                i = i2 + 1;
            } else {
                this.addedAssets.addAll(arrayList2);
                return arrayList2;
            }
        }
    }

    private String getUniqueId() {
        return UUID.randomUUID().toString();
    }
}
