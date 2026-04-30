package com.adobe.creativesdk.foundation.adobeinternal.imageservice;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeImageServiceBodyStreamFactory {
    private static String T = "ImageStreamFactory";
    String mFilePath;

    AdobeImageServiceBodyStreamFactory(String str, String str2, HashMap<String, AdobeStorageResourceItem> map, String str3, String str4) throws Throwable {
        AdobeLogger.log(Level.DEBUG, T, "body stream file : " + str4);
        this.mFilePath = str4;
        writeContentToBodyStreamFileWithJSONData(str, str2, map, str3);
    }

    static AdobeImageServiceBodyStreamFactory bodyStreamFactoryWithJSONData(String str, String str2, HashMap<String, AdobeStorageResourceItem> map, String str3, String str4) {
        return new AdobeImageServiceBodyStreamFactory(str, str2, map, str3, str4);
    }

    private void writeContentToBodyStreamFileWithJSONData(String str, String str2, HashMap<String, AdobeStorageResourceItem> map, String str3) throws Throwable {
        BufferedInputStream bufferedInputStream;
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(this.mFilePath)));
            StringBuilder sb = new StringBuilder("");
            byte[] bArr = new byte[32768];
            String str4 = String.format("--%s%s", str3, "\r\n");
            sb.append(str4);
            sb.append(String.format("Content-ID: <%s>%s", str2, "\r\n"));
            sb.append(String.format("Content-Type: application/vnd.adobe.image-operation+json%s", "\r\n"));
            sb.append("\r\n");
            sb.append(str);
            sb.append("\r\n");
            Iterator<Map.Entry<String, AdobeStorageResourceItem>> it = map.entrySet().iterator();
            while (true) {
                StringBuilder sb2 = sb;
                if (!it.hasNext()) {
                    sb2.append(String.format("--%s--%s", str3, "\r\n"));
                    bufferedOutputStream.write(sb2.toString().getBytes("UTF-8"));
                    bufferedOutputStream.close();
                    AdobeLogger.log(Level.DEBUG, T, "bodyData : " + ((Object) sb2));
                    return;
                }
                Map.Entry<String, AdobeStorageResourceItem> next = it.next();
                AdobeStorageResourceItem value = next.getValue();
                sb2.append(str4);
                sb2.append(String.format("Content-ID: <%s>%s", next.getKey(), "\r\n"));
                sb2.append(String.format("Content-Type: %s%s", value.type, "\r\n"));
                sb2.append("\r\n");
                bufferedOutputStream.write(sb2.toString().getBytes("UTF-8"));
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(new File(value.getPath())));
                    try {
                        try {
                            for (int i = bufferedInputStream.read(bArr); i > 0; i = bufferedInputStream.read(bArr)) {
                                bufferedOutputStream.write(bArr);
                            }
                            if (bufferedInputStream != null) {
                                bufferedInputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (bufferedInputStream != null) {
                                bufferedInputStream.close();
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    bufferedInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = null;
                }
                AdobeLogger.log(Level.DEBUG, T, "bodyData : " + ((Object) sb2));
                sb = new StringBuilder("");
                sb.append("\r\n");
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }
}
