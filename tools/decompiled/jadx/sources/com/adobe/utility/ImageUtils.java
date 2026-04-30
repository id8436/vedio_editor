package com.adobe.utility;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ExifInterface;
import com.adobe.common.Size;
import java.io.IOException;
import java.io.OutputStream;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public final class ImageUtils {
    private static final int QUALITY = 100;
    public static final String SOURCE_HEIGHT = "height";
    public static final String SOURCE_TYPE = "Source";
    public static final String SOURCE_TYPE_CAMERA = "Camera";
    public static final String SOURCE_TYPE_CC_LIGHT_ROOM = "CClibOrLightRoom";
    public static final String SOURCE_TYPE_PICKER = "Picker";
    public static final String SOURCE_WIDTH = "width";
    private static final double sMaxResolutionSize = 2.5690112E7d;

    private ImageUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String writeBitmapToAFile(java.lang.String r4, android.graphics.Bitmap r5, android.graphics.Bitmap.CompressFormat r6) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "jpg"
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG
            if (r6 != r1) goto La
            java.lang.String r0 = "png"
        La:
            java.io.File r3 = new java.io.File
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.String r2 = "/"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.util.UUID r2 = java.util.UUID.randomUUID()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "."
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            r3.<init>(r0)
            r2 = 0
            r3.createNewFile()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L61
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L61
            r1.<init>(r3)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L61
            writeBitmapToStream(r5, r6, r1)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L70
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.io.IOException -> L4c
        L47:
            java.lang.String r0 = r3.getAbsolutePath()
            return r0
        L4c:
            r0 = move-exception
            r0.printStackTrace()
            goto L47
        L51:
            r0 = move-exception
            r1 = r2
        L53:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L6d
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.io.IOException -> L5c
            goto L47
        L5c:
            r0 = move-exception
            r0.printStackTrace()
            goto L47
        L61:
            r0 = move-exception
        L62:
            if (r2 == 0) goto L67
            r2.close()     // Catch: java.io.IOException -> L68
        L67:
            throw r0
        L68:
            r1 = move-exception
            r1.printStackTrace()
            goto L67
        L6d:
            r0 = move-exception
            r2 = r1
            goto L62
        L70:
            r0 = move-exception
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.utility.ImageUtils.writeBitmapToAFile(java.lang.String, android.graphics.Bitmap, android.graphics.Bitmap$CompressFormat):java.lang.String");
    }

    public static void writeBitmapToStream(Bitmap bitmap, Bitmap.CompressFormat compressFormat, OutputStream outputStream) {
        bitmap.compress(compressFormat, 100, outputStream);
    }

    public static String resizeImage(String str, String str2, int i) {
        int width;
        Bitmap.CompressFormat compressFormat;
        Bitmap bitmapCreateScaledBitmap;
        RuntimeException runtimeException;
        Bitmap bitmapDecodeFile;
        Bitmap.CompressFormat compressFormat2 = Bitmap.CompressFormat.JPEG;
        Size imageDimensions = getImageDimensions(str);
        if (imageDimensions != null) {
            if (imageDimensions.getWidth() > i || imageDimensions.getHeight() > i) {
                imageDimensions.getWidth();
                imageDimensions.getHeight();
                if (imageDimensions.getHeight() > imageDimensions.getWidth()) {
                    width = (imageDimensions.getWidth() * i) / imageDimensions.getHeight();
                } else {
                    width = i;
                    i = (imageDimensions.getHeight() * i) / imageDimensions.getWidth();
                }
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    BitmapFactory.decodeFile(str, options);
                    compressFormat = str.substring(str.lastIndexOf(".")).equalsIgnoreCase("png") ? Bitmap.CompressFormat.PNG : compressFormat2;
                    try {
                        bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
                    } catch (RuntimeException e2) {
                        bitmapCreateScaledBitmap = null;
                        runtimeException = e2;
                    }
                    try {
                        bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, width, i, false);
                    } catch (RuntimeException e3) {
                        bitmapCreateScaledBitmap = bitmapDecodeFile;
                        runtimeException = e3;
                        runtimeException.printStackTrace();
                    }
                } catch (RuntimeException e4) {
                    compressFormat = compressFormat2;
                    bitmapCreateScaledBitmap = null;
                    runtimeException = e4;
                }
                return writeBitmapToAFile(str2, bitmapCreateScaledBitmap, compressFormat);
            }
            return str;
        }
        return str;
    }

    public static Size getImageDimensions(String str) {
        Size sizeMakeSize = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 6 || attributeInt == 8 || attributeInt == 5 || attributeInt == 7) {
                sizeMakeSize = Size.makeSize(options.outHeight, options.outWidth);
            } else {
                sizeMakeSize = Size.makeSize(options.outWidth, options.outHeight);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (RuntimeException e3) {
            e3.printStackTrace();
        }
        return sizeMakeSize;
    }

    public static boolean checkImageMaxResolution(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return checkImageMaxResolution(options.outWidth, options.outHeight);
    }

    public static boolean checkImageMaxResolution(int i, int i2) {
        return ((double) (i2 * i)) > sMaxResolutionSize;
    }

    public static void showErrorDialog(Context context, String str, String str2, final ErrorDialogButtonInterface errorDialogButtonInterface) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context, 5);
        builder.setTitle(str);
        builder.setMessage(str2).setCancelable(true);
        builder.setPositiveButton(HttpStatus.OK, new DialogInterface.OnClickListener() { // from class: com.adobe.utility.ImageUtils.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                errorDialogButtonInterface.setPositiveButtonAction();
            }
        });
        try {
            builder.create().show();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static boolean checkMaxResolution(Intent intent, Context context, String str, String str2, Context context2, ContentResolver contentResolver, ErrorDialogButtonInterface errorDialogButtonInterface) {
        if (intent.getData() == null && intent.hasExtra(SOURCE_TYPE) && intent.getExtras().getString(SOURCE_TYPE) == SOURCE_TYPE_CC_LIGHT_ROOM) {
            if (!checkImageMaxResolution(intent.hasExtra("width") ? intent.getExtras().getInt("width") : 0, intent.hasExtra("height") ? intent.getExtras().getInt("height") : 0)) {
                return false;
            }
            showErrorDialog(context2, str, str2, errorDialogButtonInterface);
            return true;
        }
        if (intent.getData() == null) {
            return false;
        }
        String string = "";
        if (intent.hasExtra(SOURCE_TYPE) && intent.getExtras().getString(SOURCE_TYPE) == SOURCE_TYPE_PICKER) {
            string = AndroidMiscUtils.getPathToImageFromPicker(context, contentResolver, intent.getData());
        } else if (intent.hasExtra(SOURCE_TYPE) && intent.getExtras().getString(SOURCE_TYPE) == SOURCE_TYPE_CAMERA) {
            string = intent.getData().toString();
        }
        if (string.isEmpty() || !checkImageMaxResolution(string)) {
            return false;
        }
        showErrorDialog(context2, str, str2, errorDialogButtonInterface);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap getScreenSizeImage(java.lang.String r10, int r11, int r12) {
        /*
            r9 = 0
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeFile(r10)
            if (r0 != 0) goto L8
        L7:
            return r0
        L8:
            int r8 = r0.getWidth()
            int r7 = r0.getHeight()
            android.media.ExifInterface r1 = new android.media.ExifInterface     // Catch: java.io.IOException -> L63
            r1.<init>(r10)     // Catch: java.io.IOException -> L63
            java.lang.String r2 = "Orientation"
            r3 = 1
            int r1 = r1.getAttributeInt(r2, r3)     // Catch: java.io.IOException -> L63
            switch(r1) {
                case 3: goto L5d;
                case 4: goto L20;
                case 5: goto L20;
                case 6: goto L60;
                case 7: goto L20;
                case 8: goto L5a;
                default: goto L20;
            }     // Catch: java.io.IOException -> L63
        L20:
            r1 = r9
        L21:
            if (r1 == 0) goto L71
            android.graphics.Matrix r5 = new android.graphics.Matrix     // Catch: java.io.IOException -> L63
            r5.<init>()     // Catch: java.io.IOException -> L63
            float r1 = (float) r1     // Catch: java.io.IOException -> L63
            r5.postRotate(r1)     // Catch: java.io.IOException -> L63
            if (r0 == 0) goto L71
            r1 = 0
            r2 = 0
            int r3 = r0.getWidth()     // Catch: java.io.IOException -> L63
            int r4 = r0.getHeight()     // Catch: java.io.IOException -> L63
            r6 = 1
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r0, r1, r2, r3, r4, r5, r6)     // Catch: java.io.IOException -> L63
            int r1 = r2.getWidth()     // Catch: java.io.IOException -> L6c
            int r0 = r2.getHeight()     // Catch: java.io.IOException -> L6f
        L45:
            float r3 = (float) r11
            float r4 = (float) r1
            float r3 = r3 / r4
            float r4 = (float) r12
            float r5 = (float) r0
            float r4 = r4 / r5
            float r3 = java.lang.Math.min(r3, r4)
            float r1 = (float) r1
            float r1 = r1 * r3
            int r1 = (int) r1
            float r0 = (float) r0
            float r0 = r0 * r3
            int r0 = (int) r0
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r2, r1, r0, r9)
            goto L7
        L5a:
            r1 = -90
            goto L21
        L5d:
            r1 = 180(0xb4, float:2.52E-43)
            goto L21
        L60:
            r1 = 90
            goto L21
        L63:
            r1 = move-exception
            r2 = r0
            r0 = r1
            r1 = r8
        L67:
            r0.printStackTrace()
            r0 = r7
            goto L45
        L6c:
            r0 = move-exception
            r1 = r8
            goto L67
        L6f:
            r0 = move-exception
            goto L67
        L71:
            r1 = r8
            r2 = r0
            r0 = r7
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.utility.ImageUtils.getScreenSizeImage(java.lang.String, int, int):android.graphics.Bitmap");
    }
}
