package com.l.b.a;

import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ASCIIUtility.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static int a(byte[] bArr, int i, int i2, int i3) throws NumberFormatException {
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        if (bArr == null) {
            throw new NumberFormatException("null");
        }
        if (i2 > i) {
            if (bArr[i] == 45) {
                z = true;
                i4 = Integer.MIN_VALUE;
                i5 = i + 1;
            } else {
                i4 = -2147483647;
                i5 = i;
                z = false;
            }
            int i8 = i4 / i3;
            if (i5 < i2) {
                i7 = i5 + 1;
                int iDigit = Character.digit((char) bArr[i5], i3);
                if (iDigit < 0) {
                    throw new NumberFormatException(new StringBuffer().append("illegal number: ").append(a(bArr, i, i2)).toString());
                }
                i6 = -iDigit;
            } else {
                int i9 = i5;
                i6 = 0;
                i7 = i9;
            }
            while (i7 < i2) {
                int i10 = i7 + 1;
                int iDigit2 = Character.digit((char) bArr[i7], i3);
                if (iDigit2 < 0) {
                    throw new NumberFormatException("illegal number");
                }
                if (i6 < i8) {
                    throw new NumberFormatException("illegal number");
                }
                int i11 = i6 * i3;
                if (i11 < i4 + iDigit2) {
                    throw new NumberFormatException("illegal number");
                }
                i6 = i11 - iDigit2;
                i7 = i10;
            }
            if (z) {
                if (i7 > i + 1) {
                    return i6;
                }
                throw new NumberFormatException("illegal number");
            }
            return -i6;
        }
        throw new NumberFormatException("illegal number");
    }

    public static String a(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        char[] cArr = new char[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            cArr[i4] = (char) (bArr[i] & UnsignedBytes.MAX_VALUE);
            i++;
        }
        return new String(cArr);
    }

    public static byte[] a(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) charArray[i];
        }
        return bArr;
    }

    public static byte[] a(InputStream inputStream) throws IOException {
        if (inputStream instanceof ByteArrayInputStream) {
            int iAvailable = inputStream.available();
            byte[] bArr = new byte[iAvailable];
            inputStream.read(bArr, 0, iAvailable);
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr2, 0, 1024);
            if (i != -1) {
                byteArrayOutputStream.write(bArr2, 0, i);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }
}
