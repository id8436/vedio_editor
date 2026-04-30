package android.support.v4.graphics;

import android.os.ParcelFileDescriptor;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static final String TAG = "TypefaceCompatApi21Impl";

    TypefaceCompatApi21Impl() {
    }

    private File getFile(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(str).st_mode)) {
                return new File(str);
            }
            return null;
        } catch (ErrnoException e2) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[Catch: IOException -> 0x0057, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x0057, blocks: (B:6:0x000e, B:56:0x0085, B:60:0x0090, B:59:0x008c, B:20:0x003f, B:41:0x0065, B:40:0x0061, B:31:0x0053, B:63:0x0099, B:62:0x0095, B:32:0x0056), top: B:69:0x000e, inners: #0, #2, #3 }] */
    @Override // android.support.v4.graphics.TypefaceCompatBaseImpl, android.support.v4.graphics.TypefaceCompat.TypefaceCompatImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface createFromFontInfo(android.content.Context r8, android.os.CancellationSignal r9, @android.support.annotation.NonNull android.support.v4.provider.FontsContractCompat.FontInfo[] r10, int r11) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            int r1 = r10.length
            r2 = 1
            if (r1 >= r2) goto L6
        L5:
            return r0
        L6:
            android.support.v4.provider.FontsContractCompat$FontInfo r1 = r7.findBestInfo(r10, r11)
            android.content.ContentResolver r2 = r8.getContentResolver()
            android.net.Uri r1 = r1.getUri()     // Catch: java.io.IOException -> L57
            java.lang.String r3 = "r"
            android.os.ParcelFileDescriptor r3 = r2.openFileDescriptor(r1, r3, r9)     // Catch: java.io.IOException -> L57
            r2 = 0
            java.io.File r1 = r7.getFile(r3)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            if (r1 == 0) goto L26
            boolean r4 = r1.canRead()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            if (r4 != 0) goto L7d
        L26:
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            java.io.FileDescriptor r1 = r3.getFileDescriptor()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            r5 = 0
            android.graphics.Typeface r1 = super.createFromInputStream(r8, r4)     // Catch: java.lang.Throwable -> L69 java.lang.Throwable -> L9d
            if (r4 == 0) goto L3b
            if (r0 == 0) goto L59
            r4.close()     // Catch: java.lang.Throwable -> L44 java.lang.Throwable -> L5d
        L3b:
            if (r3 == 0) goto L42
            if (r0 == 0) goto L65
            r3.close()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L60
        L42:
            r0 = r1
            goto L5
        L44:
            r4 = move-exception
            r5.addSuppressed(r4)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            goto L3b
        L49:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L4b
        L4b:
            r2 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
        L4f:
            if (r3 == 0) goto L56
            if (r2 == 0) goto L99
            r3.close()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L94
        L56:
            throw r1     // Catch: java.io.IOException -> L57
        L57:
            r1 = move-exception
            goto L5
        L59:
            r4.close()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            goto L3b
        L5d:
            r1 = move-exception
            r2 = r0
            goto L4f
        L60:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.io.IOException -> L57
            goto L42
        L65:
            r3.close()     // Catch: java.io.IOException -> L57
            goto L42
        L69:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L6b
        L6b:
            r1 = move-exception
        L6c:
            if (r4 == 0) goto L73
            if (r2 == 0) goto L79
            r4.close()     // Catch: java.lang.Throwable -> L5d java.lang.Throwable -> L74
        L73:
            throw r1     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
        L74:
            r4 = move-exception
            r2.addSuppressed(r4)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            goto L73
        L79:
            r4.close()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            goto L73
        L7d:
            android.graphics.Typeface r1 = android.graphics.Typeface.createFromFile(r1)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L5d
            if (r3 == 0) goto L88
            if (r0 == 0) goto L90
            r3.close()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
        L88:
            r0 = r1
            goto L5
        L8b:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.io.IOException -> L57
            goto L88
        L90:
            r3.close()     // Catch: java.io.IOException -> L57
            goto L88
        L94:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.io.IOException -> L57
            goto L56
        L99:
            r3.close()     // Catch: java.io.IOException -> L57
            goto L56
        L9d:
            r1 = move-exception
            r2 = r0
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatApi21Impl.createFromFontInfo(android.content.Context, android.os.CancellationSignal, android.support.v4.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }
}
