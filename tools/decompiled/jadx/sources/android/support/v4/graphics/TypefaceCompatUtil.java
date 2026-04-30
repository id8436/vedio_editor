package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.os.Process;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class TypefaceCompatUtil {
    private static final String CACHE_FILE_PREFIX = ".font";
    private static final String TAG = "TypefaceCompatUtil";

    private TypefaceCompatUtil() {
    }

    public static File getTempFile(Context context) {
        String str = CACHE_FILE_PREFIX + Process.myPid() + "-" + Process.myTid() + "-";
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 100) {
                File file = new File(context.getCacheDir(), str + i2);
                if (!file.createNewFile()) {
                    i = i2 + 1;
                } else {
                    return file;
                }
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[Catch: IOException -> 0x0024, SYNTHETIC, TRY_ENTER, TryCatch #3 {IOException -> 0x0024, blocks: (B:3:0x0001, B:8:0x001b, B:14:0x0027, B:11:0x0020, B:22:0x0035, B:26:0x003e, B:25:0x003a, B:23:0x0038), top: B:32:0x0001, inners: #2, #5 }] */
    @android.support.annotation.RequiresApi(19)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.nio.ByteBuffer mmap(java.io.File r10) throws java.lang.Throwable {
        /*
            r6 = 0
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.io.IOException -> L24
            r7.<init>(r10)     // Catch: java.io.IOException -> L24
            r8 = 0
            java.nio.channels.FileChannel r0 = r7.getChannel()     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L42
            long r4 = r0.size()     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L42
            java.nio.channels.FileChannel$MapMode r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L42
            r2 = 0
            java.nio.MappedByteBuffer r0 = r0.map(r1, r2, r4)     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L42
            if (r7 == 0) goto L1e
            if (r6 == 0) goto L27
            r7.close()     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L24
        L1e:
            return r0
        L1f:
            r1 = move-exception
            r8.addSuppressed(r1)     // Catch: java.io.IOException -> L24
            goto L1e
        L24:
            r0 = move-exception
            r0 = r6
            goto L1e
        L27:
            r7.close()     // Catch: java.io.IOException -> L24
            goto L1e
        L2b:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L2d
        L2d:
            r1 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
        L31:
            if (r7 == 0) goto L38
            if (r1 == 0) goto L3e
            r7.close()     // Catch: java.io.IOException -> L24 java.lang.Throwable -> L39
        L38:
            throw r0     // Catch: java.io.IOException -> L24
        L39:
            r2 = move-exception
            r1.addSuppressed(r2)     // Catch: java.io.IOException -> L24
            goto L38
        L3e:
            r7.close()     // Catch: java.io.IOException -> L24
            goto L38
        L42:
            r0 = move-exception
            r1 = r6
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap(java.io.File):java.nio.ByteBuffer");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[Catch: IOException -> 0x0049, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x0049, blocks: (B:3:0x0005, B:13:0x0032, B:34:0x0058, B:33:0x0054, B:24:0x0045, B:50:0x0078, B:49:0x0074, B:25:0x0048), top: B:55:0x0005, inners: #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[Catch: Throwable -> 0x003b, all -> 0x0050, SYNTHETIC, TRY_ENTER, TryCatch #0 {all -> 0x0050, blocks: (B:5:0x000d, B:10:0x002b, B:28:0x004c, B:16:0x0037, B:42:0x0066, B:46:0x006f, B:45:0x006b, B:43:0x0069), top: B:54:0x000d }] */
    @android.support.annotation.RequiresApi(19)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.nio.ByteBuffer mmap(android.content.Context r12, android.os.CancellationSignal r13, android.net.Uri r14) throws java.lang.Throwable {
        /*
            r6 = 0
            android.content.ContentResolver r0 = r12.getContentResolver()
            java.lang.String r1 = "r"
            android.os.ParcelFileDescriptor r7 = r0.openFileDescriptor(r14, r1, r13)     // Catch: java.io.IOException -> L49
            r8 = 0
            java.io.FileInputStream r9 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L50
            java.io.FileDescriptor r0 = r7.getFileDescriptor()     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L50
            r9.<init>(r0)     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L50
            r10 = 0
            java.nio.channels.FileChannel r0 = r9.getChannel()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L7c
            long r4 = r0.size()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L7c
            java.nio.channels.FileChannel$MapMode r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L7c
            r2 = 0
            java.nio.MappedByteBuffer r0 = r0.map(r1, r2, r4)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L7c
            if (r9 == 0) goto L2e
            if (r6 == 0) goto L4c
            r9.close()     // Catch: java.lang.Throwable -> L36 java.lang.Throwable -> L50
        L2e:
            if (r7 == 0) goto L35
            if (r6 == 0) goto L58
            r7.close()     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L53
        L35:
            return r0
        L36:
            r1 = move-exception
            r10.addSuppressed(r1)     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L50
            goto L2e
        L3b:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L3d
        L3d:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
        L41:
            if (r7 == 0) goto L48
            if (r1 == 0) goto L78
            r7.close()     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L73
        L48:
            throw r0     // Catch: java.io.IOException -> L49
        L49:
            r0 = move-exception
            r0 = r6
            goto L35
        L4c:
            r9.close()     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L50
            goto L2e
        L50:
            r0 = move-exception
            r1 = r6
            goto L41
        L53:
            r1 = move-exception
            r8.addSuppressed(r1)     // Catch: java.io.IOException -> L49
            goto L35
        L58:
            r7.close()     // Catch: java.io.IOException -> L49
            goto L35
        L5c:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L5e
        L5e:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
        L62:
            if (r9 == 0) goto L69
            if (r1 == 0) goto L6f
            r9.close()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L6a
        L69:
            throw r0     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L50
        L6a:
            r2 = move-exception
            r1.addSuppressed(r2)     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L50
            goto L69
        L6f:
            r9.close()     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L50
            goto L69
        L73:
            r2 = move-exception
            r1.addSuppressed(r2)     // Catch: java.io.IOException -> L49
            goto L48
        L78:
            r7.close()     // Catch: java.io.IOException -> L49
            goto L48
        L7c:
            r0 = move-exception
            r1 = r6
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    @RequiresApi(19)
    public static ByteBuffer copyToDirectBuffer(Context context, Resources resources, int i) {
        ByteBuffer byteBufferMmap = null;
        File tempFile = getTempFile(context);
        if (tempFile != null) {
            try {
                if (copyToFile(tempFile, resources, i)) {
                    byteBufferMmap = mmap(tempFile);
                }
            } finally {
                tempFile.delete();
            }
        }
        return byteBufferMmap;
    }

    public static boolean copyToFile(File file, InputStream inputStream) throws Throwable {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(file, false);
            try {
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i != -1) {
                            fileOutputStream.write(bArr, 0, i);
                        } else {
                            closeQuietly(fileOutputStream);
                            return true;
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    Log.e(TAG, "Error copying resource contents to temp file: " + e.getMessage());
                    closeQuietly(fileOutputStream);
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
            closeQuietly(fileOutputStream);
            throw th;
        }
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        InputStream inputStreamOpenRawResource = null;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i);
            return copyToFile(file, inputStreamOpenRawResource);
        } finally {
            closeQuietly(inputStreamOpenRawResource);
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }
}
