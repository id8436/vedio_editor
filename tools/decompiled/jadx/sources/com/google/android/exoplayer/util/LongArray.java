package com.google.android.exoplayer.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class LongArray {
    private static final int DEFAULT_INITIAL_CAPACITY = 32;
    private int size;
    private long[] values;

    public LongArray() {
        this(32);
    }

    public LongArray(int i) {
        this.values = new long[i];
    }

    public void add(long j) {
        if (this.size == this.values.length) {
            this.values = Arrays.copyOf(this.values, this.size * 2);
        }
        long[] jArr = this.values;
        int i = this.size;
        this.size = i + 1;
        jArr[i] = j;
    }

    public long get(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException("Invalid size " + i + ", size is " + this.size);
        }
        return this.values[i];
    }

    public int size() {
        return this.size;
    }
}
