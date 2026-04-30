package com.facebook.g;

import com.facebook.d.d.k;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: ImageFormatCheckerUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static byte[] a(String str) {
        k.a(str);
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII not found!", e2);
        }
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        k.a(bArr);
        k.a(bArr2);
        if (bArr2.length > bArr.length) {
            return false;
        }
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
