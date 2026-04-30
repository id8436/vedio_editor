package com.facebook.h;

import com.facebook.d.d.k;
import java.io.IOException;
import java.io.InputStream;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: compiled from: JfifUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static int a(int i) {
        return e.a(i);
    }

    public static int a(InputStream inputStream) {
        try {
            int iB = b(inputStream);
            if (iB == 0) {
                return 0;
            }
            return e.a(inputStream, iB);
        } catch (IOException e2) {
            return 0;
        }
    }

    public static boolean a(InputStream inputStream, int i) throws IOException {
        k.a(inputStream);
        while (d.a(inputStream, 1, false) == 255) {
            int iA = 255;
            while (iA == 255) {
                iA = d.a(inputStream, 1, false);
            }
            if ((i == 192 && b(iA)) || iA == i) {
                return true;
            }
            if (iA != 216 && iA != 1) {
                if (iA == 217 || iA == 218) {
                    return false;
                }
                inputStream.skip(d.a(inputStream, 2, false) - 2);
            }
        }
        return false;
    }

    private static boolean b(int i) {
        switch (i) {
            case 192:
            case 193:
            case 194:
            case 195:
            case 197:
            case 198:
            case 199:
            case 201:
            case 202:
            case 203:
            case 205:
            case 206:
            case HttpStatus.ORDINAL_207_Multi_Status /* 207 */:
                return true;
            case 196:
            case 200:
            case 204:
            default:
                return false;
        }
    }

    private static int b(InputStream inputStream) throws IOException {
        int iA;
        if (a(inputStream, 225) && d.a(inputStream, 2, false) - 2 > 6) {
            int iA2 = d.a(inputStream, 4, false);
            int iA3 = d.a(inputStream, 2, false);
            int i = (iA - 4) - 2;
            if (iA2 == 1165519206 && iA3 == 0) {
                return i;
            }
        }
        return 0;
    }
}
