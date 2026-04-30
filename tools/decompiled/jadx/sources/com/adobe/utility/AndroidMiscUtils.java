package com.adobe.utility;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.MediaStore;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Scanner;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidMiscUtils {
    private static final int BUFFER_SIZE = 1024;
    public static final String DATE_FORMAT = "yyyyMMdd_HHmmss";
    public static final String FILE_NAME = "PSM_";
    public static final String IMAGE_TYPE = ".jpg";
    public static final int MEDIA_TYPE_IMAGE = 1;
    private static int sDeviceMaxHeapMemory;
    private static float sDeviceTotalMemoryGB = 0.0f;
    private static int sDeviceCPUInfo = 0;
    private static int sScreenWidth = 0;
    private static int sScreenHeight = 0;
    private static float sScreenScale = 1.0f;

    private AndroidMiscUtils() {
    }

    public static String getPathToImageFromPicker(Context context, ContentResolver contentResolver, Uri uri) {
        String resolvedPathFromContentResolver = getResolvedPathFromContentResolver(contentResolver, uri);
        if (resolvedPathFromContentResolver == null) {
            try {
                return copyBitmapFromMediaStore(context, contentResolver, uri);
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
                return resolvedPathFromContentResolver;
            } catch (IOException e3) {
                e3.printStackTrace();
                return resolvedPathFromContentResolver;
            }
        }
        if (resolvedPathFromContentResolver.startsWith("http") || resolvedPathFromContentResolver.startsWith("https")) {
            return downloadImage(context, resolvedPathFromContentResolver);
        }
        return resolvedPathFromContentResolver;
    }

    public static String getResolvedPathFromContentResolver(ContentResolver contentResolver, Uri uri) {
        String strDecode = Uri.decode(uri.toString());
        if (strDecode != null) {
            String[] strArrSplit = strDecode.split(":");
            if (strArrSplit.length > 0) {
                String[] strArr = {"_data"};
                Cursor cursorQuery = contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, strArr, "_id=?", new String[]{strArrSplit[strArrSplit.length - 1]}, null);
                if (cursorQuery != null) {
                    string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndex(strArr[0])) : null;
                    cursorQuery.close();
                }
            }
        }
        return string;
    }

    public static String copyBitmapFromMediaStore(Context context, ContentResolver contentResolver, Uri uri) throws Throwable {
        String absolutePath;
        Bitmap.CompressFormat compressFormat;
        String str;
        FileOutputStream fileOutputStream = null;
        try {
            Bitmap bitmap = MediaStore.Images.Media.getBitmap(contentResolver, uri);
            String type = contentResolver.getType(uri);
            if (type == null || !supportedMime(type)) {
                absolutePath = null;
            } else {
                Bitmap.CompressFormat compressFormat2 = Bitmap.CompressFormat.JPEG;
                if (!type.equalsIgnoreCase("image/png")) {
                    compressFormat = compressFormat2;
                    str = "download.jpg";
                } else {
                    compressFormat = Bitmap.CompressFormat.PNG;
                    str = "download.png";
                }
                File file = new File(context.getCacheDir(), str);
                absolutePath = file.getAbsolutePath();
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    ImageUtils.writeBitmapToStream(bitmap, compressFormat, fileOutputStream2);
                    fileOutputStream = fileOutputStream2;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
            }
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            return absolutePath;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean supportedMime(String str) {
        if (str != null && str.equalsIgnoreCase("image/png")) {
            return true;
        }
        if (str != null && (str.equalsIgnoreCase(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRenditionContentTypeJPG) || str.equalsIgnoreCase("image/jpeg"))) {
            return true;
        }
        if (str == null || !str.equalsIgnoreCase("image/gif")) {
            return str != null && str.equalsIgnoreCase(AdobeAssetFileExtensions.kAdobeMimeTypeBMP);
        }
        return true;
    }

    public static String downloadImage(Context context, String str) throws Throwable {
        String absolutePath;
        HttpEntity entity;
        FileOutputStream fileOutputStream;
        InputStream content;
        File file;
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        HttpGet httpGet = new HttpGet(str);
        try {
            HttpResponse httpResponseExecute = defaultHttpClient.execute(httpGet);
            if (httpResponseExecute.getStatusLine().getStatusCode() != 200 || (entity = httpResponseExecute.getEntity()) == null) {
                absolutePath = null;
            } else {
                try {
                    content = entity.getContent();
                    try {
                        file = new File(context.getCacheDir(), "download.jpg");
                        fileOutputStream = new FileOutputStream(file);
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                    content = null;
                }
                try {
                    copyFileViaStreams(content, fileOutputStream);
                    absolutePath = file.getAbsolutePath();
                    if (content != null) {
                        content.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    entity.consumeContent();
                } catch (Throwable th3) {
                    th = th3;
                    if (content != null) {
                        content.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    entity.consumeContent();
                    throw th;
                }
            }
            return absolutePath;
        } catch (IOException e2) {
            httpGet.abort();
            return null;
        } catch (IllegalStateException e3) {
            httpGet.abort();
            return null;
        } catch (Exception e4) {
            httpGet.abort();
            return null;
        }
    }

    public static void copyFileViaStreams(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i > 0) {
                outputStream.write(bArr, 0, i);
            } else {
                return;
            }
        }
    }

    public static void runMediaScanner(Context context, Uri uri) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(uri);
        context.sendBroadcast(intent);
    }

    public static boolean checkCameraHardware(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.camera") || context.getPackageManager().hasSystemFeature("android.hardware.camera.front");
    }

    public static boolean isIntentAvailable(Context context, String str) {
        return context.getPackageManager().queryIntentActivities(new Intent(str), 65536).size() > 0;
    }

    public static String getApplicationName(Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    public static Uri getOutputMediaFileUri(Context context, int i) {
        File outputMediaFile = getOutputMediaFile(context, i);
        if (outputMediaFile != null) {
            return Uri.fromFile(outputMediaFile);
        }
        return null;
    }

    public static File getOutputMediaFile(Context context, int i) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return null;
        }
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), getApplicationName(context));
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        String str = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
        if (i == 1) {
            return new File(file.getPath() + File.separator + FILE_NAME + str + IMAGE_TYPE);
        }
        return null;
    }

    public static boolean isPackageInstalled(String str, Context context) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float getDeviceTotalMemoryGB() throws java.lang.Throwable {
        /*
            r4 = 1
            float r0 = com.adobe.utility.AndroidMiscUtils.sDeviceTotalMemoryGB
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto Lb
            float r0 = com.adobe.utility.AndroidMiscUtils.sDeviceTotalMemoryGB
        La:
            return r0
        Lb:
            r2 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L4e
            java.lang.String r0 = "/proc/meminfo"
            java.lang.String r3 = "r"
            r1.<init>(r0, r3)     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L4e
            java.lang.String r0 = r1.readLine()     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            java.lang.String r2 = "\\s+"
            java.lang.String[] r0 = r0.split(r2)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            int r2 = r0.length     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            if (r2 <= r4) goto L31
            r2 = 1
            r0 = r0[r2]     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            r2 = 1233125376(0x49800000, float:1048576.0)
            float r0 = r0 / r2
            com.adobe.utility.AndroidMiscUtils.sDeviceTotalMemoryGB = r0     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
        L31:
            if (r1 == 0) goto L36
            r1.close()     // Catch: java.io.IOException -> L39
        L36:
            float r0 = com.adobe.utility.AndroidMiscUtils.sDeviceTotalMemoryGB
            goto La
        L39:
            r0 = move-exception
            r0.printStackTrace()
            goto L36
        L3e:
            r0 = move-exception
            r1 = r2
        L40:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L5b
            if (r1 == 0) goto L36
            r1.close()     // Catch: java.io.IOException -> L49
            goto L36
        L49:
            r0 = move-exception
            r0.printStackTrace()
            goto L36
        L4e:
            r0 = move-exception
            r1 = r2
        L50:
            if (r1 == 0) goto L55
            r1.close()     // Catch: java.io.IOException -> L56
        L55:
            throw r0
        L56:
            r1 = move-exception
            r1.printStackTrace()
            goto L55
        L5b:
            r0 = move-exception
            goto L50
        L5d:
            r0 = move-exception
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.utility.AndroidMiscUtils.getDeviceTotalMemoryGB():float");
    }

    public static void setDeviceMaxHeapMemoryMB(int i) {
        sDeviceMaxHeapMemory = i;
    }

    public static int getDeviceMaxHeapMemoryMB() {
        return sDeviceMaxHeapMemory;
    }

    public static int getCPUFrequencyMax() {
        int systemFileAsInt;
        if (sDeviceCPUInfo != 0) {
            return sDeviceCPUInfo;
        }
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        for (int i = 0; i < iAvailableProcessors; i++) {
            try {
                systemFileAsInt = readSystemFileAsInt("/sys/devices/system/cpu/cpu" + Integer.toString(i) + "/cpufreq/cpuinfo_max_freq");
            } catch (Exception e2) {
                e2.printStackTrace();
                systemFileAsInt = 0;
            }
            sDeviceCPUInfo = Math.max(sDeviceCPUInfo, systemFileAsInt);
        }
        return sDeviceCPUInfo;
    }

    private static int readSystemFileAsInt(String str) throws Exception {
        try {
            return Integer.parseInt(readFully(new ProcessBuilder("/system/bin/cat", str).start().getInputStream()));
        } catch (Exception e2) {
            throw new Exception(e2);
        }
    }

    public static final String readFully(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        Scanner scanner = new Scanner(inputStream);
        while (scanner.hasNextLine()) {
            sb.append(scanner.nextLine());
        }
        scanner.close();
        return sb.toString();
    }

    public static long getFreeDiskspace() {
        long jBlockSize18;
        long jAvailableBlocks18;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        if (Build.VERSION.SDK_INT < 18) {
            jBlockSize18 = statFs.getBlockSize();
            jAvailableBlocks18 = statFs.getAvailableBlocks();
        } else {
            jBlockSize18 = blockSize18(statFs);
            jAvailableBlocks18 = availableBlocks18(statFs);
        }
        return jAvailableBlocks18 * jBlockSize18;
    }

    @TargetApi(18)
    private static long blockSize18(StatFs statFs) {
        return statFs.getBlockSizeLong();
    }

    @TargetApi(18)
    private static long availableBlocks18(StatFs statFs) {
        return statFs.getAvailableBlocksLong();
    }

    public static void setScreenWidthPixels(int i) {
        sScreenWidth = i;
    }

    public static void setScreenHeightPixels(int i) {
        sScreenHeight = i;
    }

    public static void setScreenScale(float f2) {
        sScreenScale = f2;
    }

    public static int getScreenWidthPixels() {
        return sScreenWidth;
    }

    public static int getScreenHeightPixels() {
        return sScreenHeight;
    }

    public static float getScreenScale() {
        return sScreenScale;
    }

    public static boolean isConnectedToInternet(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static boolean isOnWiFiNetwork(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType() == 1;
    }
}
