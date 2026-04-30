package com.adobe.decoderfactory;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class AudioReadData {
    private ByteBuffer buffer;
    private int dataSize;
    private boolean eof;
    private boolean error;
    private long noOfSamples;
    private long startSampleNumber;

    public AudioReadData(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
    }

    public void setAudioData(long j, long j2, boolean z, boolean z2, ByteBuffer byteBuffer) {
        this.startSampleNumber = j;
        this.noOfSamples = j2;
        this.eof = z;
        this.error = z2;
        this.dataSize = 0;
        if (this.buffer != null) {
            this.buffer.clear();
            this.dataSize = 0;
            if (byteBuffer != null) {
                this.dataSize = byteBuffer.limit() - byteBuffer.position();
                this.buffer.put(byteBuffer);
            }
            this.buffer.position(0);
            this.buffer.limit(this.dataSize);
        }
    }

    public long getStartSampleNumber() {
        return this.startSampleNumber;
    }

    public void setStartSampleNumber(long j) {
        this.startSampleNumber = j;
    }

    public long getNoOfSamples() {
        return this.noOfSamples;
    }

    public ByteBuffer getData() {
        return this.buffer;
    }

    public boolean hasError() {
        return this.error;
    }

    public boolean isEOF() {
        return this.eof;
    }

    public int getDataSize() {
        return this.dataSize;
    }
}
