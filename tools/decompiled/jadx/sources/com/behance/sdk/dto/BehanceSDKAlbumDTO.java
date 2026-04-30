package com.behance.sdk.dto;

import android.content.Context;
import android.graphics.Bitmap;
import com.behance.sdk.enums.BehanceSDKAlbumType;
import com.behance.sdk.project.modules.ImageModule;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAlbumDTO {
    private String albumName;
    private BehanceSDKAlbumType albumType;
    private List<ImageModule> imagesList;

    public BehanceSDKAlbumDTO(String str, BehanceSDKAlbumType behanceSDKAlbumType) {
        this.albumName = str;
        if (behanceSDKAlbumType == null) {
            this.albumType = BehanceSDKAlbumType.DEVICE_ALBUM;
        } else {
            this.albumType = behanceSDKAlbumType;
        }
    }

    public String getName() {
        return this.albumName;
    }

    public Bitmap getCoverBitmap(Context context) {
        if (this.imagesList != null) {
            return this.imagesList.get(0).getThumbNail(context);
        }
        return null;
    }

    public void addImage(ImageModule imageModule) {
        if (this.imagesList == null) {
            this.imagesList = new ArrayList();
        }
        this.imagesList.add(imageModule);
    }

    public void setImages(List<ImageModule> list) {
        if (this.imagesList == null) {
            this.imagesList = new ArrayList();
        }
        if (list != null) {
            this.imagesList.addAll(list);
        }
    }

    public List<ImageModule> getImages() {
        return this.imagesList;
    }

    public BehanceSDKAlbumType getAlbumType() {
        return this.albumType;
    }
}
