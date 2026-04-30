package com.google.android.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public final class CodecCounters {
    public int codecInitCount;
    public int codecReleaseCount;
    public int droppedOutputBufferCount;
    public int outputBuffersChangedCount;
    public int outputFormatChangedCount;
    public int renderedOutputBufferCount;
    public int skippedOutputBufferCount;

    public synchronized void ensureUpdated() {
    }

    public String getDebugString() {
        ensureUpdated();
        StringBuilder sb = new StringBuilder();
        sb.append("cic(").append(this.codecInitCount).append(")");
        sb.append("crc(").append(this.codecReleaseCount).append(")");
        sb.append("ofc(").append(this.outputFormatChangedCount).append(")");
        sb.append("obc(").append(this.outputBuffersChangedCount).append(")");
        sb.append("ren(").append(this.renderedOutputBufferCount).append(")");
        sb.append("sob(").append(this.skippedOutputBufferCount).append(")");
        sb.append("dob(").append(this.droppedOutputBufferCount).append(")");
        return sb.toString();
    }
}
