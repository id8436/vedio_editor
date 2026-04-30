package com.google.android.exoplayer.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class UnexpectedLengthException extends IOException {
    public final long actualLength;
    public final long expectedLength;

    public UnexpectedLengthException(long j, long j2) {
        super("Expected: " + j + ", got: " + j2);
        this.expectedLength = j;
        this.actualLength = j2;
    }
}
