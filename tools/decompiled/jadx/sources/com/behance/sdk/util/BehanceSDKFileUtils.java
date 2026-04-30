package com.behance.sdk.util;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.exception.BehanceSDKFileUtilsInitializationException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import java.io.File;
import org.apache.commons.io.FileUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKFileUtils {
    private static final String ROOT_TEMP_FOLDER_NAME = "BehanceTemp";
    private static File externalFilesDir;
    private static final ILogger logger = LoggerFactory.getLogger(FileUtils.class);

    public static void initialize(Context context) throws BehanceSDKFileUtilsInitializationException {
        externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            logger.error("Problem detecting storage", new Object[0]);
            throw new BehanceSDKFileUtilsInitializationException("Problem detecting storage");
        }
    }

    private static String getExternalStorageRootPath() {
        return externalFilesDir != null ? externalFilesDir.getAbsolutePath() : "";
    }

    public static String getAppStoragePath() {
        return getExternalStorageRootPath() + File.separator + ROOT_TEMP_FOLDER_NAME + File.separator;
    }

    public static String getNetworkAppProjectHTMLStoragePath(String str) {
        return getAppStoragePath() + str + BehanceSDKProjectDTO.LAYOUT_HTML_FILE_NAME;
    }

    public static String getRealPathFromUri(Context context, Uri uri) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(columnIndexOrThrow);
                if (cursorQuery == null) {
                    return string;
                }
                cursorQuery.close();
                return string;
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String getPath(Context context, Uri uri) {
        Uri uri2 = null;
        if (Build.VERSION.SDK_INT >= 19 && DocumentsContract.isDocumentUri(context, uri)) {
            if (isExternalStorageDocument(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                if (AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary.equalsIgnoreCase(strArrSplit[0])) {
                    return Environment.getExternalStorageDirectory() + URIUtil.SLASH + strArrSplit[1];
                }
                return null;
            }
            if (isDownloadsDocument(uri)) {
                return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
            }
            if (!isMediaDocument(uri)) {
                return null;
            }
            String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
            String str = strArrSplit2[0];
            if ("image".equals(str)) {
                uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            } else if ("video".equals(str)) {
                uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            } else if ("audio".equals(str)) {
                uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            }
            return getDataColumn(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
        }
        if ("content".equalsIgnoreCase(uri.getScheme())) {
            return getDataColumn(context, uri, null, null);
        }
        if ("file".equalsIgnoreCase(uri.getScheme())) {
            return uri.getPath();
        }
        return null;
    }

    public static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
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

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }
}
