package com.adobe.premiereclip.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.media.ExifInterface;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.ThumbnailUtils;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.support.design.widget.TabLayout;
import android.support.v7.widget.RecyclerView;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ListPopupWindow;
import android.widget.SeekBar;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelection;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionPhotoAsset;
import com.adobe.customextractor.ClipExtractor;
import com.adobe.premiereclip.BuildConfig;
import com.adobe.premiereclip.CameraCaptureManager;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.downloadmanager.CCDownloadManager;
import com.adobe.premiereclip.media.MediaInfo;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.utility.AndroidMiscUtils;
import com.crashlytics.android.Crashlytics;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class Utilities {
    private static final int INITIAL_POOL_SIZE = 5;
    private static final int KEEP_ALIVE = 1;
    private static final int MAXIMUM_POOL_SIZE = 100;
    private static final int QUEUE_SIZE = 25;
    private static final String TAG = "Utilities";
    private static final int THUMBNAIL_MAXIMUM_POOL_SIZE = 15;
    private static final int THUMBNAIL_QUEUE_SIZE = 56;
    private static final int THUMBNAIL_THROTTLE_CORE_POOL_SIZE = 1;
    private static final int THUMBNAIL_THROTTLE_MAXIMUM_POOL_SIZE = 3;
    private static int screenHeight;
    private static int screenWidth;
    private static String internalStorageDirectory = PremiereClipApplication.getContext().getApplicationInfo().dataDir;
    private static final BlockingQueue<Runnable> sPoolWorkQueue = new LinkedBlockingQueue(25);
    private static final PriorityBlockingQueue<Runnable> thumbnailPoolWorkQueue = new PriorityBlockingQueue<>(56);
    private static final ScheduledExecutorService SCROLL_WORKER = Executors.newScheduledThreadPool(10);
    public static final Executor THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 100, 1, TimeUnit.SECONDS, sPoolWorkQueue, new ThreadPoolExecutor.DiscardOldestPolicy());
    public static final Executor THUMBNAIL_THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 15, 1, TimeUnit.SECONDS, thumbnailPoolWorkQueue);

    public interface ClipImageHolder {
        int getAdapterPosition();

        ImageView getImageView();

        String getKey();
    }

    public interface IClipScrollAdapter {
        boolean isProcessing();

        void notifyDataSetChanged();

        void startProcessing();

        void stopProcessing();
    }

    public interface ThumbnailLoadListener {
        int getClipPosition(String str);

        void onFailureImageLoad(String str);

        void onSuccessImageLoad(String str, Bitmap bitmap);
    }

    public static void setThumbnailThreadPoolThrottle(boolean z) {
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) THUMBNAIL_THREAD_POOL_EXECUTOR;
        if (z) {
            threadPoolExecutor.setCorePoolSize(1);
            threadPoolExecutor.setMaximumPoolSize(3);
        } else {
            threadPoolExecutor.setCorePoolSize(5);
            threadPoolExecutor.setMaximumPoolSize(15);
        }
    }

    @TargetApi(21)
    public static void setStatusBar(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
            window.setStatusBarColor(activity.getResources().getColor(R.color.status_bar_color));
            Point point = new Point();
            activity.getWindowManager().getDefaultDisplay().getSize(point);
            screenWidth = point.x;
            screenHeight = point.y;
        }
    }

    @TargetApi(21)
    public static void setStatusBar(Activity activity, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
            window.setStatusBarColor(activity.getResources().getColor(i));
            Point point = new Point();
            activity.getWindowManager().getDefaultDisplay().getSize(point);
            screenWidth = point.x;
            screenHeight = point.y;
        }
    }

    public static boolean getSyncOnWifiSettings() {
        return PreferenceManager.getDefaultSharedPreferences(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext()).getBoolean("PSMIXSettingsSyncEnabledOnWifi", true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v8, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getRealPathFromUri(android.content.Context r7, android.net.Uri r8) throws java.lang.Throwable {
        /*
            r6 = 0
            java.lang.String r0 = r8.getScheme()
            if (r0 == 0) goto L14
            java.lang.String r0 = r8.getScheme()
            java.lang.String r1 = "content"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L19
        L14:
            java.lang.String r0 = r8.getPath()
        L18:
            return r0
        L19:
            r0 = 1
            java.lang.String[] r2 = new java.lang.String[r0]     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> L60
            r0 = 0
            java.lang.String r1 = "_data"
            r2[r0] = r1     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> L60
            android.content.ContentResolver r0 = r7.getContentResolver()     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> L60
            r3 = 0
            r4 = 0
            r5 = 0
            r1 = r8
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> L60
            if (r1 == 0) goto L44
            java.lang.String r0 = "_data"
            int r0 = r1.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
            if (r1 == 0) goto L18
            r1.close()
            goto L18
        L44:
            java.lang.String r0 = "Utilities"
            java.lang.String r2 = "getRealPathFromUri : cursor is null"
            android.util.Log.w(r0, r2)     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a
            if (r1 == 0) goto L52
            r1.close()
        L52:
            r0 = r6
            goto L18
        L54:
            r0 = move-exception
            r1 = r6
        L56:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L68
            if (r1 == 0) goto L5e
            r1.close()
        L5e:
            r0 = r6
            goto L18
        L60:
            r0 = move-exception
            r1 = r6
        L62:
            if (r1 == 0) goto L67
            r1.close()
        L67:
            throw r0
        L68:
            r0 = move-exception
            goto L62
        L6a:
            r0 = move-exception
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.util.Utilities.getRealPathFromUri(android.content.Context, android.net.Uri):java.lang.String");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String getMimeTypefromPath(String str) {
        Log.d(TAG, "got path " + str);
        if (!str.contains(".")) {
            return "";
        }
        String lowerCase = str.split("\\.")[r1.length - 1].toLowerCase();
        byte b2 = -1;
        switch (lowerCase.hashCode()) {
            case 52254:
                if (lowerCase.equals("3g2")) {
                    b2 = Ascii.VT;
                }
                break;
            case 52316:
                if (lowerCase.equals("3gp")) {
                    b2 = 8;
                }
                break;
            case 96323:
                if (lowerCase.equals("aac")) {
                    b2 = Ascii.SO;
                }
                break;
            case 97669:
                if (lowerCase.equals(AdobeAssetFileExtensions.kAdobeFileExtensionTypeBMP)) {
                    b2 = 3;
                }
                break;
            case 102340:
                if (lowerCase.equals(AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF)) {
                    b2 = 4;
                }
                break;
            case 105441:
                if (lowerCase.equals("jpg")) {
                    b2 = 0;
                }
                break;
            case 106458:
                if (lowerCase.equals("m4a")) {
                    b2 = Ascii.FF;
                }
                break;
            case 108272:
                if (lowerCase.equals("mp3")) {
                    b2 = 13;
                }
                break;
            case 108273:
                if (lowerCase.equals(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMP4)) {
                    b2 = 6;
                }
                break;
            case 108308:
                if (lowerCase.equals(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMOV)) {
                    b2 = 7;
                }
                break;
            case 111145:
                if (lowerCase.equals("png")) {
                    b2 = 2;
                }
                break;
            case 1621908:
                if (lowerCase.equals("3gpp")) {
                    b2 = 9;
                }
                break;
            case 3268712:
                if (lowerCase.equals("jpeg")) {
                    b2 = 1;
                }
                break;
            case 3559925:
                if (lowerCase.equals(AdobeAssetFileExtensions.kAdobeFileExtensionTypeTIFF)) {
                    b2 = 5;
                }
                break;
            case 50279198:
                if (lowerCase.equals("3gpp2")) {
                    b2 = 10;
                }
                break;
        }
        switch (b2) {
        }
        return "";
    }

    public static boolean isSupportedFormat(String str) {
        switch (str) {
            case "image/jpg":
            case "image/png":
            case "image/bmp":
            case "image/gif":
            case "image/tiff":
            case "video/mp4":
                return true;
            default:
                return false;
        }
    }

    public static String getQueryForSelectingExtensions(int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            str = str + "UPPER(_data) like UPPER(?)";
            if (i2 < i - 1) {
                str = str + " OR ";
            }
        }
        return str;
    }

    public static String[] getRegexFromExtensions(String[] strArr) {
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = "%" + strArr[i];
        }
        return strArr2;
    }

    public static boolean checkIfFileExists(String str) {
        return new File(str).exists();
    }

    public static boolean isMediaReferenceAudioOnly(AssetReference assetReference) {
        return false;
    }

    public static ArrayList<MediaInfo> getMediaInfoArrayListFromCameraIntentResult(Context context, Intent intent) throws Throwable {
        ArrayList<MediaInfo> arrayList = new ArrayList<>();
        String captureFilePath = CameraCaptureManager.getInstance().getCaptureFilePath();
        if (captureFilePath == null || captureFilePath.isEmpty()) {
            return null;
        }
        if (Build.VERSION.SDK_INT <= 21) {
            if (intent != null && intent.getData() != null) {
                String realPathFromUri = getRealPathFromUri(context, intent.getData());
                if (realPathFromUri != null && !captureFilePath.equals(realPathFromUri)) {
                    try {
                        copyFile(realPathFromUri, captureFilePath);
                        new File(realPathFromUri).delete();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
            } else if (intent == null) {
                Log.w(TAG, "Camera intent data null");
            } else {
                Log.w(TAG, "Intent data.getData() null");
            }
        }
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.setLocalPath(captureFilePath);
        mediaInfo.setAssetUrl(captureFilePath);
        mediaInfo.setAssetDate(DCXUtils.getFormattedDate(new Date(new File(captureFilePath).lastModified())));
        arrayList.add(mediaInfo);
        runMediaScanner(context, CameraCaptureManager.getInstance().getCaptureFileUri());
        return arrayList;
    }

    public static void copyFile(String str, String str2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        FileOutputStream fileOutputStream = new FileOutputStream(str2);
        FileChannel channel = fileInputStream.getChannel();
        channel.transferTo(0L, channel.size(), fileOutputStream.getChannel());
        fileInputStream.close();
        fileOutputStream.close();
    }

    public static void copyFileProviderUri(Uri uri, String str, Context context) throws IOException {
        FileUtils.copyInputStreamToFile(context.getContentResolver().openInputStream(uri), new File(str));
    }

    public static void copyFileAsset(Context context, String str) {
        String[] list = new String[0];
        try {
            list = context.getAssets().list(str);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        try {
            for (String str2 : list) {
                File file = new File(context.getApplicationInfo().dataDir, str + URIUtil.SLASH + str2);
                Log.d("FIleCopy", file.getName());
                if (!file.exists()) {
                    FileUtils.copyInputStreamToFile(context.getAssets().open(str + URIUtil.SLASH + str2), file);
                }
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    public static boolean isConnectedToInternet(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static boolean isOnWiFiNetwork(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && activeNetworkInfo.getType() == 1;
    }

    public static boolean isOnDataNetwork(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && activeNetworkInfo.getType() == 0;
    }

    public static String rgbaStringToHexString(String str) {
        String str2 = "#";
        for (String str3 : str.split(" ")) {
            if (str2.length() == 7) {
                break;
            }
            str2 = str2 + String.format("%02X", Integer.valueOf(Math.round(Float.parseFloat(str3) * 255.0f) & 255));
        }
        return str2;
    }

    public static String hexStringToRgbaString(String str) {
        int color = Color.parseColor(str);
        return ((("" + (Color.red(color) / 255.0f) + " ") + (Color.green(color) / 255.0f) + " ") + (Color.blue(color) / 255.0f) + " ") + (Color.alpha(color) / 255.0f);
    }

    public static String getApplicationName(Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    public static String getMediaPath(Context context, String str) {
        File file = new File(Environment.getExternalStorageDirectory(), getApplicationName(context) + File.separator + str);
        if (file.exists() || file.mkdirs()) {
            return file.getPath();
        }
        return null;
    }

    public static File getExportMediaFile(Context context, String str) {
        return new File(getMediaPath(context, "Clip Export") + File.separator + str);
    }

    public static File getCapturedMediaFile(Context context, int i) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return null;
        }
        String mediaPath = getMediaPath(context, "Clip Camera");
        String str = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
        if (i == 101) {
            return new File(mediaPath + File.separator + "IMG_" + str + AndroidMiscUtils.IMAGE_TYPE);
        }
        if (i == 102) {
            return new File(mediaPath + File.separator + "VID_" + str + ".mp4");
        }
        return null;
    }

    public static void runMediaScanner(Context context, Uri uri) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(uri);
        context.sendBroadcast(intent);
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        Log.d("original", i3 + " " + i4);
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            int i6 = i3 / 2;
            int i7 = i4 / 2;
            while (i6 / i5 > i2 && i7 / i5 > i) {
                i5 *= 2;
            }
        }
        return i5;
    }

    public static Bitmap decodeBitmap(Clip.CLIP_TYPE clip_type, String str, int i, int i2, long j) {
        Bitmap bitmapExtractThumbnail = null;
        try {
            if (clip_type == Clip.CLIP_TYPE.VIDEO) {
                ClipExtractor clipExtractor = new ClipExtractor(PremiereClipApplication.getContext());
                if (clipExtractor.setDataSource(str, true)) {
                    Log.i("ThumbLog", "getting frame");
                    bitmapExtractThumbnail = clipExtractor.getFrameAtTime(1000 * j, i, i2, true);
                    clipExtractor.release();
                } else {
                    Log.i("ThumbLog", "Could not set data source on clipextractor");
                }
            } else {
                Bitmap scaledAdjustedBitmap = getScaledAdjustedBitmap(str, 512, 512);
                try {
                    bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(scaledAdjustedBitmap, i, i2, 2);
                } catch (Exception e2) {
                    bitmapExtractThumbnail = scaledAdjustedBitmap;
                    e = e2;
                    e.printStackTrace();
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return bitmapExtractThumbnail;
    }

    private static Bitmap scaledBitmap(String str, int i, int i2) {
        Bitmap bitmapCreateScaledBitmap;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        options.inPreferQualityOverSpeed = true;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        int width = bitmapDecodeFile.getWidth();
        int height = bitmapDecodeFile.getHeight();
        if (width * i2 <= height * i) {
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, (width * i2) / height, i2, false);
        } else {
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, i, (height * i) / width, false);
        }
        if (bitmapDecodeFile != bitmapCreateScaledBitmap) {
            bitmapDecodeFile.recycle();
        }
        return bitmapCreateScaledBitmap;
    }

    public static int getBitmapRotation(String str) {
        int attributeInt;
        try {
            attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        if (attributeInt == 6) {
            return 90;
        }
        if (attributeInt == 3) {
            return 180;
        }
        return attributeInt == 8 ? 270 : 0;
    }

    public static Bitmap getScaledAdjustedBitmap(String str, int i, int i2) {
        int bitmapRotation = getBitmapRotation(str);
        Matrix matrix = new Matrix();
        if (bitmapRotation != 0.0f) {
            matrix.preRotate(bitmapRotation);
        }
        Bitmap scaledBitmap = getScaledBitmap(str, i, i2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(scaledBitmap, 0, 0, scaledBitmap.getWidth(), scaledBitmap.getHeight(), matrix, true);
        if (bitmapCreateBitmap != scaledBitmap) {
            scaledBitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap getScaledBitmap(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        if (i < options.outWidth && i2 < options.outHeight) {
            return scaledBitmap(str, i, i2);
        }
        return BitmapFactory.decodeFile(str);
    }

    public static Bitmap scaleBitmapToDeviceScreen(String str) {
        return getScaledAdjustedBitmap(str, screenHeight, screenWidth);
    }

    public static int convertToPx(Activity activity, int i) {
        return (int) ((activity.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    public static long convertTimescale(long j, long j2, long j3, long j4) {
        long j5 = (j * j3) / j2;
        if (j4 / 2 > 0) {
            j5 += j4 / 2;
        } else if (((j * j3) / j2) - j5 > 0.4999999701976776d) {
            j5 += j4;
        }
        return (j5 / j4) * j4;
    }

    public static boolean isInteger(String str) {
        return isInteger(str, 10);
    }

    public static boolean isInteger(String str, int i) {
        if (str.isEmpty()) {
            return false;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (Character.digit(str.charAt(i2), i) < 0) {
                return false;
            }
        }
        return true;
    }

    public static String getMD5HashFromFilePath(String str, boolean z) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                try {
                    messageDigest.update(IOUtils.toByteArray(fileInputStream));
                    byte[] bArrDigest = messageDigest.digest();
                    StringBuilder sb = new StringBuilder();
                    if (z) {
                        for (byte b2 : bArrDigest) {
                            String hexString = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE);
                            while (hexString.length() < 2) {
                                hexString = "0" + hexString;
                            }
                            sb.append(hexString);
                        }
                        return sb.toString();
                    }
                    return new String(Base64.encode(bArrDigest, 0)).replaceFirst("\\s+$", "");
                } catch (IOException e2) {
                    return null;
                }
            } catch (NoSuchAlgorithmException e3) {
                e3.printStackTrace();
                return null;
            }
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String getBase64HashFromHexHash(String str) {
        byte[] bArr = new byte[16];
        int i = 0;
        for (int i2 = 0; i2 < 32; i2 += 2) {
            char lowerCase = Character.toLowerCase(str.charAt(i2));
            char lowerCase2 = Character.toLowerCase(str.charAt(i2 + 1));
            int i3 = Integer.parseInt(Character.toString(lowerCase), 16);
            int i4 = Integer.parseInt(Character.toString(lowerCase2), 16);
            bArr[i] = 0;
            bArr[i] = (byte) (((byte) ((i3 & 15) << 4)) | bArr[i]);
            bArr[i] = (byte) (bArr[i] | ((byte) (i4 & 15)));
            i++;
        }
        return Base64.encodeToString(bArr, 0);
    }

    public static String getTimeString(long j, boolean z) {
        if (j < 1000000.0d) {
            return "<1s";
        }
        long jRound = Math.round(j / 1000000.0d);
        Long lValueOf = Long.valueOf(jRound % 60);
        long j2 = jRound / 60;
        Long lValueOf2 = Long.valueOf(j2 % 60);
        Long lValueOf3 = Long.valueOf(j2 / 60);
        String str = ":" + (lValueOf.longValue() > 9 ? lValueOf.toString() : "0" + lValueOf.toString());
        if (lValueOf3.longValue() > 0) {
            return lValueOf3.toString() + ":" + ((lValueOf2.longValue() > 9 ? lValueOf2.toString() : "0" + lValueOf2.toString()) + str);
        }
        if (lValueOf2.longValue() > 0) {
            return lValueOf2.toString() + str;
        }
        if (lValueOf.longValue() < 1) {
            return "<1s";
        }
        return z ? "0" + str : str;
    }

    public class AdapterImageLoaderOnScrollListener extends RecyclerView.OnScrollListener {
        private Activity mActivity;
        private IClipScrollAdapter mAdapter;
        private long mTimeOfLastSettlingState = 0;

        public AdapterImageLoaderOnScrollListener(IClipScrollAdapter iClipScrollAdapter, Activity activity) {
            this.mActivity = activity;
            this.mAdapter = iClipScrollAdapter;
        }

        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0 && !this.mAdapter.isProcessing()) {
                this.mAdapter.startProcessing();
                this.mAdapter.notifyDataSetChanged();
            }
            if (i == 1 && !this.mAdapter.isProcessing()) {
                Utilities.SCROLL_WORKER.schedule(new Runnable() { // from class: com.adobe.premiereclip.util.Utilities.AdapterImageLoaderOnScrollListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Calendar.getInstance().getTimeInMillis() - AdapterImageLoaderOnScrollListener.this.mTimeOfLastSettlingState > 1000 && !AdapterImageLoaderOnScrollListener.this.mAdapter.isProcessing()) {
                            AdapterImageLoaderOnScrollListener.this.mActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.util.Utilities.AdapterImageLoaderOnScrollListener.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdapterImageLoaderOnScrollListener.this.mAdapter.startProcessing();
                                    AdapterImageLoaderOnScrollListener.this.mAdapter.notifyDataSetChanged();
                                }
                            });
                        }
                    }
                }, 1L, TimeUnit.SECONDS);
            }
            if (i == 2) {
                if (this.mAdapter.isProcessing()) {
                    this.mAdapter.stopProcessing();
                }
                this.mTimeOfLastSettlingState = Calendar.getInstance().getTimeInMillis();
            }
        }
    }

    public static String generateFilepath(String str, String str2) {
        String str3 = internalStorageDirectory + File.separator + "appSavedItems" + File.separator + "Projects" + File.separator + "v01" + File.separator + AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID() + File.separator + str;
        new File(str3).mkdirs();
        return str3 + File.separator + str2;
    }

    public static void setSeekBarTheme(Context context, SeekBar seekBar) {
        Drawable drawableFindDrawableByLayerId;
        Drawable current = seekBar.getProgressDrawable().getCurrent();
        if ((current instanceof LayerDrawable) && (drawableFindDrawableByLayerId = ((LayerDrawable) current).findDrawableByLayerId(android.R.id.progress)) != null) {
            int color = context.getResources().getColor(R.color.theme_color);
            drawableFindDrawableByLayerId.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            seekBar.getThumb().setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
    }

    public static void preparePopupView(Context context, ListPopupWindow listPopupWindow) {
        listPopupWindow.setModal(true);
        listPopupWindow.setWidth((int) TypedValue.applyDimension(1, 40.0f, context.getResources().getDisplayMetrics()));
        listPopupWindow.setBackgroundDrawable(new ColorDrawable(Color.argb(254, 255, 255, 255)));
        listPopupWindow.setHorizontalOffset(-((int) TypedValue.applyDimension(1, 12.0f, context.getResources().getDisplayMetrics())));
    }

    public static boolean canDownloadLRAssets(ArrayList<AdobePhotoAsset> arrayList, Context context) {
        ArrayList arrayList2 = null;
        if (arrayList != null) {
            ArrayList arrayList3 = new ArrayList();
            Iterator<AdobePhotoAsset> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList3.add(new AdobeSelectionPhotoAsset(it.next()) { // from class: com.adobe.premiereclip.util.Utilities.1AdobePhotoSelection
                });
            }
            arrayList2 = arrayList3;
        }
        return canDownloadAssets(arrayList2, context);
    }

    public static boolean canDownloadAssets(ArrayList<? extends AdobeSelection> arrayList, Context context) {
        long freeDiskspace = AndroidMiscUtils.getFreeDiskspace() - 73400320;
        if (freeDiskspace <= 0) {
            return false;
        }
        long totalDownloadSize = CCDownloadManager.getInstance().getTotalDownloadSize(arrayList, context);
        return totalDownloadSize <= 0 || freeDiskspace - CCDownloadManager.getInstance().getTotalDownloadSizeOfOngoingDownloads() > totalDownloadSize;
    }

    public static boolean areAllLRAssetsLargerThanMaxFileSize(ArrayList<AdobePhotoAsset> arrayList, Context context) {
        ArrayList arrayList2 = null;
        if (arrayList != null) {
            ArrayList arrayList3 = new ArrayList();
            Iterator<AdobePhotoAsset> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList3.add(new AdobeSelectionPhotoAsset(it.next()) { // from class: com.adobe.premiereclip.util.Utilities.2AdobePhotoSelection
                });
            }
            arrayList2 = arrayList3;
        }
        return areAllAssetsLargerThanMaxFileSize(arrayList2, context);
    }

    public static boolean areAllAssetsLargerThanMaxFileSize(ArrayList<? extends AdobeSelection> arrayList, Context context) {
        return CCDownloadManager.getInstance().areAllAssetsLargerThanMaxFileSize(arrayList, context);
    }

    public static String stringByReplacingNonPlaneZeroCharacters(String str, String str2) {
        return str.replaceAll("[^\u0000-\uffff]", str2);
    }

    public static String removeTrailingCharactersFromString(String str, char c2, String str2) {
        int i = 0;
        while (str.charAt(str.length() - 1) == c2) {
            str = str.substring(0, str.length() - 1);
            i++;
        }
        for (int i2 = 0; i2 < i; i2++) {
            str = str + str2;
        }
        return str;
    }

    public static void setTab(LayoutInflater layoutInflater, TabLayout.Tab tab, int i) {
        ImageView imageView = (ImageView) layoutInflater.inflate(R.layout.view_clip_option_tab, (ViewGroup) null);
        imageView.setImageResource(i);
        if (tab != null) {
            tab.setCustomView(imageView);
        }
    }

    public static File getDiskCacheDir(Context context) {
        File externalCacheDir;
        return (("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) && (externalCacheDir = context.getExternalCacheDir()) != null) ? externalCacheDir : context.getCacheDir();
    }

    public static void resetViewIfBitmapRecycled(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null && bitmapDrawable.getBitmap().isRecycled()) {
                imageView.setImageDrawable(null);
            }
        }
    }

    public static String getAppVersionCode() {
        return BuildConfig.VERSION_NAME.substring(0, BuildConfig.VERSION_NAME.lastIndexOf(46));
    }

    public static String constructDeviceDetails(Activity activity) {
        DisplayMetrics displayMetrics = activity.getResources().getDisplayMetrics();
        return ((((("----------------------------\nApp version code: 1.1.6.1316\n") + "OS version: " + Build.VERSION.RELEASE + IOUtils.LINE_SEPARATOR_UNIX) + "Manufacturer: " + Build.MANUFACTURER + IOUtils.LINE_SEPARATOR_UNIX) + "Model: " + Build.MODEL + IOUtils.LINE_SEPARATOR_UNIX) + "Display: " + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels + " (" + displayMetrics.densityDpi + ")\n") + "----------------------------\n";
    }

    public static boolean is1080pExportSupported(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) < 720) {
            return false;
        }
        int i = 0;
        for (int i2 = 0; i2 < MediaCodecList.getCodecCount(); i2++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i2);
            if (codecInfoAt.isEncoder()) {
                String[] supportedTypes = codecInfoAt.getSupportedTypes();
                int i3 = i;
                for (int i4 = 0; i4 < supportedTypes.length; i4++) {
                    if (supportedTypes[i4].equalsIgnoreCase("video/avc")) {
                        Log.d(TAG, "codec: " + codecInfoAt.getName() + "types: " + supportedTypes[i4]);
                        try {
                            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecInfoAt.getCapabilitiesForType(supportedTypes[i4]).profileLevels) {
                                if (codecProfileLevel.level > i3) {
                                    i3 = codecProfileLevel.level;
                                }
                            }
                            Log.i(TAG, "codec " + codecInfoAt.getName() + ", highest level " + i3);
                        } catch (IllegalArgumentException e2) {
                            Crashlytics.logException(e2);
                        }
                    }
                }
                i = i3;
            }
        }
        return i >= 2048;
    }

    public static String getAdobeIdWrapped() {
        AdobeAuthUserProfile userProfile = AdobeUXAuthManager.getSharedAuthManager().getUserProfile();
        if (userProfile == null) {
            return null;
        }
        return userProfile.getAdobeID();
    }
}
