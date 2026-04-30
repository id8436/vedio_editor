package com.crashlytics.android.beta;

import android.content.Context;
import android.content.pm.PackageManager;
import c.a.a.a.a.a.d;
import c.a.a.a.f;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceTokenLoader implements d<String> {
    private static final String DIRFACTOR_DEVICE_TOKEN_PREFIX = "assets/com.crashlytics.android.beta/dirfactor-device-token=";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [c.a.a.a.t] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.crashlytics.android.beta.DeviceTokenLoader] */
    @Override // c.a.a.a.a.a.d
    public String load(Context context) throws Exception {
        long jNanoTime = System.nanoTime();
        String strDetermineDeviceToken = "";
        ?? zipInputStreamOfAppApkFrom = 0;
        zipInputStreamOfAppApkFrom = 0;
        zipInputStreamOfAppApkFrom = 0;
        zipInputStreamOfAppApkFrom = 0;
        try {
            try {
                try {
                    try {
                        zipInputStreamOfAppApkFrom = getZipInputStreamOfAppApkFrom(context);
                        strDetermineDeviceToken = determineDeviceToken(zipInputStreamOfAppApkFrom);
                        if (zipInputStreamOfAppApkFrom != 0) {
                            try {
                                zipInputStreamOfAppApkFrom.close();
                            } catch (IOException e2) {
                                f.h().e(Beta.TAG, "Failed to close the APK file", e2);
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e3) {
                        f.h().e(Beta.TAG, "Failed to find this app in the PackageManager", e3);
                        if (zipInputStreamOfAppApkFrom != 0) {
                            try {
                                zipInputStreamOfAppApkFrom.close();
                            } catch (IOException e4) {
                                f.h().e(Beta.TAG, "Failed to close the APK file", e4);
                            }
                        }
                    }
                } catch (FileNotFoundException e5) {
                    f.h().e(Beta.TAG, "Failed to find the APK file", e5);
                    if (zipInputStreamOfAppApkFrom != 0) {
                        try {
                            zipInputStreamOfAppApkFrom.close();
                        } catch (IOException e6) {
                            f.h().e(Beta.TAG, "Failed to close the APK file", e6);
                        }
                    }
                }
            } catch (IOException e7) {
                f.h().e(Beta.TAG, "Failed to read the APK file", e7);
                if (zipInputStreamOfAppApkFrom != 0) {
                    try {
                        zipInputStreamOfAppApkFrom.close();
                    } catch (IOException e8) {
                        f.h().e(Beta.TAG, "Failed to close the APK file", e8);
                    }
                }
            }
            zipInputStreamOfAppApkFrom = "Beta device token load took " + ((System.nanoTime() - jNanoTime) / 1000000.0d) + "ms";
            f.h().a(Beta.TAG, zipInputStreamOfAppApkFrom);
            return strDetermineDeviceToken;
        } catch (Throwable th) {
            if (zipInputStreamOfAppApkFrom != 0) {
                try {
                    zipInputStreamOfAppApkFrom.close();
                } catch (IOException e9) {
                    f.h().e(Beta.TAG, "Failed to close the APK file", e9);
                }
            }
            throw th;
        }
    }

    ZipInputStream getZipInputStreamOfAppApkFrom(Context context) throws PackageManager.NameNotFoundException, FileNotFoundException {
        return new ZipInputStream(new FileInputStream(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).sourceDir));
    }

    String determineDeviceToken(ZipInputStream zipInputStream) throws IOException {
        String name;
        do {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                return "";
            }
            name = nextEntry.getName();
        } while (!name.startsWith(DIRFACTOR_DEVICE_TOKEN_PREFIX));
        return name.substring(DIRFACTOR_DEVICE_TOKEN_PREFIX.length(), name.length() - 1);
    }
}
