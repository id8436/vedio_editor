package com.google.common.hash;

import com.google.common.hash.AbstractStreamingHashFunction;
import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class Murmur3_128HashFunction extends AbstractStreamingHashFunction implements Serializable {
    private static final long serialVersionUID = 0;
    private final int seed;

    Murmur3_128HashFunction(int i) {
        this.seed = i;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 128;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new Murmur3_128Hasher(this.seed);
    }

    public String toString() {
        return "Hashing.murmur3_128(" + this.seed + ")";
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Murmur3_128HashFunction) && this.seed == ((Murmur3_128HashFunction) obj).seed;
    }

    public int hashCode() {
        return getClass().hashCode() ^ this.seed;
    }

    final class Murmur3_128Hasher extends AbstractStreamingHashFunction.AbstractStreamingHasher {
        private static final long C1 = -8663945395140668459L;
        private static final long C2 = 5545529020109919103L;
        private static final int CHUNK_SIZE = 16;
        private long h1;
        private long h2;
        private int length;

        Murmur3_128Hasher(int i) {
            super(16);
            this.h1 = i;
            this.h2 = i;
            this.length = 0;
        }

        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        protected void process(ByteBuffer byteBuffer) {
            bmix64(byteBuffer.getLong(), byteBuffer.getLong());
            this.length += 16;
        }

        private void bmix64(long j, long j2) {
            this.h1 ^= mixK1(j);
            this.h1 = Long.rotateLeft(this.h1, 27);
            this.h1 += this.h2;
            this.h1 = (this.h1 * 5) + 1390208809;
            this.h2 ^= mixK2(j2);
            this.h2 = Long.rotateLeft(this.h2, 31);
            this.h2 += this.h1;
            this.h2 = (this.h2 * 5) + 944331445;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        protected void processRemaining(ByteBuffer byteBuffer) {
            long j;
            long j2 = 0;
            long j3 = 0;
            this.length += byteBuffer.remaining();
            switch (byteBuffer.remaining()) {
                case 1:
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 2:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 3:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 4:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 5:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 6:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(5))) << 40;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 7:
                    j2 = 0 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(6))) << 48);
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(5))) << 40;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 8:
                    j = 0 ^ byteBuffer.getLong();
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 9:
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 10:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 11:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 12:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 13:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 14:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(13))) << 40;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                case 15:
                    j3 = 0 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(14))) << 48);
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(13))) << 40;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.h1 = mixK1(j) ^ this.h1;
                    this.h2 = mixK2(j3) ^ this.h2;
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }

        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public HashCode makeHash() {
            this.h1 ^= (long) this.length;
            this.h2 ^= (long) this.length;
            this.h1 += this.h2;
            this.h2 += this.h1;
            this.h1 = fmix64(this.h1);
            this.h2 = fmix64(this.h2);
            this.h1 += this.h2;
            this.h2 += this.h1;
            return HashCode.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.h1).putLong(this.h2).array());
        }

        private static long fmix64(long j) {
            long j2 = ((j >>> 33) ^ j) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        private static long mixK1(long j) {
            return Long.rotateLeft(C1 * j, 31) * C2;
        }

        private static long mixK2(long j) {
            return Long.rotateLeft(C2 * j, 33) * C1;
        }
    }
}
