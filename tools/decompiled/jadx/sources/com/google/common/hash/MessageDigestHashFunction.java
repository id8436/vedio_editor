package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes3.dex */
final class MessageDigestHashFunction extends AbstractStreamingHashFunction implements Serializable {
    private final int bytes;
    private final MessageDigest prototype;
    private final boolean supportsClone;
    private final String toString;

    MessageDigestHashFunction(String str, String str2) {
        this.prototype = getMessageDigest(str);
        this.bytes = this.prototype.getDigestLength();
        this.toString = (String) Preconditions.checkNotNull(str2);
        this.supportsClone = supportsClone();
    }

    MessageDigestHashFunction(String str, int i, String str2) {
        this.toString = (String) Preconditions.checkNotNull(str2);
        this.prototype = getMessageDigest(str);
        int digestLength = this.prototype.getDigestLength();
        Preconditions.checkArgument(i >= 4 && i <= digestLength, "bytes (%s) must be >= 4 and < %s", Integer.valueOf(i), Integer.valueOf(digestLength));
        this.bytes = i;
        this.supportsClone = supportsClone();
    }

    private boolean supportsClone() {
        try {
            this.prototype.clone();
            return true;
        } catch (CloneNotSupportedException e2) {
            return false;
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.bytes * 8;
    }

    public String toString() {
        return this.toString;
    }

    private static MessageDigest getMessageDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        if (this.supportsClone) {
            try {
                return new MessageDigestHasher((MessageDigest) this.prototype.clone(), this.bytes);
            } catch (CloneNotSupportedException e2) {
            }
        }
        return new MessageDigestHasher(getMessageDigest(this.prototype.getAlgorithm()), this.bytes);
    }

    final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final String algorithmName;
        private final int bytes;
        private final String toString;

        private SerializedForm(String str, int i, String str2) {
            this.algorithmName = str;
            this.bytes = i;
            this.toString = str2;
        }

        private Object readResolve() {
            return new MessageDigestHashFunction(this.algorithmName, this.bytes, this.toString);
        }
    }

    Object writeReplace() {
        return new SerializedForm(this.prototype.getAlgorithm(), this.bytes, this.toString);
    }

    final class MessageDigestHasher extends AbstractByteHasher {
        private final int bytes;
        private final MessageDigest digest;
        private boolean done;

        private MessageDigestHasher(MessageDigest messageDigest, int i) {
            this.digest = messageDigest;
            this.bytes = i;
        }

        @Override // com.google.common.hash.AbstractByteHasher
        protected void update(byte b2) {
            checkNotDone();
            this.digest.update(b2);
        }

        @Override // com.google.common.hash.AbstractByteHasher
        protected void update(byte[] bArr) {
            checkNotDone();
            this.digest.update(bArr);
        }

        @Override // com.google.common.hash.AbstractByteHasher
        protected void update(byte[] bArr, int i, int i2) {
            checkNotDone();
            this.digest.update(bArr, i, i2);
        }

        private void checkNotDone() {
            Preconditions.checkState(!this.done, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            checkNotDone();
            this.done = true;
            return this.bytes == this.digest.getDigestLength() ? HashCode.fromBytesNoCopy(this.digest.digest()) : HashCode.fromBytesNoCopy(MessageDigestHashFunction.copyOf(this.digest.digest(), this.bytes));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] copyOf(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, Math.min(i, bArr.length));
        return bArr2;
    }
}
