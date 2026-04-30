package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class BufferPool implements Allocator {
    private static final int INITIAL_RECYCLED_BUFFERS_CAPACITY = 100;
    private int allocatedBufferCount;
    public final int bufferLength;
    private int recycledBufferCount;
    private byte[][] recycledBuffers;

    public BufferPool(int i) {
        Assertions.checkArgument(i > 0);
        this.bufferLength = i;
        this.recycledBuffers = new byte[100][];
    }

    @Override // com.google.android.exoplayer.upstream.Allocator
    public synchronized int getAllocatedSize() {
        return this.allocatedBufferCount * this.bufferLength;
    }

    @Override // com.google.android.exoplayer.upstream.Allocator
    public synchronized void trim(int i) {
        int iMax = Math.max(0, (((this.bufferLength + i) - 1) / this.bufferLength) - this.allocatedBufferCount);
        if (iMax < this.recycledBufferCount) {
            Arrays.fill(this.recycledBuffers, iMax, this.recycledBufferCount, (Object) null);
            this.recycledBufferCount = iMax;
        }
    }

    @Override // com.google.android.exoplayer.upstream.Allocator
    public synchronized Allocation allocate(int i) {
        return new AllocationImpl(allocate(i, (byte[][]) null));
    }

    synchronized byte[][] allocate(int i, byte[][] bArr) {
        int length = 0;
        synchronized (this) {
            int iRequiredBufferCount = requiredBufferCount(i);
            if (bArr == null || iRequiredBufferCount > bArr.length) {
                byte[][] bArr2 = new byte[iRequiredBufferCount][];
                if (bArr != null) {
                    length = bArr.length;
                    System.arraycopy(bArr, 0, bArr2, 0, length);
                }
                this.allocatedBufferCount += iRequiredBufferCount - length;
                while (length < iRequiredBufferCount) {
                    bArr2[length] = nextBuffer();
                    length++;
                }
                bArr = bArr2;
            }
        }
        return bArr;
    }

    public synchronized byte[] allocateDirect() {
        this.allocatedBufferCount++;
        return nextBuffer();
    }

    public synchronized void releaseDirect(byte[] bArr) {
        Assertions.checkArgument(bArr.length == this.bufferLength);
        this.allocatedBufferCount--;
        ensureRecycledBufferCapacity(this.recycledBufferCount + 1);
        byte[][] bArr2 = this.recycledBuffers;
        int i = this.recycledBufferCount;
        this.recycledBufferCount = i + 1;
        bArr2[i] = bArr;
    }

    synchronized void release(AllocationImpl allocationImpl) {
        byte[][] buffers = allocationImpl.getBuffers();
        this.allocatedBufferCount -= buffers.length;
        int length = this.recycledBufferCount + buffers.length;
        ensureRecycledBufferCapacity(length);
        System.arraycopy(buffers, 0, this.recycledBuffers, this.recycledBufferCount, buffers.length);
        this.recycledBufferCount = length;
    }

    private int requiredBufferCount(long j) {
        return (int) (((((long) this.bufferLength) + j) - 1) / ((long) this.bufferLength));
    }

    private byte[] nextBuffer() {
        if (this.recycledBufferCount <= 0) {
            return new byte[this.bufferLength];
        }
        byte[][] bArr = this.recycledBuffers;
        int i = this.recycledBufferCount - 1;
        this.recycledBufferCount = i;
        return bArr[i];
    }

    private void ensureRecycledBufferCapacity(int i) {
        if (this.recycledBuffers.length < i) {
            byte[][] bArr = new byte[i * 2][];
            if (this.recycledBufferCount > 0) {
                System.arraycopy(this.recycledBuffers, 0, bArr, 0, this.recycledBufferCount);
            }
            this.recycledBuffers = bArr;
        }
    }

    class AllocationImpl implements Allocation {
        private byte[][] buffers;

        public AllocationImpl(byte[][] bArr) {
            this.buffers = bArr;
        }

        @Override // com.google.android.exoplayer.upstream.Allocation
        public void ensureCapacity(int i) {
            this.buffers = BufferPool.this.allocate(i, this.buffers);
        }

        @Override // com.google.android.exoplayer.upstream.Allocation
        public int capacity() {
            return BufferPool.this.bufferLength * this.buffers.length;
        }

        @Override // com.google.android.exoplayer.upstream.Allocation
        public byte[][] getBuffers() {
            return this.buffers;
        }

        @Override // com.google.android.exoplayer.upstream.Allocation
        public int getFragmentOffset(int i) {
            return 0;
        }

        @Override // com.google.android.exoplayer.upstream.Allocation
        public int getFragmentLength(int i) {
            return BufferPool.this.bufferLength;
        }

        @Override // com.google.android.exoplayer.upstream.Allocation
        public void release() {
            if (this.buffers != null) {
                BufferPool.this.release(this);
                this.buffers = (byte[][]) null;
            }
        }
    }
}
