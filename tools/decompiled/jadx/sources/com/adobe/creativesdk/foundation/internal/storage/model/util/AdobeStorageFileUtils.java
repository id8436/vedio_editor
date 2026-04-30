package com.adobe.creativesdk.foundation.internal.storage.model.util;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeNetworkFileUtils;
import java.io.File;
import java.util.Iterator;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageFileUtils {
    public static boolean moveFileAtomicallyFrom(String str, String str2) {
        File file = new File(str2);
        File file2 = new File(str);
        if (file.exists()) {
            try {
                AdobeDCXUtils.fWrite(str2, AdobeDCXUtils.fRead(str));
                FileUtils.deleteQuietly(file2);
                return true;
            } catch (Exception e2) {
                AdobeDCXUtils.logAnalytics("csdk_android_dcx", "storagefileutils-movefile", "move file atomically fail" + e2.getMessage() + Log.getStackTraceString(e2), "srcFile: " + str + " destFile: " + str2);
                return false;
            }
        }
        try {
            File file3 = new File(FilenameUtils.getFullPathNoEndSeparator(str2));
            if (!file3.exists()) {
                file3.mkdirs();
            }
            FileUtils.moveFile(file2, file);
            return true;
        } catch (Exception e3) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "storagefileutils-movefile2", "move file atomically fail" + e3.getMessage() + Log.getStackTraceString(e3), "srcFile: " + str + " destFile: " + str2);
            return false;
        }
    }

    public static boolean copyFileAtomicallyFrom(String str, String str2) {
        File file = new File(str2);
        File file2 = new File(str);
        if (file.exists()) {
            try {
                AdobeDCXUtils.fWrite(str2, AdobeDCXUtils.fRead(str));
                return true;
            } catch (Exception e2) {
                AdobeDCXUtils.logAnalytics("csdk_android_dcx", "storagefileutils-copyfile", "copy file atomically fail" + e2.getMessage() + Log.getStackTraceString(e2), "srcFile: " + str + " destFile: " + str2);
                return false;
            }
        }
        try {
            File file3 = new File(FilenameUtils.getFullPathNoEndSeparator(str2));
            if (!file3.exists()) {
                file3.mkdirs();
            }
            FileUtils.copyFile(file2, file);
            return true;
        } catch (Exception e3) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "storagefileutils-copyfile2", "copy file atomically fail" + e3.getMessage() + Log.getStackTraceString(e3), "srcFile: " + str + " destFile: " + str2);
            return false;
        }
    }

    public static boolean touch(String str) {
        return AdobeNetworkFileUtils.touch(str);
    }

    public static boolean setReadOnly(String str) {
        return new File(str).setReadOnly();
    }

    public static boolean clearReadOnly(String str) {
        return new File(str).setWritable(true);
    }

    public static boolean recursivelyClearAnyReadOnlyFlagsInDirectory(String str) throws AdobeDCXException {
        Iterator<File> itIterateFiles = FileUtils.iterateFiles(new File(str), (String[]) null, true);
        boolean z = false;
        while (itIterateFiles.hasNext() && !z) {
            z = !itIterateFiles.next().setWritable(true);
        }
        return !z;
    }
}
