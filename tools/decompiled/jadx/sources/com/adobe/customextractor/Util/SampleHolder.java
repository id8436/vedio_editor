package com.adobe.customextractor.Util;

import com.adobe.customextractor.Constants;
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

    public boolean isEncrypted() {
        return (this.flags & 2) != 0;
    }

    public boolean isDecodeOnly() {
        return (this.flags & Constants.SAMPLE_FLAG_DECODE_ONLY) != 0;
    }

    public boolean isSyncFrame() {
        return (this.flags & 1) != 0;
    }

    public void clearData() {
        if (this.data != null) {
            this.data.clear();
        }
    }
}
