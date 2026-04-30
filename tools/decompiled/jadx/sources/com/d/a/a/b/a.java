package com.d.a.a.b;

import java.util.Arrays;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: CharTypes.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f1341a = "0123456789ABCDEF".toCharArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f1342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f1343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f1344d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f1345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f1346f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f1347g;
    private static final int[] h;
    private static final int[] i;
    private static final int[] j;

    static {
        int i2;
        int length = f1341a.length;
        f1342b = new byte[length];
        for (int i3 = 0; i3 < length; i3++) {
            f1342b[i3] = (byte) f1341a[i3];
        }
        int[] iArr = new int[256];
        for (int i4 = 0; i4 < 32; i4++) {
            iArr[i4] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        f1343c = iArr;
        int[] iArr2 = new int[f1343c.length];
        System.arraycopy(f1343c, 0, iArr2, 0, iArr2.length);
        for (int i5 = 128; i5 < 256; i5++) {
            if ((i5 & 224) == 192) {
                i2 = 2;
            } else if ((i5 & 240) == 224) {
                i2 = 3;
            } else {
                i2 = (i5 & 248) == 240 ? 4 : -1;
            }
            iArr2[i5] = i2;
        }
        f1344d = iArr2;
        int[] iArr3 = new int[256];
        Arrays.fill(iArr3, -1);
        for (int i6 = 33; i6 < 256; i6++) {
            if (Character.isJavaIdentifierPart((char) i6)) {
                iArr3[i6] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        f1345e = iArr3;
        int[] iArr4 = new int[256];
        System.arraycopy(f1345e, 0, iArr4, 0, iArr4.length);
        Arrays.fill(iArr4, 128, 128, 0);
        f1346f = iArr4;
        int[] iArr5 = new int[256];
        System.arraycopy(f1344d, 128, iArr5, 128, 128);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        f1347g = iArr5;
        int[] iArr6 = new int[256];
        System.arraycopy(f1344d, 128, iArr6, 128, 128);
        Arrays.fill(iArr6, 0, 32, -1);
        iArr6[32] = 1;
        iArr6[9] = 1;
        iArr6[10] = 10;
        iArr6[13] = 13;
        iArr6[47] = 47;
        iArr6[35] = 35;
        h = iArr6;
        int[] iArr7 = new int[128];
        for (int i7 = 0; i7 < 32; i7++) {
            iArr7[i7] = -1;
        }
        iArr7[34] = 34;
        iArr7[92] = 92;
        iArr7[8] = 98;
        iArr7[9] = 116;
        iArr7[12] = 102;
        iArr7[10] = 110;
        iArr7[13] = 114;
        i = iArr7;
        j = new int[128];
        Arrays.fill(j, -1);
        for (int i8 = 0; i8 < 10; i8++) {
            j[i8 + 48] = i8;
        }
        for (int i9 = 0; i9 < 6; i9++) {
            j[i9 + 97] = i9 + 10;
            j[i9 + 65] = i9 + 10;
        }
    }

    public static int[] a() {
        return f1343c;
    }

    public static int[] b() {
        return f1344d;
    }

    public static int[] c() {
        return f1345e;
    }

    public static int[] d() {
        return f1346f;
    }

    public static int[] e() {
        return f1347g;
    }

    public static int[] f() {
        return i;
    }

    public static int a(int i2) {
        if (i2 > 127) {
            return -1;
        }
        return j[i2];
    }

    public static void a(StringBuilder sb, String str) {
        int[] iArr = i;
        int length = iArr.length;
        int length2 = str.length();
        for (int i2 = 0; i2 < length2; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt >= length || iArr[cCharAt] == 0) {
                sb.append(cCharAt);
            } else {
                sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                int i3 = iArr[cCharAt];
                if (i3 < 0) {
                    sb.append('u');
                    sb.append('0');
                    sb.append('0');
                    sb.append(f1341a[cCharAt >> 4]);
                    sb.append(f1341a[cCharAt & 15]);
                } else {
                    sb.append((char) i3);
                }
            }
        }
    }

    public static char[] g() {
        return (char[]) f1341a.clone();
    }

    public static byte[] h() {
        return (byte[]) f1342b.clone();
    }
}
