package com.adobe.customextractor.extractor.Input;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface ExtractorInput {
    long getLength();

    long getPosition();

    int read(byte[] bArr, int i, int i2) throws InterruptedException, IOException;

    void readFully(byte[] bArr, int i, int i2) throws InterruptedException, IOException;

    boolean readFully(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException;

    void skipFully(int i) throws InterruptedException, IOException;
}
