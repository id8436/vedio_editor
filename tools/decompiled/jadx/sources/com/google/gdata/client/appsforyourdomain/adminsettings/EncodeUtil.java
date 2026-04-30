package com.google.gdata.client.appsforyourdomain.adminsettings;

import com.google.gdata.util.common.util.Base64;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class EncodeUtil {
    private EncodeUtil() {
    }

    public static String encodeBinaryFile(String str) throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        String strEncode = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr);
                    strEncode = Base64.encode(bArr);
                    fileInputStream.close();
                } catch (FileNotFoundException e2) {
                    e = e2;
                    e.printStackTrace();
                    fileInputStream.close();
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                    fileInputStream.close();
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream.close();
                throw th;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            fileInputStream = null;
        } catch (IOException e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            fileInputStream.close();
            throw th;
        }
        return strEncode;
    }
}
