package org.mortbay.jetty;

import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import javax.servlet.ServletInputStream;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.io.Buffers;
import org.mortbay.io.EndPoint;
import org.mortbay.io.View;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class HttpParser implements Parser {
    public static final int STATE_CHUNK = 6;
    public static final int STATE_CHUNKED_CONTENT = 3;
    public static final int STATE_CHUNK_PARAMS = 5;
    public static final int STATE_CHUNK_SIZE = 4;
    public static final int STATE_CONTENT = 2;
    public static final int STATE_END = 0;
    public static final int STATE_END0 = -8;
    public static final int STATE_END1 = -7;
    public static final int STATE_EOF_CONTENT = 1;
    public static final int STATE_FIELD0 = -12;
    public static final int STATE_FIELD1 = -10;
    public static final int STATE_FIELD2 = -6;
    public static final int STATE_HEADER = -5;
    public static final int STATE_HEADER_IN_NAME = -3;
    public static final int STATE_HEADER_IN_VALUE = -1;
    public static final int STATE_HEADER_NAME = -4;
    public static final int STATE_HEADER_VALUE = -2;
    public static final int STATE_SPACE1 = -11;
    public static final int STATE_SPACE2 = -9;
    public static final int STATE_START = -13;
    private Buffer _body;
    private Buffer _buffer;
    private Buffers _buffers;
    private BufferCache.CachedBuffer _cached;
    protected int _chunkLength;
    protected int _chunkPosition;
    private int _contentBufferSize;
    protected long _contentLength;
    protected long _contentPosition;
    private EndPoint _endp;
    protected byte _eol;
    private boolean _forceContentBuffer;
    private EventHandler _handler;
    private Buffer _header;
    private int _headerBufferSize;
    private Input _input;
    protected int _length;
    private String _multiLineValue;
    private int _responseStatus;
    private View.CaseInsensitive _tok0;
    private View.CaseInsensitive _tok1;
    private View _contentView = new View();
    protected int _state = -13;

    public HttpParser(Buffer buffer, EventHandler eventHandler) {
        this._header = buffer;
        this._buffer = buffer;
        this._handler = eventHandler;
        if (buffer != null) {
            this._tok0 = new View.CaseInsensitive(buffer);
            this._tok1 = new View.CaseInsensitive(buffer);
            this._tok0.setPutIndex(this._tok0.getIndex());
            this._tok1.setPutIndex(this._tok1.getIndex());
        }
    }

    public HttpParser(Buffers buffers, EndPoint endPoint, EventHandler eventHandler, int i, int i2) {
        this._buffers = buffers;
        this._endp = endPoint;
        this._handler = eventHandler;
        this._headerBufferSize = i;
        this._contentBufferSize = i2;
    }

    public long getContentLength() {
        return this._contentLength;
    }

    public long getContentRead() {
        return this._contentPosition;
    }

    public int getState() {
        return this._state;
    }

    public boolean inContentState() {
        return this._state > 0;
    }

    public boolean inHeaderState() {
        return this._state < 0;
    }

    public boolean isChunking() {
        return this._contentLength == -2;
    }

    @Override // org.mortbay.jetty.Parser
    public boolean isIdle() {
        return isState(-13);
    }

    @Override // org.mortbay.jetty.Parser
    public boolean isComplete() {
        return isState(0);
    }

    @Override // org.mortbay.jetty.Parser
    public boolean isMoreInBuffer() throws IOException {
        return (this._header != null && this._header.hasContent()) || (this._body != null && this._body.hasContent());
    }

    public boolean isState(int i) {
        return this._state == i;
    }

    public void parse() throws IOException {
        if (this._state == 0) {
            reset(false);
        }
        if (this._state != -13) {
            throw new IllegalStateException("!START");
        }
        while (this._state != 0) {
            parseNext();
        }
    }

    @Override // org.mortbay.jetty.Parser
    public long parseAvailable() throws IOException {
        long next = parseNext();
        if (next <= 0) {
            next = 0;
        }
        while (!isComplete() && this._buffer != null && this._buffer.length() > 0) {
            long next2 = parseNext();
            if (next2 > 0) {
                next += next2;
            }
        }
        return next;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:284:0x06bb  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x072f  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x075d  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x07e6  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x080b  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x06c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x06e4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long parseNext() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpParser.parseNext():long");
    }

    public long fill() throws IOException {
        if (this._buffer == null) {
            Buffer headerBuffer = getHeaderBuffer();
            this._header = headerBuffer;
            this._buffer = headerBuffer;
            this._tok0 = new View.CaseInsensitive(this._buffer);
            this._tok1 = new View.CaseInsensitive(this._buffer);
        }
        if (this._body != null && this._buffer != this._body) {
            this._buffer = this._body;
        }
        if (this._buffer == this._body) {
            this._buffer.compact();
        }
        if (this._buffer.space() == 0) {
            throw new HttpException(413, new StringBuffer().append("FULL ").append(this._buffer == this._body ? TtmlNode.TAG_BODY : "head").toString());
        }
        int iFill = -1;
        if (this._endp != null) {
            try {
                iFill = this._endp.fill(this._buffer);
            } catch (IOException e2) {
                Log.debug(e2);
                reset(true);
                if (e2 instanceof EofException) {
                    throw e2;
                }
                throw new EofException(e2);
            }
        }
        return iFill;
    }

    public void skipCRLF() {
        byte bPeek;
        while (this._header != null && this._header.length() > 0 && ((bPeek = this._header.peek()) == 13 || bPeek == 10)) {
            this._eol = bPeek;
            this._header.skip(1);
        }
        while (this._body != null && this._body.length() > 0) {
            byte bPeek2 = this._body.peek();
            if (bPeek2 == 13 || bPeek2 == 10) {
                this._eol = bPeek2;
                this._body.skip(1);
            } else {
                return;
            }
        }
    }

    @Override // org.mortbay.jetty.Parser
    public void reset(boolean z) {
        synchronized (this) {
            this._contentView.setGetIndex(this._contentView.putIndex());
            this._state = -13;
            this._contentLength = -3L;
            this._contentPosition = 0L;
            this._length = 0;
            this._responseStatus = 0;
            if (this._buffer != null && this._buffer.length() > 0 && this._eol == 13 && this._buffer.peek() == 10) {
                this._buffer.skip(1);
                this._eol = (byte) 10;
            }
            if (this._body != null) {
                if (this._body.hasContent()) {
                    this._header.setMarkIndex(-1);
                    this._header.compact();
                    int iSpace = this._header.space();
                    if (iSpace > this._body.length()) {
                        iSpace = this._body.length();
                    }
                    this._body.peek(this._body.getIndex(), iSpace);
                    this._body.skip(this._header.put(this._body.peek(this._body.getIndex(), iSpace)));
                }
                if (this._body.length() == 0) {
                    if (this._buffers != null && z) {
                        this._buffers.returnBuffer(this._body);
                    }
                    this._body = null;
                } else {
                    this._body.setMarkIndex(-1);
                    this._body.compact();
                }
            }
            if (this._header != null) {
                this._header.setMarkIndex(-1);
                if (!this._header.hasContent() && this._buffers != null && z) {
                    this._buffers.returnBuffer(this._header);
                    this._header = null;
                    this._buffer = null;
                } else {
                    this._header.compact();
                    this._tok0.update(this._header);
                    this._tok0.update(0, 0);
                    this._tok1.update(this._header);
                    this._tok1.update(0, 0);
                }
            }
            this._buffer = this._header;
        }
    }

    public void setState(int i) {
        this._state = i;
        this._contentLength = -3L;
    }

    public String toString(Buffer buffer) {
        return new StringBuffer().append("state=").append(this._state).append(" length=").append(this._length).append(" buf=").append(buffer.hashCode()).toString();
    }

    public String toString() {
        return new StringBuffer().append("state=").append(this._state).append(" length=").append(this._length).append(" len=").append(this._contentLength).toString();
    }

    public Buffer getHeaderBuffer() {
        if (this._header == null) {
            this._header = this._buffers.getBuffer(this._headerBufferSize);
        }
        return this._header;
    }

    public Buffer getBodyBuffer() {
        return this._body;
    }

    public void setForceContentBuffer(boolean z) {
        this._forceContentBuffer = z;
    }

    public abstract class EventHandler {
        public abstract void content(Buffer buffer) throws IOException;

        public abstract void startRequest(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException;

        public abstract void startResponse(Buffer buffer, int i, Buffer buffer2) throws IOException;

        public void headerComplete() throws IOException {
        }

        public void messageComplete(long j) throws IOException {
        }

        public void parsedHeader(Buffer buffer, Buffer buffer2) throws IOException {
        }
    }

    public class Input extends ServletInputStream {
        protected Buffer _content;
        protected EndPoint _endp;
        protected long _maxIdleTime;
        protected HttpParser _parser;

        public Input(HttpParser httpParser, long j) {
            this._parser = httpParser;
            this._endp = httpParser._endp;
            this._maxIdleTime = j;
            this._content = this._parser._contentView;
            this._parser._input = this;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (!blockForContent()) {
                return -1;
            }
            return this._content.get() & UnsignedBytes.MAX_VALUE;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!blockForContent()) {
                return -1;
            }
            return this._content.get(bArr, i, i2);
        }

        private boolean blockForContent() throws IOException {
            if (this._content.length() > 0) {
                return true;
            }
            if (this._parser.getState() <= 0) {
                return false;
            }
            if (this._endp == null) {
                this._parser.parseNext();
            } else if (this._endp.isBlocking()) {
                try {
                    this._parser.parseNext();
                    while (this._content.length() == 0 && !this._parser.isState(0) && this._endp.isOpen()) {
                        this._parser.parseNext();
                    }
                } catch (IOException e2) {
                    this._endp.close();
                    throw e2;
                }
            } else {
                this._parser.parseNext();
                while (this._content.length() == 0 && !this._parser.isState(0) && this._endp.isOpen()) {
                    if (!this._endp.isBufferingInput() || this._parser.parseNext() <= 0) {
                        if (!this._endp.blockReadable(this._maxIdleTime)) {
                            this._endp.close();
                            throw new EofException("timeout");
                        }
                        this._parser.parseNext();
                    }
                }
            }
            return this._content.length() > 0;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            if (this._content != null && this._content.length() > 0) {
                return this._content.length();
            }
            if (!this._endp.isBlocking()) {
                this._parser.parseNext();
            }
            if (this._content == null) {
                return 0;
            }
            return this._content.length();
        }
    }
}
