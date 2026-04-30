package com.google.android.exoplayer.upstream;

/* JADX INFO: loaded from: classes2.dex */
public interface Allocation {
    int capacity();

    void ensureCapacity(int i);

    byte[][] getBuffers();

    int getFragmentLength(int i);

    int getFragmentOffset(int i);

    void release();
}
