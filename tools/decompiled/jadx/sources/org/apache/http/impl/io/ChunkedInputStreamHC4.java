package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.TruncatedChunkException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class ChunkedInputStreamHC4 extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private static final int CHUNK_CRLF = 3;
    private static final int CHUNK_DATA = 2;
    private static final int CHUNK_LEN = 1;
    private int chunkSize;
    private final SessionInputBuffer in;
    private boolean eof = false;
    private boolean closed = false;
    private Header[] footers = new Header[0];
    private int pos = 0;
    private final CharArrayBuffer buffer = new CharArrayBuffer(16);
    private int state = 1;

    public ChunkedInputStreamHC4(SessionInputBuffer sessionInputBuffer) {
        this.in = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.in instanceof BufferInfo) {
            return Math.min(((BufferInfo) this.in).length(), this.chunkSize - this.pos);
        }
        return 0;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        }
        if (this.eof) {
            return -1;
        }
        if (this.state != 2) {
            nextChunk();
            if (this.eof) {
                return -1;
            }
        }
        int i = this.in.read();
        if (i != -1) {
            this.pos++;
            if (this.pos >= this.chunkSize) {
                this.state = 3;
            }
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        }
        if (this.eof) {
            return -1;
        }
        if (this.state != 2) {
            nextChunk();
            if (this.eof) {
                return -1;
            }
        }
        int i3 = this.in.read(bArr, i, Math.min(i2, this.chunkSize - this.pos));
        if (i3 != -1) {
            this.pos += i3;
            if (this.pos >= this.chunkSize) {
                this.state = 3;
            }
            return i3;
        }
        this.eof = true;
        throw new TruncatedChunkException("Truncated chunk ( expected size: " + this.chunkSize + "; actual size: " + this.pos + ")");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    private void nextChunk() throws IOException {
        this.chunkSize = getChunkSize();
        if (this.chunkSize < 0) {
            throw new MalformedChunkCodingException("Negative chunk size");
        }
        this.state = 2;
        this.pos = 0;
        if (this.chunkSize == 0) {
            this.eof = true;
            parseTrailerHeaders();
        }
    }

    private int getChunkSize() throws IOException {
        switch (this.state) {
            case 1:
                break;
            case 2:
            default:
                throw new IllegalStateException("Inconsistent codec state");
            case 3:
                this.buffer.clear();
                if (this.in.readLine(this.buffer) == -1) {
                    return 0;
                }
                if (!this.buffer.isEmpty()) {
                    throw new MalformedChunkCodingException("Unexpected content at the end of chunk");
                }
                this.state = 1;
                break;
        }
        this.buffer.clear();
        if (this.in.readLine(this.buffer) == -1) {
            return 0;
        }
        int iIndexOf = this.buffer.indexOf(59);
        if (iIndexOf < 0) {
            iIndexOf = this.buffer.length();
        }
        try {
            return Integer.parseInt(this.buffer.substringTrimmed(0, iIndexOf), 16);
        } catch (NumberFormatException e2) {
            throw new MalformedChunkCodingException("Bad chunk header");
        }
    }

    private void parseTrailerHeaders() throws IOException {
        try {
            this.footers = AbstractMessageParserHC4.parseHeaders(this.in, -1, -1, null);
        } catch (HttpException e2) {
            MalformedChunkCodingException malformedChunkCodingException = new MalformedChunkCodingException("Invalid footer: " + e2.getMessage());
            malformedChunkCodingException.initCause(e2);
            throw malformedChunkCodingException;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            try {
                if (!this.eof) {
                    do {
                    } while (read(new byte[2048]) >= 0);
                }
            } finally {
                this.eof = true;
                this.closed = true;
            }
        }
    }

    public Header[] getFooters() {
        return (Header[]) this.footers.clone();
    }
}
