package com.adobe.creativesdk.foundation.internal.storage.model.util;

import android.util.DisplayMetrics;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import java.net.URI;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageAssetFileUtils {
    public static final AdobeAssetImageDimensions FULL_SIZE_RENDITION = new AdobeAssetImageDimensions(0.0f, 0.0f);
    public static final AdobeAssetImageDimensions THUMBNAIL_SIZED_RENDITION = new AdobeAssetImageDimensions(250.0f, 0.0f);

    public static boolean isRootCollection(AdobeAssetFolder adobeAssetFolder) {
        String string;
        URI href = adobeAssetFolder.getHref();
        return (href == null || (string = href.toString()) == null || !string.equalsIgnoreCase("/files/")) ? false : true;
    }

    public static AdobeAssetImageDimensions getAssetFileImageDimensions(AdobeAssetFile adobeAssetFile) {
        AdobeAssetImageDimensions adobeAssetImageDimensions = new AdobeAssetImageDimensions(0.0f, 0.0f);
        JSONObject optionalMetadata = adobeAssetFile.getOptionalMetadata();
        if (optionalMetadata != null && optionalMetadata.has("height") && optionalMetadata.has("width")) {
            try {
                adobeAssetImageDimensions.height = optionalMetadata.getInt("height");
                adobeAssetImageDimensions.width = optionalMetadata.getInt("width");
            } catch (JSONException e2) {
            }
        }
        return adobeAssetImageDimensions;
    }

    public static AdobeAssetImageDimensions getAdjustedThumbnailSize(int i) {
        if (i >= THUMBNAIL_SIZED_RENDITION.width) {
            return adjustRenditionSizeBasedOnDeviceScale(THUMBNAIL_SIZED_RENDITION);
        }
        return new AdobeAssetImageDimensions(i, 0.0f);
    }

    private static AdobeAssetImageDimensions adjustRenditionSizeBasedOnDeviceScale(AdobeAssetImageDimensions adobeAssetImageDimensions) {
        return new AdobeAssetImageDimensions((float) getAdjustedDimension(adobeAssetImageDimensions.width), (float) getAdjustedDimension(adobeAssetImageDimensions.height));
    }

    private static double getAdjustedDimension(float f2) {
        DisplayMetrics displayMetrics = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getResources().getDisplayMetrics();
        double d2 = f2;
        if (displayMetrics.densityDpi >= 320) {
            return 2.0f * f2;
        }
        if (displayMetrics.densityDpi > 160) {
            return ((double) f2) * 1.5d;
        }
        return d2;
    }
}
