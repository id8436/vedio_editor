package com.adobe.premiereclip.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class CameraHelper {
    public static final String DATE_FORMAT = "yyyyMMdd_HHmmss";
    public static final int MEDIA_TYPE_IMAGE = 101;
    public static final int MEDIA_TYPE_VIDEO = 102;
    private static final String TAG = "Camera";

    public static boolean checkCameraHardware(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.camera") || context.getPackageManager().hasSystemFeature("android.hardware.camera.front");
    }

    public static boolean isIntentAvailable(Context context, String str) {
        return context.getPackageManager().queryIntentActivities(new Intent(str), 65536).size() > 0;
    }

    public static Uri getOutputMediaFileUri(Context context, int i) {
        File capturedMediaFile = Utilities.getCapturedMediaFile(context, i);
        if (capturedMediaFile != null) {
            return Uri.fromFile(capturedMediaFile);
        }
        return null;
    }
}
