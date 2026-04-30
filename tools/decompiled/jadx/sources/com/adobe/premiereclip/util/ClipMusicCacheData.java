package com.adobe.premiereclip.util;

import android.content.Context;
import c.a.a.a.a.d.d;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.commons.io.FileUtils;

/* JADX INFO: loaded from: classes.dex */
public class ClipMusicCacheData {
    public static void copyImpactAndWaveformDataToCache(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("9da52969fa0e09d3c94247e635603ca2");
        arrayList.add("ac2e1d88e9755fdf0df341799a738e39");
        arrayList.add("733183b1904a10b2182df1132670bde1");
        arrayList.add("9172ee27403b61aee3bef44f73b9d9a9");
        arrayList.add("6153e7fa52c85550b7183ff5a21e9412");
        arrayList.add("b66c632a68f31ff353529fb1f4a93140");
        arrayList.add("303efb1c439c75e8b309acca56f5d6a5");
        arrayList.add("dc228c62b867908296249565b18ec3ea");
        arrayList.add("a474f9daf83d870a11716f55cec955f1");
        arrayList.add("896f600d1a3f7c92f12d6e4538146db6");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                String str = (String) arrayList.get(i2);
                copyDataToCache(context, str, "impact");
                copyDataToCache(context, str, "waveform");
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static void copyDataToCache(Context context, String str, String str2) {
        File file = new File(context.getCacheDir() + File.separator + str + d.ROLL_OVER_FILE_NAME_SEPARATOR + str2);
        if (!file.exists()) {
            try {
                FileUtils.copyInputStreamToFile(context.getResources().openRawResource(context.getResources().getIdentifier(str2 + d.ROLL_OVER_FILE_NAME_SEPARATOR + str, "raw", context.getPackageName())), file);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }
}
