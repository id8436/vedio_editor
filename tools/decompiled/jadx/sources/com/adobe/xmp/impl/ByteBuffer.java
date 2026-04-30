package com.adobe.xmp.impl;

import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.lang3.CharEncoding;

/* JADX INFO: loaded from: classes2.dex */
public class ByteBuffer {
    private byte[] buffer;
    private String encoding;
    private int length;

    public ByteBuffer(int i) {
        this.encoding = null;
        this.buffer = new byte[i];
        this.length = 0;
    }

    public ByteBuffer(byte[] bArr) {
        this.encoding = null;
        this.buffer = bArr;
        this.length = bArr.length;
    }

    public ByteBuffer(byte[] bArr, int i) {
        this.encoding = null;
        if (i > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("Valid length exceeds the buffer length.");
        }
        this.buffer = bArr;
        this.length = i;
    }

    public ByteBuffer(InputStream inputStream) throws IOException {
        this.encoding = null;
        this.length = 0;
        this.buffer = new byte[16384];
        while (true) {
            int i = inputStream.read(this.buffer, this.length, 16384);
            if (i > 0) {
                this.length += i;
                if (i == 16384) {
                    ensureCapacity(this.length + 16384);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public ByteBuffer(byte[] bArr, int i, int i2) {
        this.encoding = null;
        if (i2 > bArr.length - i) {
            throw new ArrayIndexOutOfBoundsException("Valid length exceeds the buffer length.");
        }
        this.buffer = new byte[i2];
        System.arraycopy(bArr, i, this.buffer, 0, i2);
        this.length = i2;
    }

    public InputStream getByteStream() {
        return new ByteArrayInputStream(this.buffer, 0, this.length);
    }

    public int length() {
        return this.length;
    }

    public byte byteAt(int i) {
        if (i < this.length) {
            return this.buffer[i];
        }
        throw new IndexOutOfBoundsException("The index exceeds the valid buffer area");
    }

    public int charAt(int i) {
        if (i < this.length) {
            return this.buffer[i] & UnsignedBytes.MAX_VALUE;
        }
        throw new IndexOutOfBoundsException("The index exceeds the valid buffer area");
    }

    public void append(byte b2) {
        ensureCapacity(this.length + 1);
        byte[] bArr = this.buffer;
        int i = this.length;
        this.length = i + 1;
        bArr[i] = b2;
    }

    public void append(byte[] bArr, int i, int i2) {
        ensureCapacity(this.length + i2);
        System.arraycopy(bArr, i, this.buffer, this.length, i2);
        this.length += i2;
    }

    public void append(byte[] bArr) {
        append(bArr, 0, bArr.length);
    }

    public void append(ByteBuffer byteBuffer) {
        append(byteBuffer.buffer, 0, byteBuffer.length);
    }

    public String getEncoding() {
        if (this.encoding == null) {
            if (this.length < 2) {
                this.encoding = "UTF-8";
            } else if (this.buffer[0] == 0) {
                if (this.length < 4 || this.buffer[1] != 0) {
                    this.encoding = CharEncoding.UTF_16BE;
                } else if ((this.buffer[2] & UnsignedBytes.MAX_VALUE) == 254 && (this.buffer[3] & UnsignedBytes.MAX_VALUE) == 255) {
                    this.encoding = "UTF-32BE";
                } else {
                    this.encoding = "UTF-32";
                }
            } else if ((this.buffer[0] & UnsignedBytes.MAX_VALUE) < 128) {
                if (this.buffer[1] != 0) {
                    this.encoding = "UTF-8";
                } else if (this.length < 4 || this.buffer[2] != 0) {
                    this.encoding = CharEncoding.UTF_16LE;
                } else {
                    this.encoding = "UTF-32LE";
                }
            } else if ((this.buffer[0] & UnsignedBytes.MAX_VALUE) == 239) {
                this.encoding = "UTF-8";
            } else if ((this.buffer[0] & UnsignedBytes.MAX_VALUE) == 254 || this.length < 4 || this.buffer[2] != 0) {
                this.encoding = "UTF-16";
            } else {
                this.encoding = "UTF-32";
            }
        }
        return this.encoding;
    }

    private void ensureCapacity(int i) {
        if (i > this.buffer.length) {
            byte[] bArr = this.buffer;
            this.buffer = new byte[bArr.length * 2];
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
        }
    }
}
