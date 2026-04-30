package com.adobe.xmp.impl;

import com.google.common.primitives.UnsignedBytes;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class Latin1Converter {
    private static final int STATE_START = 0;
    private static final int STATE_UTF8CHAR = 11;

    private Latin1Converter() {
    }

    public static ByteBuffer convert(ByteBuffer byteBuffer) {
        if ("UTF-8".equals(byteBuffer.getEncoding())) {
            byte[] bArr = new byte[8];
            ByteBuffer byteBuffer2 = new ByteBuffer((byteBuffer.length() * 4) / 3);
            int i = 0;
            char c2 = 0;
            int i2 = 0;
            int i3 = 0;
            while (i < byteBuffer.length()) {
                int iCharAt = byteBuffer.charAt(i);
                switch (c2) {
                    case 11:
                        if (i2 > 0 && (iCharAt & 192) == 128) {
                            int i4 = i3 + 1;
                            bArr[i3] = (byte) iCharAt;
                            i2--;
                            if (i2 == 0) {
                                byteBuffer2.append(bArr, 0, i4);
                                c2 = 0;
                                i3 = 0;
                            } else {
                                i3 = i4;
                            }
                        } else {
                            byteBuffer2.append(convertToUTF8(bArr[0]));
                            i -= i3;
                            c2 = 0;
                            i3 = 0;
                        }
                        break;
                    default:
                        if (iCharAt < 127) {
                            byteBuffer2.append((byte) iCharAt);
                        } else if (iCharAt >= 192) {
                            i2 = -1;
                            for (int i5 = iCharAt; i2 < 8 && (i5 & 128) == 128; i5 <<= 1) {
                                i2++;
                            }
                            bArr[i3] = (byte) iCharAt;
                            i3++;
                            c2 = 11;
                        } else {
                            byteBuffer2.append(convertToUTF8((byte) iCharAt));
                        }
                        break;
                }
                i++;
            }
            if (c2 == 11) {
                for (int i6 = 0; i6 < i3; i6++) {
                    byteBuffer2.append(convertToUTF8(bArr[i6]));
                }
            }
            return byteBuffer2;
        }
        return byteBuffer;
    }

    private static byte[] convertToUTF8(byte b2) {
        byte[] bytes;
        int i = b2 & UnsignedBytes.MAX_VALUE;
        if (i >= 128) {
            try {
                if (i == 129 || i == 141 || i == 143 || i == 144 || i == 157) {
                    bytes = new byte[]{32};
                } else {
                    bytes = new String(new byte[]{b2}, "cp1252").getBytes("UTF-8");
                }
                return bytes;
            } catch (UnsupportedEncodingException e2) {
            }
        }
        return new byte[]{b2};
    }
}
