package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteSink implements OutputSupplier<OutputStream> {
    public abstract OutputStream openStream() throws IOException;

    protected ByteSink() {
    }

    public CharSink asCharSink(Charset charset) {
        return new AsCharSink(charset);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.io.OutputSupplier
    @Deprecated
    public final OutputStream getOutput() throws IOException {
        return openStream();
    }

    public OutputStream openBufferedStream() throws IOException {
        OutputStream outputStreamOpenStream = openStream();
        return outputStreamOpenStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStreamOpenStream : new BufferedOutputStream(outputStreamOpenStream);
    }

    public void write(byte[] bArr) throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(bArr);
        Closer closerCreate = Closer.create();
        try {
            try {
                OutputStream outputStream = (OutputStream) closerCreate.register(openStream());
                outputStream.write(bArr);
                outputStream.flush();
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    public long writeFrom(InputStream inputStream) throws Throwable {
        Preconditions.checkNotNull(inputStream);
        Closer closerCreate = Closer.create();
        try {
            try {
                OutputStream outputStream = (OutputStream) closerCreate.register(openStream());
                long jCopy = ByteStreams.copy(inputStream, outputStream);
                outputStream.flush();
                return jCopy;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class AsCharSink extends CharSink {
        private final Charset charset;

        private AsCharSink(Charset charset) {
            this.charset = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSink
        public Writer openStream() throws IOException {
            return new OutputStreamWriter(ByteSink.this.openStream(), this.charset);
        }

        public String toString() {
            return ByteSink.this.toString() + ".asCharSink(" + this.charset + ")";
        }
    }
}
