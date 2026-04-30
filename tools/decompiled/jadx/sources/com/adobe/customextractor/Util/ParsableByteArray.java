package com.adobe.customextractor.Util;

import com.adobe.customextractor.Assertions;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class ParsableByteArray {
    public byte[] data;
    private int limit;
    private int position;

    public ParsableByteArray() {
    }

    public ParsableByteArray(int i) {
        this.data = new byte[i];
        this.limit = this.data.length;
    }

    public ParsableByteArray(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public ParsableByteArray(byte[] bArr, int i) {
        this.data = bArr;
        this.limit = i;
    }

    public void reset(byte[] bArr, int i) {
        this.data = bArr;
        this.limit = i;
        this.position = 0;
    }

    public void reset() {
        this.position = 0;
        this.limit = 0;
    }

    public int bytesLeft() {
        return this.limit - this.position;
    }

    public int limit() {
        return this.limit;
    }

    public void setLimit(int i) {
        Assertions.checkArgument(i >= 0 && i <= this.data.length);
        this.limit = i;
    }

    public int getPosition() {
        return this.position;
    }

    public int capacity() {
        if (this.data == null) {
            return 0;
        }
        return this.data.length;
    }

    public void setPosition(int i) {
        Assertions.checkArgument(i >= 0 && i <= this.limit);
        this.position = i;
    }

    public void skipBytes(int i) {
        setPosition(this.position + i);
    }

    public void readBytes(ParsableBitArray parsableBitArray, int i) {
        readBytes(parsableBitArray.data, 0, i);
        parsableBitArray.setPosition(0);
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        System.arraycopy(this.data, this.position, bArr, i, i2);
        this.position += i2;
    }

    public void readBytes(ByteBuffer byteBuffer, int i) {
        byteBuffer.put(this.data, this.position, i);
        this.position += i;
    }

    public int readUnsignedByte() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }

    public int readUnsignedShort() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & UnsignedBytes.MAX_VALUE) << 8;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        return i2 | (bArr2[i3] & UnsignedBytes.MAX_VALUE);
    }

    public int readUnsignedInt24() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & UnsignedBytes.MAX_VALUE) << 16;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & UnsignedBytes.MAX_VALUE) << 8);
        byte[] bArr3 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        return i4 | (bArr3[i5] & UnsignedBytes.MAX_VALUE);
    }

    public long readUnsignedInt() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        long j = (((long) bArr[i]) & 255) << 24;
        byte[] bArr2 = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = j | ((((long) bArr2[i2]) & 255) << 16);
        byte[] bArr3 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr3[i3]) & 255) << 8);
        byte[] bArr4 = this.data;
        int i4 = this.position;
        this.position = i4 + 1;
        return j3 | (((long) bArr4[i4]) & 255);
    }

    public int readInt() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & UnsignedBytes.MAX_VALUE) << 24;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & UnsignedBytes.MAX_VALUE) << 16);
        byte[] bArr3 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        int i6 = i4 | ((bArr3[i5] & UnsignedBytes.MAX_VALUE) << 8);
        byte[] bArr4 = this.data;
        int i7 = this.position;
        this.position = i7 + 1;
        return i6 | (bArr4[i7] & UnsignedBytes.MAX_VALUE);
    }

    public long readLong() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        long j = (((long) bArr[i]) & 255) << 56;
        byte[] bArr2 = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = j | ((((long) bArr2[i2]) & 255) << 48);
        byte[] bArr3 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr3[i3]) & 255) << 40);
        byte[] bArr4 = this.data;
        int i4 = this.position;
        this.position = i4 + 1;
        long j4 = j3 | ((((long) bArr4[i4]) & 255) << 32);
        byte[] bArr5 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        long j5 = j4 | ((((long) bArr5[i5]) & 255) << 24);
        byte[] bArr6 = this.data;
        int i6 = this.position;
        this.position = i6 + 1;
        long j6 = j5 | ((((long) bArr6[i6]) & 255) << 16);
        byte[] bArr7 = this.data;
        int i7 = this.position;
        this.position = i7 + 1;
        long j7 = j6 | ((((long) bArr7[i7]) & 255) << 8);
        byte[] bArr8 = this.data;
        int i8 = this.position;
        this.position = i8 + 1;
        return j7 | (((long) bArr8[i8]) & 255);
    }

    public int readUnsignedFixedPoint1616() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & UnsignedBytes.MAX_VALUE) << 8;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | (bArr2[i3] & UnsignedBytes.MAX_VALUE);
        this.position += 2;
        return i4;
    }

    public int readSynchSafeInt() {
        return (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7) | readUnsignedByte();
    }

    public int readUnsignedIntToInt() {
        int i = readInt();
        if (i < 0) {
            throw new IllegalStateException("Top bit not zero: " + i);
        }
        return i;
    }

    public long readUnsignedLongToLong() {
        long j = readLong();
        if (j < 0) {
            throw new IllegalStateException("Top bit not zero: " + j);
        }
        return j;
    }
}
