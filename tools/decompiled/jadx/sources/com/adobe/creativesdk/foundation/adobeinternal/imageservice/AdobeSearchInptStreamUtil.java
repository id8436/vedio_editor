package com.adobe.creativesdk.foundation.adobeinternal.imageservice;

import android.util.Log;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
class AdobeSearchInptStreamUtil {
    private static String T = "SearchInput";
    byte[] _buffer;
    final int _bufferCapacity;
    int _dataCursor;
    int _dataLen;
    InputStream _inputStream;

    public static AdobeSearchInptStreamUtil createWithInputStream(InputStream inputStream, int i) {
        return new AdobeSearchInptStreamUtil(inputStream, Integer.valueOf(i));
    }

    private AdobeSearchInptStreamUtil(InputStream inputStream, Integer num) {
        int i;
        this._buffer = new byte[num.intValue()];
        this._bufferCapacity = num.intValue();
        this._inputStream = inputStream;
        try {
            i = inputStream.read(this._buffer);
        } catch (IOException e2) {
            e2.printStackTrace();
            i = 0;
        }
        i = i < 0 ? 0 : i;
        this._dataCursor = 0;
        this._dataLen = i;
    }

    public int indexOf(byte[] bArr) {
        boolean z;
        for (int i = this._dataCursor; i < this._dataLen - bArr.length; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= bArr.length) {
                    z = true;
                    break;
                }
                if (this._buffer[i + i2] != bArr[i2]) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                return i;
            }
        }
        return -1;
    }

    private int readStreamIntoBuffer() {
        int i;
        IOException e2;
        try {
            i = this._inputStream.read(this._buffer, this._dataLen, this._bufferCapacity - this._dataLen);
        } catch (IOException e3) {
            i = 0;
            e2 = e3;
        }
        try {
            if (i == -1) {
                AdobeLogger.log(Level.DEBUG, T, "End of stream.");
                this._inputStream.close();
                this._inputStream = null;
            } else {
                this._dataLen += i;
            }
        } catch (IOException e4) {
            e2 = e4;
            e2.printStackTrace();
        }
        return i;
    }

    public boolean copyInputIntoStreamUntilMatchData(OutputStream outputStream, String str) {
        if (this._inputStream != null && str.length() < this._bufferCapacity) {
            int length = str.length();
            try {
                byte[] bytes = str.getBytes("UTF-8");
                int streamIntoBuffer = 0;
                boolean z = false;
                while (!z && streamIntoBuffer != -1) {
                    int iIndexOf = indexOf(bytes);
                    if (iIndexOf != -1) {
                        z = true;
                        if (outputStream != null) {
                            try {
                                outputStream.write(this._buffer, this._dataCursor, iIndexOf - this._dataCursor);
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        this._dataCursor = iIndexOf + length;
                        this._dataLen -= this._dataCursor;
                        if (this._dataLen > 0) {
                            System.arraycopy(this._buffer, this._dataCursor, this._buffer, 0, this._dataLen);
                        }
                        this._dataCursor = 0;
                        readStreamIntoBuffer();
                    } else {
                        if (this._dataLen >= length) {
                            if (outputStream != null) {
                                try {
                                    outputStream.write(this._buffer, this._dataCursor, this._dataLen - length);
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            System.arraycopy(this._buffer, this._dataLen - length, this._buffer, 0, length);
                            this._dataCursor = 0;
                            this._dataLen = length;
                        } else {
                            System.arraycopy(this._buffer, this._dataCursor, this._buffer, 0, this._dataLen);
                            this._dataCursor = 0;
                        }
                        streamIntoBuffer = readStreamIntoBuffer();
                        if (streamIntoBuffer == -1 && outputStream != null) {
                            try {
                                outputStream.write(this._buffer, this._dataCursor, this._dataLen);
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                }
                return z;
            } catch (UnsupportedEncodingException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static void __UnitTest() {
        String str;
        String str2;
        String str3;
        String str4 = null;
        byte[] bArr = {97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        AdobeSearchInptStreamUtil adobeSearchInptStreamUtilCreateWithInputStream = createWithInputStream(byteArrayInputStream, 8);
        if (!adobeSearchInptStreamUtilCreateWithInputStream.copyInputIntoStreamUntilMatchData(byteArrayOutputStream, "ghij")) {
            throw new AssertionError("!found : ghij");
        }
        try {
            str = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            str = null;
        }
        Log.e(T, str);
        if (str != null && !str.equals("abcdef")) {
            throw new AssertionError("length not correct.");
        }
        if (!adobeSearchInptStreamUtilCreateWithInputStream.copyInputIntoStreamUntilMatchData(byteArrayOutputStream, "klm")) {
            throw new AssertionError("!found : klm");
        }
        try {
            str2 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        } catch (UnsupportedEncodingException e3) {
            e3.printStackTrace();
            str2 = null;
        }
        Log.e(T, str2);
        if (str2 != null && !str2.equals("abcdef")) {
            throw new AssertionError("length not correct.");
        }
        if (!adobeSearchInptStreamUtilCreateWithInputStream.copyInputIntoStreamUntilMatchData(byteArrayOutputStream, "zabcdef")) {
            throw new AssertionError("!found : zabcdef");
        }
        try {
            str3 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
            str3 = null;
        }
        if (str3 == null || !str3.equals("abcdefnopqrstuvwxy")) {
            throw new AssertionError("length not correct.");
        }
        if (adobeSearchInptStreamUtilCreateWithInputStream.copyInputIntoStreamUntilMatchData(byteArrayOutputStream, "!there")) {
            throw new AssertionError("found a non existing pattern!");
        }
        try {
            str4 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        } catch (UnsupportedEncodingException e5) {
            e5.printStackTrace();
        }
        if (str4 == null || !str4.equals("abcdefnopqrstuvwxyghijklmnopqrstuvwxyz")) {
            throw new AssertionError("length not correct.");
        }
    }
}
