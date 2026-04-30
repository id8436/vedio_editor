package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class DataSourceStream implements Loader.Loadable, NonBlockingInputStream {
    private static final int CHUNKED_ALLOCATION_INCREMENT = 262144;
    private Allocation allocation;
    private final Allocator allocator;
    private final DataSource dataSource;
    private final DataSpec dataSpec;
    private volatile boolean loadCanceled;
    private volatile long loadPosition;
    private final ReadHead readHead;
    private volatile long resolvedLength;
    private int writeFragmentIndex;
    private int writeFragmentOffset;
    private int writeFragmentRemainingLength;

    public class DataSourceStreamLoadException extends IOException {
        public DataSourceStreamLoadException(IOException iOException) {
            super(iOException);
        }
    }

    public DataSourceStream(DataSource dataSource, DataSpec dataSpec, Allocator allocator) {
        Assertions.checkState(dataSpec.length <= 2147483647L);
        this.dataSource = dataSource;
        this.dataSpec = dataSpec;
        this.allocator = allocator;
        this.resolvedLength = -1L;
        this.readHead = new ReadHead();
    }

    public void resetReadPosition() {
        this.readHead.reset();
    }

    public long getReadPosition() {
        return this.readHead.position;
    }

    public long getLoadPosition() {
        return this.loadPosition;
    }

    public long getLength() {
        return this.resolvedLength != -1 ? this.resolvedLength : this.dataSpec.length;
    }

    public boolean isLoadFinished() {
        return this.resolvedLength != -1 && this.loadPosition == this.resolvedLength;
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public long getAvailableByteCount() {
        return this.loadPosition - ((long) this.readHead.position);
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public boolean isEndOfStream() {
        return this.resolvedLength != -1 && ((long) this.readHead.position) == this.resolvedLength;
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public void close() {
        if (this.allocation != null) {
            this.allocation.release();
            this.allocation = null;
        }
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public int skip(int i) {
        return read(null, null, 0, this.readHead, i);
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public int read(ByteBuffer byteBuffer, int i) {
        return read(byteBuffer, null, 0, this.readHead, i);
    }

    @Override // com.google.android.exoplayer.upstream.NonBlockingInputStream
    public int read(byte[] bArr, int i, int i2) {
        return read(null, bArr, i, this.readHead, i2);
    }

    private int read(ByteBuffer byteBuffer, byte[] bArr, int i, ReadHead readHead, int i2) {
        if (isEndOfStream()) {
            return -1;
        }
        int iMin = (int) Math.min(this.loadPosition - ((long) readHead.position), i2);
        if (iMin == 0) {
            return 0;
        }
        if (readHead.position == 0) {
            readHead.fragmentIndex = 0;
            readHead.fragmentOffset = this.allocation.getFragmentOffset(0);
            readHead.fragmentRemaining = this.allocation.getFragmentLength(0);
        }
        byte[][] buffers = this.allocation.getBuffers();
        int i3 = 0;
        int i4 = i;
        while (i3 < iMin) {
            if (readHead.fragmentRemaining == 0) {
                ReadHead.access$208(readHead);
                readHead.fragmentOffset = this.allocation.getFragmentOffset(readHead.fragmentIndex);
                readHead.fragmentRemaining = this.allocation.getFragmentLength(readHead.fragmentIndex);
            }
            int iMin2 = Math.min(readHead.fragmentRemaining, iMin - i3);
            if (byteBuffer == null) {
                if (bArr != null) {
                    System.arraycopy(buffers[readHead.fragmentIndex], readHead.fragmentOffset, bArr, i4, iMin2);
                    i4 += iMin2;
                }
            } else {
                byteBuffer.put(buffers[readHead.fragmentIndex], readHead.fragmentOffset, iMin2);
            }
            readHead.position += iMin2;
            i3 += iMin2;
            readHead.fragmentOffset += iMin2;
            readHead.fragmentRemaining -= iMin2;
        }
        return i3;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void load() throws InterruptedException, IOException {
        if (!this.loadCanceled && !isLoadFinished()) {
            try {
                if (this.loadPosition == 0 && this.resolvedLength == -1) {
                    long jOpen = this.dataSource.open(this.dataSpec);
                    if (jOpen > 2147483647L) {
                        throw new DataSourceStreamLoadException(new UnexpectedLengthException(this.dataSpec.length, jOpen));
                    }
                    this.resolvedLength = jOpen;
                } else {
                    this.dataSource.open(new DataSpec(this.dataSpec.uri, this.dataSpec.position + this.loadPosition, this.resolvedLength != -1 ? this.resolvedLength - this.loadPosition : -1L, this.dataSpec.key));
                }
                if (this.allocation == null) {
                    this.allocation = this.allocator.allocate(this.resolvedLength != -1 ? (int) this.resolvedLength : 262144);
                }
                int iCapacity = this.allocation.capacity();
                if (this.loadPosition == 0) {
                    this.writeFragmentIndex = 0;
                    this.writeFragmentOffset = this.allocation.getFragmentOffset(0);
                    this.writeFragmentRemainingLength = this.allocation.getFragmentLength(0);
                }
                byte[][] buffers = this.allocation.getBuffers();
                int iCapacity2 = iCapacity;
                int i = Integer.MAX_VALUE;
                while (!this.loadCanceled && i > 0 && maybeMoreToLoad()) {
                    if (Thread.interrupted()) {
                        throw new InterruptedException();
                    }
                    i = this.dataSource.read(buffers[this.writeFragmentIndex], this.writeFragmentOffset, this.writeFragmentRemainingLength);
                    if (i > 0) {
                        this.loadPosition += (long) i;
                        this.writeFragmentOffset += i;
                        this.writeFragmentRemainingLength -= i;
                        if (this.writeFragmentRemainingLength == 0 && maybeMoreToLoad()) {
                            this.writeFragmentIndex++;
                            if (this.loadPosition == iCapacity2) {
                                this.allocation.ensureCapacity(iCapacity2 + 262144);
                                iCapacity2 = this.allocation.capacity();
                                buffers = this.allocation.getBuffers();
                            }
                            this.writeFragmentOffset = this.allocation.getFragmentOffset(this.writeFragmentIndex);
                            this.writeFragmentRemainingLength = this.allocation.getFragmentLength(this.writeFragmentIndex);
                        }
                    } else if (this.resolvedLength == -1) {
                        this.resolvedLength = this.loadPosition;
                    } else if (this.resolvedLength != this.loadPosition) {
                        throw new DataSourceStreamLoadException(new UnexpectedLengthException(this.resolvedLength, this.loadPosition));
                    }
                }
            } finally {
                Util.closeQuietly(this.dataSource);
            }
        }
    }

    private boolean maybeMoreToLoad() {
        return this.resolvedLength == -1 || this.loadPosition < this.resolvedLength;
    }

    class ReadHead {
        private int fragmentIndex;
        private int fragmentOffset;
        private int fragmentRemaining;
        private int position;

        private ReadHead() {
        }

        static /* synthetic */ int access$208(ReadHead readHead) {
            int i = readHead.fragmentIndex;
            readHead.fragmentIndex = i + 1;
            return i;
        }

        public void reset() {
            this.position = 0;
            this.fragmentIndex = 0;
            this.fragmentOffset = 0;
            this.fragmentRemaining = 0;
        }
    }
}
