package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapperHC4;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
abstract class DecompressingEntity extends HttpEntityWrapperHC4 {
    private static final int BUFFER_SIZE = 2048;
    private InputStream content;

    abstract InputStream decorate(InputStream inputStream) throws IOException;

    public DecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
    }

    private InputStream getDecompressingStream() throws IOException {
        return new LazyDecompressingInputStream(this.wrappedEntity.getContent(), this);
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        if (!this.wrappedEntity.isStreaming()) {
            return getDecompressingStream();
        }
        if (this.content == null) {
            this.content = getDecompressingStream();
        }
        return this.content;
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        InputStream content = getContent();
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int i = content.read(bArr);
                if (i != -1) {
                    outputStream.write(bArr, 0, i);
                } else {
                    return;
                }
            }
        } finally {
            content.close();
        }
    }
}
