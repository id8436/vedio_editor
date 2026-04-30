package com.facebook.h;

import android.support.v4.view.ViewCompat;
import android.util.Pair;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: WebpUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class h {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0093 -> B:59:0x0015). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0095 -> B:59:0x0015). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x009b -> B:59:0x0015). Please report as a decompilation issue!!! */
    @Nullable
    public static Pair<Integer, Integer> a(InputStream inputStream) {
        Pair<Integer, Integer> pairE = null;
        byte[] bArr = new byte[4];
        try {
            try {
                inputStream.read(bArr);
                if (a(bArr, "RIFF")) {
                    f(inputStream);
                    inputStream.read(bArr);
                    if (a(bArr, "WEBP")) {
                        inputStream.read(bArr);
                        String strA = a(bArr);
                        if ("VP8 ".equals(strA)) {
                            pairE = c(inputStream);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        } else if ("VP8L".equals(strA)) {
                            pairE = d(inputStream);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                        } else if ("VP8X".equals(strA)) {
                            pairE = e(inputStream);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                        } else if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                    } else if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                } else if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e9) {
            e9.printStackTrace();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return pairE;
    }

    private static Pair<Integer, Integer> c(InputStream inputStream) throws IOException {
        inputStream.skip(7L);
        short sH = h(inputStream);
        short sH2 = h(inputStream);
        short sH3 = h(inputStream);
        if (sH == 157 && sH2 == 1 && sH3 == 42) {
            return new Pair<>(Integer.valueOf(b(inputStream)), Integer.valueOf(b(inputStream)));
        }
        return null;
    }

    private static Pair<Integer, Integer> d(InputStream inputStream) throws IOException {
        f(inputStream);
        if (i(inputStream) != 47) {
            return null;
        }
        int i = ((byte) inputStream.read()) & UnsignedBytes.MAX_VALUE;
        int i2 = ((byte) inputStream.read()) & UnsignedBytes.MAX_VALUE;
        return new Pair<>(Integer.valueOf((i | ((i2 & 63) << 8)) + 1), Integer.valueOf(((((((byte) inputStream.read()) & UnsignedBytes.MAX_VALUE) & 15) << 10) | ((((byte) inputStream.read()) & UnsignedBytes.MAX_VALUE) << 2) | ((i2 & 192) >> 6)) + 1));
    }

    private static Pair<Integer, Integer> e(InputStream inputStream) throws IOException {
        inputStream.skip(8L);
        return new Pair<>(Integer.valueOf(g(inputStream) + 1), Integer.valueOf(g(inputStream) + 1));
    }

    private static boolean a(byte[] bArr, String str) {
        if (bArr.length != str.length()) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (str.charAt(i) != bArr[i]) {
                return false;
            }
        }
        return true;
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append((char) b2);
        }
        return sb.toString();
    }

    private static int f(InputStream inputStream) throws IOException {
        byte b2 = (byte) inputStream.read();
        byte b3 = (byte) inputStream.read();
        byte b4 = (byte) inputStream.read();
        int i = (b3 << 8) & 65280;
        return (b2 & UnsignedBytes.MAX_VALUE) | i | ((b4 << Ascii.DLE) & 16711680) | ((((byte) inputStream.read()) << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK);
    }

    public static int b(InputStream inputStream) throws IOException {
        byte b2 = (byte) inputStream.read();
        return (b2 & UnsignedBytes.MAX_VALUE) | ((((byte) inputStream.read()) << 8) & 65280);
    }

    private static int g(InputStream inputStream) throws IOException {
        byte bI = i(inputStream);
        return (bI & UnsignedBytes.MAX_VALUE) | ((i(inputStream) << 8) & 65280) | ((i(inputStream) << Ascii.DLE) & 16711680);
    }

    private static short h(InputStream inputStream) throws IOException {
        return (short) (inputStream.read() & 255);
    }

    private static byte i(InputStream inputStream) throws IOException {
        return (byte) (inputStream.read() & 255);
    }
}
