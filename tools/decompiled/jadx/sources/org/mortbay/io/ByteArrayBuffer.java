package org.mortbay.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.mortbay.io.Buffer;

/* JADX INFO: loaded from: classes3.dex */
public class ByteArrayBuffer extends AbstractBuffer {
    protected byte[] _bytes;

    protected ByteArrayBuffer(int i, boolean z) {
        super(i, z);
    }

    public ByteArrayBuffer(byte[] bArr) {
        this(bArr, 0, bArr.length, 2);
    }

    public ByteArrayBuffer(byte[] bArr, int i, int i2) {
        this(bArr, i, i2, 2);
    }

    public ByteArrayBuffer(byte[] bArr, int i, int i2, int i3) {
        super(2, false);
        this._bytes = bArr;
        setPutIndex(i + i2);
        setGetIndex(i);
        this._access = i3;
    }

    public ByteArrayBuffer(byte[] bArr, int i, int i2, int i3, boolean z) {
        super(2, z);
        this._bytes = bArr;
        setPutIndex(i + i2);
        setGetIndex(i);
        this._access = i3;
    }

    public ByteArrayBuffer(int i) {
        this(new byte[i], 0, i, 2);
        setPutIndex(0);
    }

    public ByteArrayBuffer(String str) {
        super(2, false);
        this._bytes = Portable.getBytes(str);
        setGetIndex(0);
        setPutIndex(this._bytes.length);
        this._access = 0;
        this._string = str;
    }

    public ByteArrayBuffer(String str, String str2) throws UnsupportedEncodingException {
        super(2, false);
        this._bytes = str.getBytes(str2);
        setGetIndex(0);
        setPutIndex(this._bytes.length);
        this._access = 0;
        this._string = str;
    }

    @Override // org.mortbay.io.Buffer
    public byte[] array() {
        return this._bytes;
    }

    @Override // org.mortbay.io.Buffer
    public int capacity() {
        return this._bytes.length;
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public void compact() {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        int iMarkIndex = markIndex() >= 0 ? markIndex() : getIndex();
        if (iMarkIndex > 0) {
            int iPutIndex = putIndex() - iMarkIndex;
            if (iPutIndex > 0) {
                Portable.arraycopy(this._bytes, iMarkIndex, this._bytes, 0, iPutIndex);
            }
            if (markIndex() > 0) {
                setMarkIndex(markIndex() - iMarkIndex);
            }
            setGetIndex(getIndex() - iMarkIndex);
            setPutIndex(putIndex() - iMarkIndex);
        }
    }

    @Override // org.mortbay.io.AbstractBuffer
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof Buffer)) {
            return false;
        }
        if (obj instanceof Buffer.CaseInsensitve) {
            return equalsIgnoreCase((Buffer) obj);
        }
        Buffer buffer = (Buffer) obj;
        if (buffer.length() != length()) {
            return false;
        }
        if (this._hash != 0 && (obj instanceof AbstractBuffer)) {
            AbstractBuffer abstractBuffer = (AbstractBuffer) obj;
            if (abstractBuffer._hash != 0 && this._hash != abstractBuffer._hash) {
                return false;
            }
        }
        int index = getIndex();
        int iPutIndex = buffer.putIndex();
        int iPutIndex2 = putIndex();
        int i = iPutIndex;
        while (true) {
            int i2 = iPutIndex2 - 1;
            if (iPutIndex2 <= index) {
                return true;
            }
            int i3 = i - 1;
            if (this._bytes[i2] != buffer.peek(i3)) {
                return false;
            }
            i = i3;
            iPutIndex2 = i2;
        }
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public boolean equalsIgnoreCase(Buffer buffer) {
        if (buffer == this) {
            return true;
        }
        if (buffer == null || buffer.length() != length()) {
            return false;
        }
        if (this._hash != 0 && (buffer instanceof AbstractBuffer)) {
            AbstractBuffer abstractBuffer = (AbstractBuffer) buffer;
            if (abstractBuffer._hash != 0 && this._hash != abstractBuffer._hash) {
                return false;
            }
        }
        int index = getIndex();
        int iPutIndex = buffer.putIndex();
        byte[] bArrArray = buffer.array();
        if (bArrArray == null) {
            int iPutIndex2 = putIndex();
            int i = iPutIndex;
            while (true) {
                int i2 = iPutIndex2 - 1;
                if (iPutIndex2 <= index) {
                    break;
                }
                byte b2 = this._bytes[i2];
                i--;
                byte bPeek = buffer.peek(i);
                if (b2 != bPeek) {
                    if (97 <= b2 && b2 <= 122) {
                        b2 = (byte) ((b2 - 97) + 65);
                    }
                    if (97 <= bPeek && bPeek <= 122) {
                        bPeek = (byte) ((bPeek - 97) + 65);
                    }
                    if (b2 != bPeek) {
                        return false;
                    }
                }
                iPutIndex2 = i2;
            }
        } else {
            int iPutIndex3 = putIndex();
            int i3 = iPutIndex;
            while (true) {
                int i4 = iPutIndex3 - 1;
                if (iPutIndex3 <= index) {
                    break;
                }
                byte b3 = this._bytes[i4];
                i3--;
                byte b4 = bArrArray[i3];
                if (b3 != b4) {
                    if (97 <= b3 && b3 <= 122) {
                        b3 = (byte) ((b3 - 97) + 65);
                    }
                    if (97 <= b4 && b4 <= 122) {
                        b4 = (byte) ((b4 - 97) + 65);
                    }
                    if (b3 != b4) {
                        return false;
                    }
                }
                iPutIndex3 = i4;
            }
        }
        return true;
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public byte get() {
        byte[] bArr = this._bytes;
        int i = this._get;
        this._get = i + 1;
        return bArr[i];
    }

    @Override // org.mortbay.io.AbstractBuffer
    public int hashCode() {
        if (this._hash == 0 || this._hashGet != this._get || this._hashPut != this._put) {
            int index = getIndex();
            int iPutIndex = putIndex();
            while (true) {
                int i = iPutIndex - 1;
                if (iPutIndex <= index) {
                    break;
                }
                byte b2 = this._bytes[i];
                if (97 <= b2 && b2 <= 122) {
                    b2 = (byte) ((b2 - 97) + 65);
                }
                this._hash = b2 + (this._hash * 31);
                iPutIndex = i;
            }
            if (this._hash == 0) {
                this._hash = -1;
            }
            this._hashGet = this._get;
            this._hashPut = this._put;
        }
        return this._hash;
    }

    @Override // org.mortbay.io.Buffer
    public byte peek(int i) {
        return this._bytes[i];
    }

    @Override // org.mortbay.io.Buffer
    public int peek(int i, byte[] bArr, int i2, int i3) {
        int iCapacity;
        if (i + i3 > capacity()) {
            iCapacity = capacity() - i;
            if (iCapacity == 0) {
                return -1;
            }
        } else {
            iCapacity = i3;
        }
        if (iCapacity < 0) {
            return -1;
        }
        Portable.arraycopy(this._bytes, i, bArr, i2, iCapacity);
        return iCapacity;
    }

    @Override // org.mortbay.io.Buffer
    public void poke(int i, byte b2) {
        this._bytes[i] = b2;
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public int poke(int i, Buffer buffer) {
        int i2 = 0;
        this._hash = 0;
        int length = buffer.length();
        if (i + length > capacity()) {
            length = capacity() - i;
        }
        byte[] bArrArray = buffer.array();
        if (bArrArray != null) {
            Portable.arraycopy(bArrArray, buffer.getIndex(), this._bytes, i, length);
        } else if (bArrArray != null) {
            int index = buffer.getIndex();
            while (i2 < length) {
                poke(i, bArrArray[index]);
                i2++;
                index++;
                i++;
            }
        } else {
            int index2 = buffer.getIndex();
            while (i2 < length) {
                this._bytes[i] = buffer.peek(index2);
                i2++;
                index2++;
                i++;
            }
        }
        return length;
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public int poke(int i, byte[] bArr, int i2, int i3) {
        this._hash = 0;
        if (i + i3 > capacity()) {
            i3 = capacity() - i;
        }
        Portable.arraycopy(bArr, i2, this._bytes, i, i3);
        return i3;
    }

    public void wrap(byte[] bArr, int i, int i2) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        if (isImmutable()) {
            throw new IllegalStateException("IMMUTABLE");
        }
        this._bytes = bArr;
        clear();
        setGetIndex(i);
        setPutIndex(i + i2);
    }

    public void wrap(byte[] bArr) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        if (isImmutable()) {
            throw new IllegalStateException("IMMUTABLE");
        }
        this._bytes = bArr;
        setGetIndex(0);
        setPutIndex(bArr.length);
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(this._bytes, getIndex(), length());
        clear();
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public int readFrom(InputStream inputStream, int i) throws IOException {
        int i2;
        int i3;
        int i4 = 0;
        if (i < 0 || i > space()) {
            i = space();
        }
        int iPutIndex = putIndex();
        int i5 = i;
        int i6 = 0;
        while (true) {
            if (i4 >= i) {
                i2 = i4;
                i3 = i6;
                break;
            }
            i6 = inputStream.read(this._bytes, iPutIndex, i5);
            if (i6 < 0) {
                i2 = i4;
                i3 = i6;
                break;
            }
            if (i6 > 0) {
                iPutIndex += i6;
                i4 += i6;
                i5 -= i6;
                setPutIndex(iPutIndex);
            }
            if (inputStream.available() <= 0) {
                i2 = i4;
                i3 = i6;
                break;
            }
        }
        if (i3 < 0 && i2 == 0) {
            return -1;
        }
        return i2;
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public int space() {
        return this._bytes.length - this._put;
    }

    public class CaseInsensitive extends ByteArrayBuffer implements Buffer.CaseInsensitve {
        public CaseInsensitive(String str) {
            super(str);
        }

        public CaseInsensitive(byte[] bArr, int i, int i2, int i3) {
            super(bArr, i, i2, i3);
        }

        @Override // org.mortbay.io.ByteArrayBuffer, org.mortbay.io.AbstractBuffer
        public boolean equals(Object obj) {
            return equalsIgnoreCase((Buffer) obj);
        }
    }
}
