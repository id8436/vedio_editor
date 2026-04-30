package com.google.android.exoplayer.util;

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

    public void skip(int i) {
        setPosition(this.position + i);
    }

    public void readBytes(ParsableBitArray parsableBitArray, int i) {
        readBytes(parsableBitArray.getData(), 0, i);
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
        int iShiftIntoInt = shiftIntoInt(this.data, this.position, 1);
        this.position++;
        return iShiftIntoInt;
    }

    public int readUnsignedShort() {
        int iShiftIntoInt = shiftIntoInt(this.data, this.position, 2);
        this.position += 2;
        return iShiftIntoInt;
    }

    public long readUnsignedInt() {
        long jShiftIntoLong = shiftIntoLong(this.data, this.position, 4);
        this.position += 4;
        return jShiftIntoLong;
    }

    public int readInt() {
        int iShiftIntoInt = shiftIntoInt(this.data, this.position, 4);
        this.position += 4;
        return iShiftIntoInt;
    }

    public long readLong() {
        long jShiftIntoLong = shiftIntoLong(this.data, this.position, 8);
        this.position += 8;
        return jShiftIntoLong;
    }

    public int readUnsignedFixedPoint1616() {
        int iShiftIntoInt = shiftIntoInt(this.data, this.position, 2);
        this.position += 4;
        return iShiftIntoInt;
    }

    public int readSynchSafeInt() {
        return (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7) | readUnsignedByte();
    }

    public int readUnsignedIntToInt() {
        int iShiftIntoInt = shiftIntoInt(this.data, this.position, 4);
        this.position += 4;
        if (iShiftIntoInt < 0) {
            throw new IllegalArgumentException("Top bit not zero: " + iShiftIntoInt);
        }
        return iShiftIntoInt;
    }

    public long readUnsignedLongToLong() {
        long jShiftIntoLong = shiftIntoLong(this.data, this.position, 8);
        this.position += 8;
        if (jShiftIntoLong < 0) {
            throw new IllegalArgumentException("Top bit not zero: " + jShiftIntoLong);
        }
        return jShiftIntoLong;
    }

    private static int shiftIntoInt(byte[] bArr, int i, int i2) {
        int i3 = bArr[i] & UnsignedBytes.MAX_VALUE;
        for (int i4 = i + 1; i4 < i + i2; i4++) {
            i3 = (i3 << 8) | (bArr[i4] & UnsignedBytes.MAX_VALUE);
        }
        return i3;
    }

    private static long shiftIntoLong(byte[] bArr, int i, int i2) {
        long j = bArr[i] & UnsignedBytes.MAX_VALUE;
        for (int i3 = i + 1; i3 < i + i2; i3++) {
            j = (j << 8) | ((long) (bArr[i3] & UnsignedBytes.MAX_VALUE));
        }
        return j;
    }
}
