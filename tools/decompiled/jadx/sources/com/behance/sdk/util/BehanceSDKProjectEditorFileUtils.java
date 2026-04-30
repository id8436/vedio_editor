package com.behance.sdk.util;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.os.Environment;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.utility.AndroidMiscUtils;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorFileUtils {
    private static final String FOLDER_NAME_TEMP = "BehanceTemp";

    public static File createImageFile(Context context) throws IOException {
        return File.createTempFile("behance_image_" + UUID.randomUUID() + d.ROLL_OVER_FILE_NAME_SEPARATOR, AndroidMiscUtils.IMAGE_TYPE, context.getExternalFilesDir(Environment.DIRECTORY_PICTURES));
    }

    public static BehanceSDKProjectModuleType getModuleTypeFromPath(String str) {
        String str2 = str.split("\\.(?=[^\\.]+$)")[r0.length - 1];
        if (str2.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF) || str2.equalsIgnoreCase("jpg") || str2.equalsIgnoreCase("jpeg") || str2.equalsIgnoreCase("jpg") || str2.equalsIgnoreCase("png") || str2.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeFileExtensionTypeBMP)) {
            return BehanceSDKProjectModuleType.IMAGE;
        }
        if (str2.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMP4) || str2.equalsIgnoreCase("m4v") || str2.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMOV) || str2.equalsIgnoreCase("qt")) {
            return BehanceSDKProjectModuleType.VIDEO;
        }
        if (str2.equalsIgnoreCase("mp3") || str2.equalsIgnoreCase("wav") || str2.equalsIgnoreCase("wma")) {
            return BehanceSDKProjectModuleType.AUDIO;
        }
        return BehanceSDKProjectModuleType.UNKNOWN;
    }

    public static BitmapFactory.Options getStoredImageDetails(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return options;
    }
}
