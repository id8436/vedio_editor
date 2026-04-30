package android.support.v4.provider;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.support.annotation.RequiresApi;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(19)
class DocumentsContractApi19 {
    private static final int FLAG_VIRTUAL_DOCUMENT = 512;
    private static final String TAG = "DocumentFile";

    DocumentsContractApi19() {
    }

    public static boolean isDocumentUri(Context context, Uri uri) {
        return DocumentsContract.isDocumentUri(context, uri);
    }

    public static boolean isVirtual(Context context, Uri uri) {
        return isDocumentUri(context, uri) && (getFlags(context, uri) & 512) != 0;
    }

    public static String getName(Context context, Uri uri) {
        return queryForString(context, uri, "_display_name", null);
    }

    private static String getRawType(Context context, Uri uri) {
        return queryForString(context, uri, "mime_type", null);
    }

    public static String getType(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        if ("vnd.android.document/directory".equals(rawType)) {
            return null;
        }
        return rawType;
    }

    public static long getFlags(Context context, Uri uri) {
        return queryForLong(context, uri, "flags", 0L);
    }

    public static boolean isDirectory(Context context, Uri uri) {
        return "vnd.android.document/directory".equals(getRawType(context, uri));
    }

    public static boolean isFile(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        return ("vnd.android.document/directory".equals(rawType) || TextUtils.isEmpty(rawType)) ? false : true;
    }

    public static long lastModified(Context context, Uri uri) {
        return queryForLong(context, uri, "last_modified", 0L);
    }

    public static long length(Context context, Uri uri) {
        return queryForLong(context, uri, "_size", 0L);
    }

    public static boolean canRead(Context context, Uri uri) {
        return context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(getRawType(context, uri));
    }

    public static boolean canWrite(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String rawType = getRawType(context, uri);
        int iQueryForInt = queryForInt(context, uri, "flags", 0);
        if (TextUtils.isEmpty(rawType)) {
            return false;
        }
        if ((iQueryForInt & 4) != 0) {
            return true;
        }
        if (!"vnd.android.document/directory".equals(rawType) || (iQueryForInt & 8) == 0) {
            return (TextUtils.isEmpty(rawType) || (iQueryForInt & 2) == 0) ? false : true;
        }
        return true;
    }

    public static boolean delete(Context context, Uri uri) {
        try {
            return DocumentsContract.deleteDocument(context.getContentResolver(), uri);
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean exists(Context context, Uri uri) throws Throwable {
        Cursor cursorQuery;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"document_id"}, null, null, null);
            try {
                try {
                    boolean z = cursorQuery.getCount() > 0;
                    closeQuietly(cursorQuery);
                    return z;
                } catch (Exception e2) {
                    e = e2;
                    Log.w(TAG, "Failed query: " + e);
                    closeQuietly(cursorQuery);
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(cursorQuery);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
            closeQuietly(cursorQuery);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    private static String queryForString(Context context, Uri uri, String str, String str2) throws Throwable {
        Cursor cursorQuery;
        ?? r1 = 1;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        closeQuietly(cursorQuery);
                        r1 = cursorQuery;
                    } else {
                        str2 = cursorQuery.getString(0);
                        closeQuietly(cursorQuery);
                        r1 = cursorQuery;
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.w(TAG, "Failed query: " + e);
                    closeQuietly(cursorQuery);
                    r1 = cursorQuery;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(r1);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            closeQuietly(r1);
            throw th;
        }
        return str2;
    }

    private static int queryForInt(Context context, Uri uri, String str, int i) {
        return (int) queryForLong(context, uri, str, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    private static long queryForLong(Context context, Uri uri, String str, long j) throws Throwable {
        Cursor cursorQuery;
        ?? r1 = 1;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        closeQuietly(cursorQuery);
                        r1 = cursorQuery;
                    } else {
                        j = cursorQuery.getLong(0);
                        closeQuietly(cursorQuery);
                        r1 = cursorQuery;
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.w(TAG, "Failed query: " + e);
                    closeQuietly(cursorQuery);
                    r1 = cursorQuery;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(r1);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            closeQuietly(r1);
            throw th;
        }
        return j;
    }

    private static void closeQuietly(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }
}
