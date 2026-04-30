package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.AbstractStreamingHashFunction;
import java.io.Serializable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class SipHashFunction extends AbstractStreamingHashFunction implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3177d;
    private final long k0;
    private final long k1;

    SipHashFunction(int i, int i2, long j, long j2) {
        Preconditions.checkArgument(i > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", Integer.valueOf(i));
        Preconditions.checkArgument(i2 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", Integer.valueOf(i2));
        this.f3176c = i;
        this.f3177d = i2;
        this.k0 = j;
        this.k1 = j2;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new SipHasher(this.f3176c, this.f3177d, this.k0, this.k1);
    }

    public String toString() {
        return "Hashing.sipHash" + this.f3176c + "" + this.f3177d + "(" + this.k0 + ", " + this.k1 + ")";
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SipHashFunction)) {
            return false;
        }
        SipHashFunction sipHashFunction = (SipHashFunction) obj;
        return this.f3176c == sipHashFunction.f3176c && this.f3177d == sipHashFunction.f3177d && this.k0 == sipHashFunction.k0 && this.k1 == sipHashFunction.k1;
    }

    public int hashCode() {
        return (int) ((((long) ((getClass().hashCode() ^ this.f3176c) ^ this.f3177d)) ^ this.k0) ^ this.k1);
    }

    final class SipHasher extends AbstractStreamingHashFunction.AbstractStreamingHasher {
        private static final int CHUNK_SIZE = 8;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f3178b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f3179c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f3180d;
        private long finalM;
        private long v0;
        private long v1;
        private long v2;
        private long v3;

        SipHasher(int i, int i2, long j, long j2) {
            super(8);
            this.v0 = 8317987319222330741L;
            this.v1 = 7237128888997146477L;
            this.v2 = 7816392313619706465L;
            this.v3 = 8387220255154660723L;
            this.f3178b = 0L;
            this.finalM = 0L;
            this.f3179c = i;
            this.f3180d = i2;
            this.v0 ^= j;
            this.v1 ^= j2;
            this.v2 ^= j;
            this.v3 ^= j2;
        }

        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        protected void process(ByteBuffer byteBuffer) {
            this.f3178b += 8;
            processM(byteBuffer.getLong());
        }

        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        protected void processRemaining(ByteBuffer byteBuffer) {
            this.f3178b += (long) byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.finalM ^= (((long) byteBuffer.get()) & 255) << i;
                i += 8;
            }
        }

        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public HashCode makeHash() {
            this.finalM ^= this.f3178b << 56;
            processM(this.finalM);
            this.v2 ^= 255;
            sipRound(this.f3180d);
            return HashCode.fromLong(((this.v0 ^ this.v1) ^ this.v2) ^ this.v3);
        }

        private void processM(long j) {
            this.v3 ^= j;
            sipRound(this.f3179c);
            this.v0 ^= j;
        }

        private void sipRound(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                this.v0 += this.v1;
                this.v2 += this.v3;
                this.v1 = Long.rotateLeft(this.v1, 13);
                this.v3 = Long.rotateLeft(this.v3, 16);
                this.v1 ^= this.v0;
                this.v3 ^= this.v2;
                this.v0 = Long.rotateLeft(this.v0, 32);
                this.v2 += this.v1;
                this.v0 += this.v3;
                this.v1 = Long.rotateLeft(this.v1, 17);
                this.v3 = Long.rotateLeft(this.v3, 21);
                this.v1 ^= this.v2;
                this.v3 ^= this.v0;
                this.v2 = Long.rotateLeft(this.v2, 32);
            }
        }
    }
}
