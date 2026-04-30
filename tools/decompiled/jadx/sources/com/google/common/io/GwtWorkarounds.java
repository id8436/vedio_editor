package com.google.common.io;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(emulated = true)
final class GwtWorkarounds {

    interface ByteInput {
        void close() throws IOException;

        int read() throws IOException;
    }

    interface ByteOutput {
        void close() throws IOException;

        void flush() throws IOException;

        void write(byte b2) throws IOException;
    }

    interface CharInput {
        void close() throws IOException;

        int read() throws IOException;
    }

    interface CharOutput {
        void close() throws IOException;

        void flush() throws IOException;

        void write(char c2) throws IOException;
    }

    private GwtWorkarounds() {
    }

    @GwtIncompatible("Reader")
    static CharInput asCharInput(final Reader reader) {
        Preconditions.checkNotNull(reader);
        return new CharInput() { // from class: com.google.common.io.GwtWorkarounds.1
            @Override // com.google.common.io.GwtWorkarounds.CharInput
            public int read() throws IOException {
                return reader.read();
            }

            @Override // com.google.common.io.GwtWorkarounds.CharInput
            public void close() throws IOException {
                reader.close();
            }
        };
    }

    static CharInput asCharInput(final CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        return new CharInput() { // from class: com.google.common.io.GwtWorkarounds.2
            int index = 0;

            @Override // com.google.common.io.GwtWorkarounds.CharInput
            public int read() {
                if (this.index >= charSequence.length()) {
                    return -1;
                }
                CharSequence charSequence2 = charSequence;
                int i = this.index;
                this.index = i + 1;
                return charSequence2.charAt(i);
            }

            @Override // com.google.common.io.GwtWorkarounds.CharInput
            public void close() {
                this.index = charSequence.length();
            }
        };
    }

    @GwtIncompatible("InputStream")
    static InputStream asInputStream(final ByteInput byteInput) {
        Preconditions.checkNotNull(byteInput);
        return new InputStream() { // from class: com.google.common.io.GwtWorkarounds.3
            @Override // java.io.InputStream
            public int read() throws IOException {
                return byteInput.read();
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                Preconditions.checkNotNull(bArr);
                Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
                if (i2 == 0) {
                    return 0;
                }
                int i3 = read();
                if (i3 == -1) {
                    return -1;
                }
                bArr[i] = (byte) i3;
                for (int i4 = 1; i4 < i2; i4++) {
                    int i5 = read();
                    if (i5 == -1) {
                        return i4;
                    }
                    bArr[i + i4] = (byte) i5;
                }
                return i2;
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                byteInput.close();
            }
        };
    }

    @GwtIncompatible("OutputStream")
    static OutputStream asOutputStream(final ByteOutput byteOutput) {
        Preconditions.checkNotNull(byteOutput);
        return new OutputStream() { // from class: com.google.common.io.GwtWorkarounds.4
            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                byteOutput.write((byte) i);
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                byteOutput.flush();
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                byteOutput.close();
            }
        };
    }

    @GwtIncompatible("Writer")
    static CharOutput asCharOutput(final Writer writer) {
        Preconditions.checkNotNull(writer);
        return new CharOutput() { // from class: com.google.common.io.GwtWorkarounds.5
            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void write(char c2) throws IOException {
                writer.append(c2);
            }

            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void flush() throws IOException {
                writer.flush();
            }

            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void close() throws IOException {
                writer.close();
            }
        };
    }

    static CharOutput stringBuilderOutput(int i) {
        final StringBuilder sb = new StringBuilder(i);
        return new CharOutput() { // from class: com.google.common.io.GwtWorkarounds.6
            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void write(char c2) {
                sb.append(c2);
            }

            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void flush() {
            }

            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void close() {
            }

            public String toString() {
                return sb.toString();
            }
        };
    }
}
