package com.adobe.premiereclip.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class FileOps {
    public static void saveBitmap(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, int i) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
            file = new File(str);
            Log.w("File exists", "" + file + ",Bitmap= " + str);
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(compressFormat, i, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static boolean copyRawFileToStorage(Context context, int i, String str) {
        if (new File(str).exists()) {
            return false;
        }
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = inputStreamOpenRawResource.read(bArr);
                if (i2 > 0) {
                    fileOutputStream.write(bArr, 0, i2);
                } else {
                    inputStreamOpenRawResource.close();
                    fileOutputStream.close();
                    return true;
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean delete(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }
}
