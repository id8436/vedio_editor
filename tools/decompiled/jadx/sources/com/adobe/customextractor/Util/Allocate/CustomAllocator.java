package com.adobe.customextractor.Util.Allocate;

import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.Util.Utilities;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomAllocator implements Allocator {
    private static final int INITIAL_RECYCLED_ALLOCATION_CAPACITY = 100;
    private int allocatedCount;
    private final int individualAllocationSize;
    private Allocation[] recycledAllocations;
    private int recycledCount;

    public CustomAllocator(int i) {
        Assertions.checkArgument(i > 0);
        this.individualAllocationSize = i;
        this.recycledAllocations = new Allocation[100];
    }

    @Override // com.adobe.customextractor.Util.Allocate.Allocator
    public synchronized Allocation allocate() {
        Allocation allocation;
        this.allocatedCount++;
        if (this.recycledCount > 0) {
            Allocation[] allocationArr = this.recycledAllocations;
            int i = this.recycledCount - 1;
            this.recycledCount = i;
            allocation = allocationArr[i];
        } else {
            allocation = new Allocation(new byte[this.individualAllocationSize], 0);
        }
        return allocation;
    }

    @Override // com.adobe.customextractor.Util.Allocate.Allocator
    public synchronized void release(Allocation allocation) {
        Assertions.checkArgument(allocation.data.length == this.individualAllocationSize);
        this.allocatedCount--;
        if (this.recycledCount == this.recycledAllocations.length) {
            this.recycledAllocations = (Allocation[]) Arrays.copyOf(this.recycledAllocations, this.recycledAllocations.length * 2);
        }
        Allocation[] allocationArr = this.recycledAllocations;
        int i = this.recycledCount;
        this.recycledCount = i + 1;
        allocationArr[i] = allocation;
        notifyAll();
    }

    @Override // com.adobe.customextractor.Util.Allocate.Allocator
    public synchronized void trim(int i) {
        int iMax = Math.max(0, Utilities.ceilDivide(i, this.individualAllocationSize) - this.allocatedCount);
        if (iMax < this.recycledCount) {
            Arrays.fill(this.recycledAllocations, iMax, this.recycledCount, (Object) null);
            this.recycledCount = iMax;
        }
    }

    @Override // com.adobe.customextractor.Util.Allocate.Allocator
    public synchronized int getTotalBytesAllocated() {
        return this.allocatedCount * this.individualAllocationSize;
    }

    @Override // com.adobe.customextractor.Util.Allocate.Allocator
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // com.adobe.customextractor.Util.Allocate.Allocator
    public synchronized void blockWhileTotalBytesAllocatedExceeds(int i) throws InterruptedException {
        while (getTotalBytesAllocated() > i) {
            wait();
        }
    }

    @Override // com.adobe.customextractor.Util.Allocate.Allocator
    public boolean totalBytesAllocatedExceeds(int i) {
        return getTotalBytesAllocated() > i;
    }
}
