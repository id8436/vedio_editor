package com.behance.sdk.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPermissionHelper {
    public static final int REQUEST_CODE_LAUNCH_ALBUMS_VIEW = 1;
    public static final int REQUEST_CODE_LAUNCH_ALBUMS_VIEW_COVER_FRAGMENT = 3;
    public static final int REQUEST_CODE_LAUNCH_CAMERA = 2;
    public static final int REQUEST_CODE_STORAGE_DOWNLOAD_IMAGE = 4;

    public static boolean hasPermissionInManifest(Context context, String str) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null || strArr.length <= 0) {
                return false;
            }
            for (String str2 : strArr) {
                if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    public static boolean checkPermission(Context context, int i) {
        String[] permissionFromRequestCode = getPermissionFromRequestCode(i, context);
        if (permissionFromRequestCode == null || permissionFromRequestCode.length <= 0) {
            return true;
        }
        boolean z = true;
        for (String str : permissionFromRequestCode) {
            z = z && ContextCompat.checkSelfPermission(context, str) == 0;
        }
        return z;
    }

    public static String[] getPermissionFromRequestCode(int i, Context context) {
        switch (i) {
            case 1:
            case 3:
            case 4:
                return new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
            case 2:
                if (hasPermissionInManifest(context, "android.permission.CAMERA")) {
                    return new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE"};
                }
                return new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
            default:
                return null;
        }
    }

    public static boolean checkPermissionAndRequest(Context context, int i) {
        if (checkPermission(context, i)) {
            return true;
        }
        ActivityCompat.requestPermissions((AppCompatActivity) context, getPermissionFromRequestCode(i, context), i);
        return false;
    }
}
