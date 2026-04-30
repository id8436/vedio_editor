package com.adobe.premiereclip.mediaengine.gpumedia.surface;

import android.content.Context;
import android.graphics.Bitmap;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.looks.LocalLooks;

/* JADX INFO: loaded from: classes2.dex */
public class ClipLookUpSurface extends ImageSurface {
    private BaseLook currentLook;

    public ClipLookUpSurface(Context context) {
        super(context);
        this.mWidth = 16;
        this.mHeight = 256;
        this.currentLook = LocalLooks.getClipLook("0");
    }

    public BaseLook getCurrentLook() {
        return this.currentLook;
    }

    public boolean setLook(BaseLook baseLook) {
        if (this.currentLook == baseLook) {
            return true;
        }
        this.currentLook = baseLook;
        Bitmap lookupBitmap = this.currentLook.getLookupBitmap();
        setBitmap(lookupBitmap);
        drawImage();
        return lookupBitmap != null;
    }
}
