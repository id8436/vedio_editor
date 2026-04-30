package com.adobe.customextractor.Util.Allocate;

/* JADX INFO: loaded from: classes2.dex */
public final class Allocation {
    public final byte[] data;
    private final int offset;

    public Allocation(byte[] bArr, int i) {
        this.data = bArr;
        this.offset = i;
    }

    public int translateOffset(int i) {
        return this.offset + i;
    }
}
