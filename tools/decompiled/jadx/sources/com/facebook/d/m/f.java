package com.facebook.d.m;

import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: UriUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f1993a = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "display_photo").getPath();

    public static boolean a(@Nullable Uri uri) {
        String strI = i(uri);
        return "https".equals(strI) || "http".equals(strI);
    }

    public static boolean b(@Nullable Uri uri) {
        return "file".equals(i(uri));
    }

    public static boolean c(@Nullable Uri uri) {
        return "content".equals(i(uri));
    }

    public static boolean d(Uri uri) {
        return c(uri) && "com.android.contacts".equals(uri.getAuthority()) && !uri.getPath().startsWith(f1993a);
    }

    public static boolean e(Uri uri) {
        String string = uri.toString();
        return string.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString()) || string.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString());
    }

    public static boolean f(@Nullable Uri uri) {
        return AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_ASSET.equals(i(uri));
    }

    public static boolean g(@Nullable Uri uri) {
        return "res".equals(i(uri));
    }

    public static boolean h(@Nullable Uri uri) {
        return "data".equals(i(uri));
    }

    @Nullable
    public static String i(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.getScheme();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.ContentResolver r7, android.net.Uri r8) throws java.lang.Throwable {
        /*
            r6 = 0
            boolean r0 = c(r8)
            if (r0 == 0) goto L35
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r0 = r7
            r1 = r8
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L45
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L40
            if (r0 == 0) goto L45
            java.lang.String r0 = "_data"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L40
            r2 = -1
            if (r0 == r2) goto L45
            java.lang.String r6 = r1.getString(r0)     // Catch: java.lang.Throwable -> L40
            r0 = r6
        L28:
            if (r1 == 0) goto L2d
            r1.close()
        L2d:
            return r0
        L2e:
            r0 = move-exception
        L2f:
            if (r6 == 0) goto L34
            r6.close()
        L34:
            throw r0
        L35:
            boolean r0 = b(r8)
            if (r0 == 0) goto L43
            java.lang.String r0 = r8.getPath()
            goto L2d
        L40:
            r0 = move-exception
            r6 = r1
            goto L2f
        L43:
            r0 = r6
            goto L2d
        L45:
            r0 = r6
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.d.m.f.a(android.content.ContentResolver, android.net.Uri):java.lang.String");
    }
}
