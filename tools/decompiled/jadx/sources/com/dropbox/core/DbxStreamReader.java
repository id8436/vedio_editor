package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.Throwable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DbxStreamReader<E extends Throwable> {
    public abstract void read(NoThrowInputStream noThrowInputStream) throws Throwable;

    public final class OutputStreamCopier extends DbxStreamReader<IOException> {
        private final OutputStream dest;

        public OutputStreamCopier(OutputStream outputStream) {
            this.dest = outputStream;
        }

        @Override // com.dropbox.core.DbxStreamReader
        public void read(NoThrowInputStream noThrowInputStream) throws IOException {
            IOUtil.copyStreamToStream(noThrowInputStream, this.dest);
        }
    }

    public final class ByteArrayCopier extends DbxStreamReader<RuntimeException> {
        private final byte[] data;
        private final int length;
        private final int offset;

        public ByteArrayCopier(byte[] bArr, int i, int i2) {
            if (bArr == null) {
                throw new IllegalArgumentException("'data' can't be null");
            }
            if (i < 0 || i >= bArr.length) {
                throw new IllegalArgumentException("'offset' is out of bounds");
            }
            if (i + i2 < i || i + i2 > bArr.length) {
                throw new IllegalArgumentException("'offset+length' is out of bounds");
            }
            this.data = bArr;
            this.offset = i;
            this.length = i2;
        }

        public ByteArrayCopier(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // com.dropbox.core.DbxStreamReader
        public void read(NoThrowInputStream noThrowInputStream) {
            noThrowInputStream.read(this.data, this.offset, this.length);
        }
    }
}
