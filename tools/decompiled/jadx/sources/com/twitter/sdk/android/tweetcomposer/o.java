package com.twitter.sdk.android.tweetcomposer;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;

/* JADX INFO: compiled from: FileUtils.java */
/* JADX INFO: loaded from: classes.dex */
class o {
    @TargetApi(19)
    static String a(Context context, Uri uri) {
        if ((Build.VERSION.SDK_INT >= 19) && a(uri)) {
            String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
            if ("image".equals(strArrSplit[0])) {
                return a(context, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_id=?", new String[]{strArrSplit[1]});
            }
            return null;
        }
        if (b(uri)) {
            return a(context, uri, null, null);
        }
        if (c(uri)) {
            return uri.getPath();
        }
        return null;
    }

    static boolean a(Uri uri) {
        return "com.android.providers.media.documents".equalsIgnoreCase(uri.getAuthority());
    }

    static boolean b(Uri uri) {
        return "content".equalsIgnoreCase(uri.getScheme());
    }

    static boolean c(Uri uri) {
        return "file".equalsIgnoreCase(uri.getScheme());
    }

    static String a(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        if (cursorQuery == null) {
                            return string;
                        }
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    static String a(File file) {
        String strA = a(file.getName());
        return !TextUtils.isEmpty(strA) ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(strA) : "application/octet-stream";
    }

    static String a(String str) {
        if (str == null) {
            return null;
        }
        int iLastIndexOf = str.lastIndexOf(".");
        return iLastIndexOf < 0 ? "" : str.substring(iLastIndexOf + 1);
    }
}
