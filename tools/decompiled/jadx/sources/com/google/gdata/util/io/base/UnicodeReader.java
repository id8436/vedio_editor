package com.google.gdata.util.io.base;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PushbackInputStream;
import java.io.Reader;
import org.apache.commons.lang3.CharEncoding;

/* JADX INFO: loaded from: classes3.dex */
public class UnicodeReader extends Reader {
    private static final int BOM_SIZE = 4;
    private final String defaultEnc;
    private final InputStreamReader internalInputStreamReader;

    public UnicodeReader(InputStream inputStream, String str) throws IOException {
        int i;
        this.defaultEnc = str;
        byte[] bArr = new byte[4];
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 4);
        int i2 = pushbackInputStream.read(bArr, 0, bArr.length);
        if (bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
            str = "UTF-8";
            i = i2 - 3;
        } else if (bArr[0] == -2 && bArr[1] == -1) {
            str = CharEncoding.UTF_16BE;
            i = i2 - 2;
        } else if (bArr[0] == -1 && bArr[1] == -2) {
            str = CharEncoding.UTF_16LE;
            i = i2 - 2;
        } else if (bArr[0] == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) {
            str = "UTF-32BE";
            i = i2 - 4;
        } else if (bArr[0] == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0) {
            str = "UTF-32LE";
            i = i2 - 4;
        } else {
            i = i2;
        }
        if (i > 0) {
            pushbackInputStream.unread(bArr, i2 - i, i);
        } else if (i < -1) {
            pushbackInputStream.unread(bArr, 0, 0);
        }
        if (str == null) {
            this.internalInputStreamReader = new InputStreamReader(pushbackInputStream);
        } else {
            this.internalInputStreamReader = new InputStreamReader(pushbackInputStream, str);
        }
    }

    public String getDefaultEncoding() {
        return this.defaultEnc;
    }

    public String getEncoding() {
        return this.internalInputStreamReader.getEncoding();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.internalInputStreamReader.close();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        return this.internalInputStreamReader.read(cArr, i, i2);
    }
}
