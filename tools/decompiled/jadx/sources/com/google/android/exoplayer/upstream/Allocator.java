package com.google.android.exoplayer.upstream;

/* JADX INFO: loaded from: classes2.dex */
public interface Allocator {
    Allocation allocate(int i);

    int getAllocatedSize();

    void trim(int i);
}
