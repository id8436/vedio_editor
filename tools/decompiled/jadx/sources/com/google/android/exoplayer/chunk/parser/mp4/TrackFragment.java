package com.google.android.exoplayer.chunk.parser.mp4;

import com.google.android.exoplayer.upstream.NonBlockingInputStream;
import com.google.android.exoplayer.util.ParsableByteArray;

/* JADX INFO: loaded from: classes2.dex */
final class TrackFragment {
    public boolean definesEncryptionData;
    public int length;
    public int[] sampleCompositionTimeOffsetTable;
    public long[] sampleDecodingTimeTable;
    public int sampleDescriptionIndex;
    public ParsableByteArray sampleEncryptionData;
    public int sampleEncryptionDataLength;
    public boolean sampleEncryptionDataNeedsFill;
    public boolean[] sampleHasSubsampleEncryptionTable;
    public boolean[] sampleIsSyncFrameTable;
    public int[] sampleSizeTable;

    TrackFragment() {
    }

    public void reset() {
        this.length = 0;
        this.definesEncryptionData = false;
        this.sampleEncryptionDataNeedsFill = false;
    }

    public void initTables(int i) {
        this.length = i;
        if (this.sampleSizeTable == null || this.sampleSizeTable.length < this.length) {
            int i2 = (i * 125) / 100;
            this.sampleSizeTable = new int[i2];
            this.sampleCompositionTimeOffsetTable = new int[i2];
            this.sampleDecodingTimeTable = new long[i2];
            this.sampleIsSyncFrameTable = new boolean[i2];
            this.sampleHasSubsampleEncryptionTable = new boolean[i2];
        }
    }

    public void initEncryptionData(int i) {
        if (this.sampleEncryptionData == null || this.sampleEncryptionData.limit() < i) {
            this.sampleEncryptionData = new ParsableByteArray(i);
        }
        this.sampleEncryptionDataLength = i;
        this.definesEncryptionData = true;
        this.sampleEncryptionDataNeedsFill = true;
    }

    public void fillEncryptionData(ParsableByteArray parsableByteArray) {
        parsableByteArray.readBytes(this.sampleEncryptionData.data, 0, this.sampleEncryptionDataLength);
        this.sampleEncryptionData.setPosition(0);
        this.sampleEncryptionDataNeedsFill = false;
    }

    public boolean fillEncryptionData(NonBlockingInputStream nonBlockingInputStream) {
        if (nonBlockingInputStream.getAvailableByteCount() < this.sampleEncryptionDataLength) {
            return false;
        }
        nonBlockingInputStream.read(this.sampleEncryptionData.data, 0, this.sampleEncryptionDataLength);
        this.sampleEncryptionData.setPosition(0);
        this.sampleEncryptionDataNeedsFill = false;
        return true;
    }

    public long getSamplePresentationTime(int i) {
        return this.sampleDecodingTimeTable[i] + ((long) this.sampleCompositionTimeOffsetTable[i]);
    }
}
