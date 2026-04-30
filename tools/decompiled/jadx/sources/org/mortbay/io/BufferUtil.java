package org.mortbay.io;

import com.google.common.base.Ascii;
import java.io.UnsupportedEncodingException;
import org.mortbay.util.StringUtil;

/* JADX INFO: loaded from: classes3.dex */
public class BufferUtil {
    static final byte MINUS = 45;
    static final byte SPACE = 32;
    static final byte[] DIGIT = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
    private static int[] decDivisors = {1000000000, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10, 1};
    private static int[] hexDivisors = {268435456, 16777216, 1048576, 65536, 4096, 256, 16, 1};
    private static final long[] decDivisorsL = {1000000000000000000L, 100000000000000000L, 10000000000000000L, 1000000000000000L, 100000000000000L, 10000000000000L, 1000000000000L, 100000000000L, 10000000000L, 1000000000, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10, 1};

    public static int toInt(Buffer buffer) {
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        for (int index = buffer.getIndex(); index < buffer.putIndex(); index++) {
            byte bPeek = buffer.peek(index);
            if (bPeek <= 32) {
                if (z2) {
                    break;
                }
            } else {
                if (bPeek >= 48 && bPeek <= 57) {
                    i = (bPeek - 48) + (i * 10);
                    z2 = true;
                } else {
                    if (bPeek != 45 || z2) {
                        break;
                    }
                    z = true;
                }
            }
        }
        if (z2) {
            return z ? -i : i;
        }
        throw new NumberFormatException(buffer.toString());
    }

    public static long toLong(Buffer buffer) {
        boolean z = false;
        long j = 0;
        boolean z2 = false;
        for (int index = buffer.getIndex(); index < buffer.putIndex(); index++) {
            byte bPeek = buffer.peek(index);
            if (bPeek <= 32) {
                if (z2) {
                    break;
                }
            } else {
                if (bPeek >= 48 && bPeek <= 57) {
                    j = (j * 10) + ((long) (bPeek - 48));
                    z2 = true;
                } else {
                    if (bPeek != 45 || z2) {
                        break;
                    }
                    z = true;
                }
            }
        }
        if (z2) {
            return z ? -j : j;
        }
        throw new NumberFormatException(buffer.toString());
    }

    public static void putHexInt(Buffer buffer, int i) {
        int i2;
        if (i < 0) {
            buffer.put((byte) 45);
            if (i == Integer.MIN_VALUE) {
                buffer.put((byte) 56);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                return;
            }
            i2 = -i;
        } else {
            i2 = i;
        }
        if (i2 < 16) {
            buffer.put(DIGIT[i2]);
            return;
        }
        int i3 = i2;
        boolean z = false;
        for (int i4 = 0; i4 < hexDivisors.length; i4++) {
            if (i3 < hexDivisors[i4]) {
                if (z) {
                    buffer.put((byte) 48);
                }
            } else {
                z = true;
                int i5 = i3 / hexDivisors[i4];
                buffer.put(DIGIT[i5]);
                i3 -= i5 * hexDivisors[i4];
            }
        }
    }

    public static void prependHexInt(Buffer buffer, int i) {
        int i2;
        if (i == 0) {
            int index = buffer.getIndex() - 1;
            buffer.poke(index, (byte) 48);
            buffer.setGetIndex(index);
            return;
        }
        boolean z = false;
        if (i < 0) {
            z = true;
            i = -i;
        }
        int index2 = buffer.getIndex();
        while (i > 0) {
            int i3 = i & 15;
            i >>= 4;
            index2--;
            buffer.poke(index2, DIGIT[i3]);
        }
        if (z) {
            i2 = index2 - 1;
            buffer.poke(i2, (byte) 45);
        } else {
            i2 = index2;
        }
        buffer.setGetIndex(i2);
    }

    public static void putDecInt(Buffer buffer, int i) {
        int i2;
        if (i < 0) {
            buffer.put((byte) 45);
            if (i == Integer.MIN_VALUE) {
                buffer.put((byte) 50);
                i2 = 147483648;
            } else {
                i2 = -i;
            }
        } else {
            i2 = i;
        }
        if (i2 < 10) {
            buffer.put(DIGIT[i2]);
            return;
        }
        int i3 = i2;
        boolean z = false;
        for (int i4 = 0; i4 < decDivisors.length; i4++) {
            if (i3 < decDivisors[i4]) {
                if (z) {
                    buffer.put((byte) 48);
                }
            } else {
                z = true;
                int i5 = i3 / decDivisors[i4];
                buffer.put(DIGIT[i5]);
                i3 -= i5 * decDivisors[i4];
            }
        }
    }

    public static void putDecLong(Buffer buffer, long j) {
        long j2;
        if (j < 0) {
            buffer.put((byte) 45);
            if (j == Long.MIN_VALUE) {
                buffer.put((byte) 57);
                j2 = 223372036854775808L;
            } else {
                j2 = -j;
            }
        } else {
            j2 = j;
        }
        if (j2 < 10) {
            buffer.put(DIGIT[(int) j2]);
            return;
        }
        boolean z = false;
        for (int i = 0; i < decDivisorsL.length; i++) {
            if (j2 < decDivisorsL[i]) {
                if (z) {
                    buffer.put((byte) 48);
                }
            } else {
                z = true;
                long j3 = j2 / decDivisorsL[i];
                buffer.put(DIGIT[(int) j3]);
                j2 -= j3 * decDivisorsL[i];
            }
        }
    }

    public static Buffer toBuffer(long j) {
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(16);
        putDecLong(byteArrayBuffer, j);
        return byteArrayBuffer;
    }

    public static void putCRLF(Buffer buffer) {
        buffer.put((byte) 13);
        buffer.put((byte) 10);
    }

    public static boolean isPrefix(Buffer buffer, Buffer buffer2) {
        if (buffer.length() > buffer2.length()) {
            return false;
        }
        int index = buffer2.getIndex();
        int index2 = buffer.getIndex();
        while (index2 < buffer.putIndex()) {
            int i = index + 1;
            if (buffer.peek(index2) != buffer2.peek(index)) {
                return false;
            }
            index2++;
            index = i;
        }
        return true;
    }

    public static String to8859_1_String(Buffer buffer) {
        if (buffer.isImmutable()) {
            return buffer.toString();
        }
        try {
            byte[] bArrArray = buffer.array();
            if (bArrArray != null) {
                return new String(bArrArray, buffer.getIndex(), buffer.length(), StringUtil.__ISO_8859_1);
            }
            StringBuffer stringBuffer = new StringBuffer(buffer.length());
            int index = buffer.getIndex();
            for (int i = 0; i < buffer.length(); i++) {
                stringBuffer.append((char) (buffer.peek(index) & Ascii.DEL));
                index++;
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return buffer.toString();
        }
    }
}
