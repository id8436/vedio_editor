package com.adobe.customextractor.Util;

import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes2.dex */
public final class ParsableBitArray {
    private int bitOffset;
    private int byteOffset;
    public byte[] data;

    public ParsableBitArray() {
    }

    public ParsableBitArray(byte[] bArr) {
        this.data = bArr;
    }

    public void reset(byte[] bArr) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public void setPosition(int i) {
        this.byteOffset = i / 8;
        this.bitOffset = i - (this.byteOffset * 8);
    }

    public void skipBits(int i) {
        this.byteOffset += i / 8;
        this.bitOffset += i % 8;
        if (this.bitOffset > 7) {
            this.byteOffset++;
            this.bitOffset -= 8;
        }
    }

    public boolean readBit() {
        return readBits(1) == 1;
    }

    public int readBits(int i) {
        int unsignedByte = 0;
        if (i != 0) {
            while (i >= 8) {
                i -= 8;
                unsignedByte |= readUnsignedByte() << i;
            }
            if (i > 0) {
                int i2 = this.bitOffset + i;
                byte b2 = (byte) (255 >> (8 - i));
                if (i2 > 8) {
                    unsignedByte |= b2 & ((getUnsignedByte(this.byteOffset) << (i2 - 8)) | (getUnsignedByte(this.byteOffset + 1) >> (16 - i2)));
                    this.byteOffset++;
                } else {
                    unsignedByte |= b2 & (getUnsignedByte(this.byteOffset) >> (8 - i2));
                    if (i2 == 8) {
                        this.byteOffset++;
                    }
                }
                this.bitOffset = i2 % 8;
            }
        }
        return unsignedByte;
    }

    public int readUnsignedExpGolombCodedInt() {
        return readExpGolombCodeNum();
    }

    public int readSignedExpGolombCodedInt() {
        int expGolombCodeNum = readExpGolombCodeNum();
        return (expGolombCodeNum % 2 == 0 ? -1 : 1) * ((expGolombCodeNum + 1) / 2);
    }

    private int readUnsignedByte() {
        int i;
        if (this.bitOffset != 0) {
            i = ((this.data[this.byteOffset] & UnsignedBytes.MAX_VALUE) << this.bitOffset) | ((this.data[this.byteOffset + 1] & UnsignedBytes.MAX_VALUE) >>> (8 - this.bitOffset));
        } else {
            i = this.data[this.byteOffset];
        }
        this.byteOffset++;
        return i & 255;
    }

    private int getUnsignedByte(int i) {
        return this.data[i] & UnsignedBytes.MAX_VALUE;
    }

    private int readExpGolombCodeNum() {
        int i = 0;
        while (!readBit()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? readBits(i) : 0);
    }
}
