package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.BloomFilter;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
enum BloomFilterStrategies implements BloomFilter.Strategy {
    MURMUR128_MITZ_32 { // from class: com.google.common.hash.BloomFilterStrategies.1
        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(T t, Funnel<? super T> funnel, int i, BitArray bitArray) {
            long jBitSize = bitArray.bitSize();
            long jAsLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
            int i2 = (int) jAsLong;
            int i3 = (int) (jAsLong >>> 32);
            boolean z = false;
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 ^= -1;
                }
                z |= bitArray.set(((long) i5) % jBitSize);
            }
            return z;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, BitArray bitArray) {
            long jBitSize = bitArray.bitSize();
            long jAsLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
            int i2 = (int) jAsLong;
            int i3 = (int) (jAsLong >>> 32);
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 ^= -1;
                }
                if (!bitArray.get(((long) i5) % jBitSize)) {
                    return false;
                }
            }
            return true;
        }
    },
    MURMUR128_MITZ_64 { // from class: com.google.common.hash.BloomFilterStrategies.2
        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(T t, Funnel<? super T> funnel, int i, BitArray bitArray) {
            long jBitSize = bitArray.bitSize();
            byte[] bytesInternal = Hashing.murmur3_128().hashObject(t, funnel).getBytesInternal();
            long jLowerEight = lowerEight(bytesInternal);
            long jUpperEight = upperEight(bytesInternal);
            boolean z = false;
            for (int i2 = 0; i2 < i; i2++) {
                z |= bitArray.set((Long.MAX_VALUE & jLowerEight) % jBitSize);
                jLowerEight += jUpperEight;
            }
            return z;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, BitArray bitArray) {
            long jBitSize = bitArray.bitSize();
            byte[] bytesInternal = Hashing.murmur3_128().hashObject(t, funnel).getBytesInternal();
            long jLowerEight = lowerEight(bytesInternal);
            long jUpperEight = upperEight(bytesInternal);
            for (int i2 = 0; i2 < i; i2++) {
                if (!bitArray.get((Long.MAX_VALUE & jLowerEight) % jBitSize)) {
                    return false;
                }
                jLowerEight += jUpperEight;
            }
            return true;
        }

        private long lowerEight(byte[] bArr) {
            return Longs.fromBytes(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long upperEight(byte[] bArr) {
            return Longs.fromBytes(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }
    };

    final class BitArray {
        long bitCount;
        final long[] data;

        BitArray(long j) {
            this(new long[Ints.checkedCast(LongMath.divide(j, 64L, RoundingMode.CEILING))]);
        }

        BitArray(long[] jArr) {
            Preconditions.checkArgument(jArr.length > 0, "data length is zero!");
            this.data = jArr;
            long jBitCount = 0;
            for (long j : jArr) {
                jBitCount += (long) Long.bitCount(j);
            }
            this.bitCount = jBitCount;
        }

        boolean set(long j) {
            if (get(j)) {
                return false;
            }
            long[] jArr = this.data;
            int i = (int) (j >>> 6);
            jArr[i] = jArr[i] | (1 << ((int) j));
            this.bitCount++;
            return true;
        }

        boolean get(long j) {
            return (this.data[(int) (j >>> 6)] & (1 << ((int) j))) != 0;
        }

        long bitSize() {
            return ((long) this.data.length) * 64;
        }

        long bitCount() {
            return this.bitCount;
        }

        BitArray copy() {
            return new BitArray((long[]) this.data.clone());
        }

        void putAll(BitArray bitArray) {
            Preconditions.checkArgument(this.data.length == bitArray.data.length, "BitArrays must be of equal length (%s != %s)", Integer.valueOf(this.data.length), Integer.valueOf(bitArray.data.length));
            this.bitCount = 0L;
            for (int i = 0; i < this.data.length; i++) {
                long[] jArr = this.data;
                jArr[i] = jArr[i] | bitArray.data[i];
                this.bitCount += (long) Long.bitCount(this.data[i]);
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof BitArray) {
                return Arrays.equals(this.data, ((BitArray) obj).data);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.data);
        }
    }
}
