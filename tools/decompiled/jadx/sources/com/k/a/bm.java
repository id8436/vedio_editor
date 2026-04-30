package com.k.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import com.behance.sdk.s3.MultipartUploader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import org.apache.commons.lang3.CharEncoding;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes3.dex */
final class bm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final StringBuilder f3535a = new StringBuilder();

    static int a(Bitmap bitmap) {
        int rowBytes;
        if (Build.VERSION.SDK_INT >= 12) {
            rowBytes = bp.a(bitmap);
        } else {
            rowBytes = bitmap.getRowBytes() * bitmap.getHeight();
        }
        if (rowBytes < 0) {
            throw new IllegalStateException("Negative size: " + bitmap);
        }
        return rowBytes;
    }

    static <T> T a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    static void a() {
        if (!b()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    static boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    static String a(d dVar) {
        return a(dVar, "");
    }

    static String a(d dVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        a aVarI = dVar.i();
        if (aVarI != null) {
            sb.append(aVarI.f3414b.a());
        }
        List<a> listK = dVar.k();
        if (listK != null) {
            int size = listK.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || aVarI != null) {
                    sb.append(", ");
                }
                sb.append(listK.get(i).f3414b.a());
            }
        }
        return sb.toString();
    }

    static void a(String str, String str2, String str3) {
        a(str, str2, str3, "");
    }

    static void a(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }

    static String a(ax axVar) {
        String strA = a(axVar, f3535a);
        f3535a.setLength(0);
        return strA;
    }

    static String a(ax axVar, StringBuilder sb) {
        if (axVar.f3492f != null) {
            sb.ensureCapacity(axVar.f3492f.length() + 50);
            sb.append(axVar.f3492f);
        } else if (axVar.f3490d != null) {
            String string = axVar.f3490d.toString();
            sb.ensureCapacity(string.length() + 50);
            sb.append(string);
        } else {
            sb.ensureCapacity(50);
            sb.append(axVar.f3491e);
        }
        sb.append('\n');
        if (axVar.m != 0.0f) {
            sb.append("rotation:").append(axVar.m);
            if (axVar.p) {
                sb.append('@').append(axVar.n).append('x').append(axVar.o);
            }
            sb.append('\n');
        }
        if (axVar.d()) {
            sb.append("resize:").append(axVar.h).append('x').append(axVar.i);
            sb.append('\n');
        }
        if (axVar.j) {
            sb.append("centerCrop").append('\n');
        } else if (axVar.k) {
            sb.append("centerInside").append('\n');
        }
        if (axVar.f3493g != null) {
            int size = axVar.f3493g.size();
            for (int i = 0; i < size; i++) {
                sb.append(axVar.f3493g.get(i).key());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean a(java.lang.String r5) {
        /*
            r0 = 1
            r1 = 0
            if (r5 != 0) goto L5
        L4:
            return r1
        L5:
            java.lang.String r2 = " "
            r3 = 2
            java.lang.String[] r2 = r5.split(r2, r3)
            java.lang.String r3 = "CACHE"
            r4 = r2[r1]
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L1a
            r1 = r0
            goto L4
        L1a:
            int r3 = r2.length
            if (r3 == r0) goto L4
            java.lang.String r3 = "CONDITIONAL_CACHE"
            r4 = 0
            r4 = r2[r4]     // Catch: java.lang.NumberFormatException -> L38
            boolean r3 = r3.equals(r4)     // Catch: java.lang.NumberFormatException -> L38
            if (r3 == 0) goto L36
            r3 = 1
            r2 = r2[r3]     // Catch: java.lang.NumberFormatException -> L38
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L38
            r3 = 304(0x130, float:4.26E-43)
            if (r2 != r3) goto L36
        L34:
            r1 = r0
            goto L4
        L36:
            r0 = r1
            goto L34
        L38:
            r0 = move-exception
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.k.a.bm.a(java.lang.String):boolean");
    }

    static w a(Context context) {
        try {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            return bq.a(context);
        } catch (ClassNotFoundException e2) {
            return new bj(context);
        }
    }

    static File b(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    static long a(File file) {
        long blockSize;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            blockSize = (((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount())) / 50;
        } catch (IllegalArgumentException e2) {
            blockSize = 5242880;
        }
        return Math.max(Math.min(blockSize, 52428800L), MultipartUploader.CHUNK_SIZE);
    }

    static int c(Context context) {
        ActivityManager activityManager = (ActivityManager) a(context, "activity");
        return (((!((context.getApplicationInfo().flags & 1048576) != 0) || Build.VERSION.SDK_INT < 11) ? activityManager.getMemoryClass() : bo.a(activityManager)) * 1048576) / 7;
    }

    static boolean d(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (NullPointerException e2) {
            return false;
        }
    }

    static <T> T a(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    static boolean b(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    static byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 != i) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    static boolean c(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[12];
        return inputStream.read(bArr, 0, 12) == 12 && "RIFF".equals(new String(bArr, 0, 4, CharEncoding.US_ASCII)) && "WEBP".equals(new String(bArr, 8, 4, CharEncoding.US_ASCII));
    }

    static int a(Resources resources, ax axVar) throws FileNotFoundException {
        if (axVar.f3491e != 0 || axVar.f3490d == null) {
            return axVar.f3491e;
        }
        String authority = axVar.f3490d.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + axVar.f3490d);
        }
        List<String> pathSegments = axVar.f3490d.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + axVar.f3490d);
        }
        if (pathSegments.size() == 1) {
            try {
                return Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException e2) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + axVar.f3490d);
            }
        }
        if (pathSegments.size() == 2) {
            return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        }
        throw new FileNotFoundException("More than two path segments: " + axVar.f3490d);
    }

    static Resources a(Context context, ax axVar) throws FileNotFoundException {
        if (axVar.f3491e != 0 || axVar.f3490d == null) {
            return context.getResources();
        }
        String authority = axVar.f3490d.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + axVar.f3490d);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + axVar.f3490d);
        }
    }

    static void a(Looper looper) {
        bn bnVar = new bn(looper);
        bnVar.sendMessageDelayed(bnVar.obtainMessage(), 1000L);
    }
}
