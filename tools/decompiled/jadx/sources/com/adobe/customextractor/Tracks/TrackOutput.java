package com.adobe.customextractor.Tracks;

import com.adobe.customextractor.Util.Media.MediaFormat;
import com.adobe.customextractor.Util.ParsableByteArray;
import com.adobe.customextractor.extractor.Input.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface TrackOutput {
    void format(MediaFormat mediaFormat);

    int sampleData(ExtractorInput extractorInput, int i) throws InterruptedException, IOException;

    void sampleData(ParsableByteArray parsableByteArray, int i);

    void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr);
}
