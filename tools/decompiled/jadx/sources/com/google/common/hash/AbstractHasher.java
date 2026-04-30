package com.google.common.hash;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
abstract class AbstractHasher implements Hasher {
    AbstractHasher() {
    }

    @Override // com.google.common.hash.PrimitiveSink
    public final Hasher putBoolean(boolean z) {
        return putByte(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.common.hash.PrimitiveSink
    public final Hasher putDouble(double d2) {
        return putLong(Double.doubleToRawLongBits(d2));
    }

    @Override // com.google.common.hash.PrimitiveSink
    public final Hasher putFloat(float f2) {
        return putInt(Float.floatToRawIntBits(f2));
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putUnencodedChars(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            putChar(charSequence.charAt(i));
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putString(CharSequence charSequence, Charset charset) {
        try {
            return putBytes(charSequence.toString().getBytes(charset.name()));
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
