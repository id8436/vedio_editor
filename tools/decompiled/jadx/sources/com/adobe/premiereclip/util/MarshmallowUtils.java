package com.adobe.premiereclip.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class MarshmallowUtils {
    @TargetApi(23)
    public static boolean getPermission(int i, String str, Activity activity) {
        if (Build.VERSION.SDK_INT < 23 || ActivityCompat.checkSelfPermission(activity, str) == 0) {
            return true;
        }
        ActivityCompat.requestPermissions(activity, new String[]{str}, i);
        return false;
    }

    @TargetApi(23)
    public static boolean getMultiplePermission(int i, String[] strArr, Activity activity) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 23) {
            for (String str : strArr) {
                if (ActivityCompat.checkSelfPermission(activity, str) != 0) {
                    arrayList.add(str);
                }
            }
            if (arrayList.size() != 0) {
                String[] strArr2 = new String[arrayList.size()];
                arrayList.toArray(strArr2);
                ActivityCompat.requestPermissions(activity, strArr2, i);
                return false;
            }
        }
        return true;
    }
}
