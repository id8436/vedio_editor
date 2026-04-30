package com.adobe.customextractor.extractor.Input;

import com.adobe.customextractor.DataSource.DataSource;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomExtractorInput implements ExtractorInput {
    private static final byte[] SCRATCH_SPACE = new byte[4096];
    private final DataSource dataSource;
    private long length;
    private long position;

    public CustomExtractorInput(DataSource dataSource, long j, long j2) {
        this.dataSource = dataSource;
        this.position = j;
        this.length = j2;
    }

    @Override // com.adobe.customextractor.extractor.Input.ExtractorInput
    public int read(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int i3 = this.dataSource.read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        this.position += (long) i3;
        return i3;
    }

    @Override // com.adobe.customextractor.extractor.Input.ExtractorInput
    public boolean readFully(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException {
        int i3 = i2;
        while (i3 > 0) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            int i4 = this.dataSource.read(bArr, i, i3);
            if (i4 == -1) {
                if (z && i3 == i2) {
                    return false;
                }
                throw new EOFException();
            }
            i += i4;
            i3 -= i4;
        }
        this.position += (long) i2;
        return true;
    }

    @Override // com.adobe.customextractor.extractor.Input.ExtractorInput
    public void readFully(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        readFully(bArr, i, i2, false);
    }

    @Override // com.adobe.customextractor.extractor.Input.ExtractorInput
    public void skipFully(int i) throws InterruptedException, IOException {
        int i2 = i;
        while (i2 > 0) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            int i3 = this.dataSource.read(SCRATCH_SPACE, 0, Math.min(SCRATCH_SPACE.length, i2));
            if (i3 == -1) {
                throw new EOFException();
            }
            i2 -= i3;
        }
        this.position += (long) i;
    }

    @Override // com.adobe.customextractor.extractor.Input.ExtractorInput
    public long getPosition() {
        return this.position;
    }

    @Override // com.adobe.customextractor.extractor.Input.ExtractorInput
    public long getLength() {
        return this.length;
    }
}
