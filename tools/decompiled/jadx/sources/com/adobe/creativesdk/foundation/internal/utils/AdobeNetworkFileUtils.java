package com.adobe.creativesdk.foundation.internal.utils;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeNetworkFileUtils {
    public static boolean touch(String str) {
        File file = new File(str);
        if (!file.exists()) {
            if (file.getParentFile() != null) {
                file.getParentFile().mkdirs();
            }
            try {
                file.createNewFile();
            } catch (IOException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeNetworkFileUtils.class.getSimpleName(), "Failure while creating file", e2);
                return false;
            }
        }
        if (!file.setLastModified(new Date().getTime())) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                long length = randomAccessFile.length();
                randomAccessFile.setLength(1 + length);
                randomAccessFile.setLength(length);
                randomAccessFile.close();
            } catch (IOException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeNetworkFileUtils.class.getSimpleName(), "Failure while closing the stream ", e3);
                return false;
            }
        }
        return true;
    }
}
