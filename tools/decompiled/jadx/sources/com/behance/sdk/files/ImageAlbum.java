package com.behance.sdk.files;

import android.content.Context;
import android.graphics.Bitmap;
import com.behance.sdk.project.modules.ImageModule;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ImageAlbum {
    private String albumName;
    private List<ImageModule> images;

    public ImageAlbum(String str) {
        this.albumName = str;
    }

    public void addImage(ImageModule imageModule) {
        if (this.images == null) {
            this.images = new ArrayList();
        }
        this.images.add(imageModule);
    }

    public String getName() {
        return this.albumName;
    }

    public Bitmap getCoverBitmap(Context context) {
        if (this.images != null) {
            return this.images.get(0).getThumbNail(context);
        }
        return null;
    }

    public List<ImageModule> getImages() {
        return this.images;
    }
}
