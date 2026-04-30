package com.adobe.customextractor.Util.Allocate;

/* JADX INFO: loaded from: classes2.dex */
public interface Allocator {
    Allocation allocate();

    void blockWhileTotalBytesAllocatedExceeds(int i) throws InterruptedException;

    int getIndividualAllocationLength();

    int getTotalBytesAllocated();

    void release(Allocation allocation);

    boolean totalBytesAllocatedExceeds(int i);

    void trim(int i);
}
