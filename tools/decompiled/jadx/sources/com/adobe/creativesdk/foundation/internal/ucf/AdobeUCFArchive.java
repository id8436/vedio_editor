package com.adobe.creativesdk.foundation.internal.ucf;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.apache.commons.io.FileUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUCFArchive {

    class ZipWrapper {
        private final FileOutputStream _os;
        private final ZipOutputStream _zos;

        ZipWrapper(File file) throws IOException {
            this._os = new FileOutputStream(file);
            this._zos = new ZipOutputStream(new BufferedOutputStream(this._os));
        }

        boolean addDataToArchive(byte[] bArr, String str, long j, boolean z) {
            try {
                ZipEntry zipEntry = new ZipEntry(str);
                zipEntry.setTime(j);
                this._zos.putNextEntry(zipEntry);
                this._zos.write(bArr);
                this._zos.closeEntry();
                return true;
            } catch (IOException e2) {
                return false;
            }
        }

        void close() throws IOException {
            this._zos.close();
            this._os.close();
        }
    }

    private static boolean addMimetypeToArchive(ZipWrapper zipWrapper, String str) {
        try {
            return addDataToArchive(zipWrapper, str.getBytes("UTF-8"), "mimetype", new Date().getTime(), false);
        } catch (UnsupportedEncodingException e2) {
            return false;
        }
    }

    private static boolean addFileToArchive(ZipWrapper zipWrapper, String str, String str2, boolean z) {
        boolean z2 = true;
        byte[] fileToByteArray = null;
        try {
            fileToByteArray = FileUtils.readFileToByteArray(new File(str));
        } catch (IOException e2) {
            z2 = false;
        }
        if (z2) {
            return addDataToArchive(zipWrapper, fileToByteArray, str2, new File(str).lastModified(), z);
        }
        return z2;
    }

    private static boolean addDataToArchive(ZipWrapper zipWrapper, byte[] bArr, String str, long j, boolean z) {
        return zipWrapper.addDataToArchive(bArr, str, j, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0050 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean createArchiveFileWithItems(java.util.ArrayList<com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchiveItem> r12, java.lang.String r13, java.lang.String r14, com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress r15) throws com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive.createArchiveFileWithItems(java.util.ArrayList, java.lang.String, java.lang.String, com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress):boolean");
    }

    public static AdobeCSDKProgress createArchiveFileWithItems(final ArrayList<AdobeUCFArchiveItem> arrayList, final String str, final String str2, final Handler handler, final IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive.1
            @Override // java.lang.Runnable
            public void run() {
                final AdobeCSDKException adobeCSDKException;
                final boolean zCreateArchiveFileWithItems;
                try {
                    zCreateArchiveFileWithItems = AdobeUCFArchive.createArchiveFileWithItems(arrayList, str, str2, adobeCSDKProgress);
                    adobeCSDKException = null;
                } catch (AdobeCSDKException e2) {
                    adobeCSDKException = e2;
                    zCreateArchiveFileWithItems = false;
                }
                if (adobeCSDKException != null) {
                    if (iAdobeGenericErrorCallback != null) {
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    iAdobeGenericErrorCallback.onError(adobeCSDKException);
                                }
                            });
                            return;
                        } else {
                            iAdobeGenericErrorCallback.onError(adobeCSDKException);
                            return;
                        }
                    }
                    return;
                }
                if (iAdobeGenericCompletionCallback != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeGenericCompletionCallback.onCompletion(Boolean.valueOf(zCreateArchiveFileWithItems));
                            }
                        });
                    } else {
                        iAdobeGenericCompletionCallback.onCompletion(Boolean.valueOf(zCreateArchiveFileWithItems));
                    }
                }
            }
        }).start();
        return adobeCSDKProgress;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x01f1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x017c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0181 A[Catch: IOException -> 0x01e9, TryCatch #9 {IOException -> 0x01e9, blocks: (B:96:0x017c, B:98:0x0181, B:99:0x0184), top: B:148:0x017c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> extractFiles(java.util.ArrayList<java.lang.String> r15, java.lang.String r16, java.lang.String r17, com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress r18) throws com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException {
        /*
            Method dump skipped, instruction units count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive.extractFiles(java.util.ArrayList, java.lang.String, java.lang.String, com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress):java.util.ArrayList");
    }

    public static AdobeCSDKProgress extractFiles(final ArrayList<String> arrayList, final String str, final String str2, final Handler handler, final IAdobeGenericCompletionCallback<ArrayList<String>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive.2
            @Override // java.lang.Runnable
            public void run() {
                final ArrayList<String> arrayListExtractFiles;
                final AdobeCSDKException adobeCSDKException = null;
                try {
                    arrayListExtractFiles = AdobeUCFArchive.extractFiles(arrayList, str, str2, adobeCSDKProgress);
                } catch (AdobeCSDKException e2) {
                    adobeCSDKException = e2;
                    arrayListExtractFiles = null;
                }
                if (adobeCSDKException != null) {
                    if (iAdobeGenericErrorCallback != null) {
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    iAdobeGenericErrorCallback.onError(adobeCSDKException);
                                }
                            });
                            return;
                        } else {
                            iAdobeGenericErrorCallback.onError(adobeCSDKException);
                            return;
                        }
                    }
                    return;
                }
                if (iAdobeGenericCompletionCallback != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeGenericCompletionCallback.onCompletion(arrayListExtractFiles);
                            }
                        });
                    } else {
                        iAdobeGenericCompletionCallback.onCompletion(arrayListExtractFiles);
                    }
                }
            }
        }).start();
        return adobeCSDKProgress;
    }
}
