package com.google.android.exoplayer;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class SampleHolder {
    public static final int BUFFER_REPLACEMENT_MODE_DIRECT = 2;
    public static final int BUFFER_REPLACEMENT_MODE_DISABLED = 0;
    public static final int BUFFER_REPLACEMENT_MODE_NORMAL = 1;
    private final int bufferReplacementMode;
    public final CryptoInfo cryptoInfo = new CryptoInfo();
    public ByteBuffer data;
    public boolean decodeOnly;
    public int flags;
    public int size;
    public long timeUs;

    public SampleHolder(int i) {
        this.bufferReplacementMode = i;
    }

    public boolean replaceBuffer(int i) {
        switch (this.bufferReplacementMode) {
            case 1:
                this.data = ByteBuffer.allocate(i);
                break;
            case 2:
                this.data = ByteBuffer.allocateDirect(i);
                break;
        }
        return true;
    }

    public void clearData() {
        if (this.data != null) {
            this.data.clear();
        }
    }
}
